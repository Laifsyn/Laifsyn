#Requires AutoHotkey v2.0

main()

main() {
    directory := get_directory()
    if !directory
        return
    java_files := loop_files(directory, "*.java", "FR")
    ; loop_append_java_file_name(files, [enclose_in_commented_stars, trim_appended_commented_file_name])
    ; c_files := loop_files(directory, "*.c", "FR")
    write_hierarchy_summary(java_files)
}

loop_files(directory, file_pattern, mode) {
    files := Array()
    Loop Files directory "\" file_pattern, mode {
        files.push(A_LoopFileFullPath)
    }
    return files
}
; Input: "Hello World"
; Result
/***************
 *             *
 * Hello World *
 *             *
 ***************/
enclose_in_commented_stars(string) {
    len := StrLen(string)
    VarSetStrCapacity(&result, (len + 6) * 5 + 1)
    result .= "/*" repeat_string("*", len + 2) "*`n"
    result .= " *" repeat_string(" ", len + 2) "*`n"
    result .= " * " string " *`r`n"
    result .= " *" repeat_string(" ", len + 2) "*`n"
    result .= " *" repeat_string("*", len + 2) "*/`n"
    return result
}

repeat_string(string, times) {
    result := ""
    loop times {
        result .= string
    }
    return result
}
/**
 * 
 * @param files_path 
 * @param formatter [Fn_Formatter(string) => String, Fn_DeFormatter(String, String) => String] 
 * 
 */
loop_append_java_file_name(files_path, formatter) {
    for file_path in files_path {
        file := FileOpen(file_path, "rw")
        file_pos_at_open := file.pos
        if file_pos_at_open != 0 {
            msgbox "File is not at the beginning: " file_pos_at_open
        }
        if !file
            continue

        file_content := Trim(file.Read(), "`r`n`t ")
        file.pos := file_pos_at_open
        file_content := StrSplit(file_content, "`n", , 2)
        SplitPath(file_path, &file_name, &file_dir)
        line_1 := file_content[1]
        if !InStr(line_1, "package") {
            throw Error(Format("File: {} does not contain package declaration", file_name), , file_dir)
        }
        formatted := formatter[1](file_name)
        line_remaining := file_content[2]
        line_remaining := formatter[2](line_remaining, formatted)
        file.pos := file_pos_at_open ; Resets the cursor position
        file_new_content := Format("{}`n{}`n{}", line_1, formatted, line_remaining)

        new_len := file.write(file_new_content)
        file.Length := new_len
        file.pos := 0
        file.close()
    }
}

append_hierarchy_md(files) {
    TrimPath := (path) => Trim(path, "`r`n `t\")
    root := TrimPath(get_root_from(files))
    SplitPath(root, &root_name, &root_dir)
    hierarchy := Format("##  {}`r`n", root_name)

    for file in files {
        SplitPath(file, &file_name, &file_dir, &file_extension)
        file_root := "root\" TrimPath(StrReplace(file_dir, root, ""))
        file_root := TrimPath(file_root)
        file_size := FileGetSize(file)
        file_data := file_root "\" Format("{} ({:.2f} KBs)`r`n", file_name, Float(file_size) / 1024)
        file_content := Trim(FileRead(file), "`r`n `t")
        hierarchy .= Format("### {}`r`n ``````{}`r`n{}`r`n```````r`n`r`n", file_data, file_extension, file_content)
    }
    file := FileOpen(root "\" root_name "-summary.md", "w")
    len := file.Write(hierarchy)
    file.Length := len
    file.close()
    return hierarchy
}

/**
 * Return a map of paths... A sample output would be:
 * {
 *     "root": {
 *         "files": [
 *             "file1.txt",
 *             "file2.txt",
 *             "file3.txt"
 *         ],
 *         "sub_dir1": {
 *             "files": [
 *                 "file4.txt",
 *                 "file5.txt",
 *                 "file6.txt"
 *             ]
 *         },
 *         "sub_dir2": {
 *             "files": [
 *                 "file7.txt",
 *                 "file8.txt",
 *                 "file9.txt"
 *             ]
 *         }
 *     }
 * }
 */
into_sub_directories(root_path, files) {
    TrimPath := (path) => Trim(path, "`r`n `t\")
    root := TrimPath(root_path)
    root_files := Map()
    for file in files {
        SplitPath(file, &file_name, &file_dir, &file_extension)
        file_root := "root\" TrimPath(StrReplace(file_dir, root, "`r`n `t\"))
        file_root := TrimPath(file_root)
        file_roots := StrSplit(file_root, "\")
        current_root := root_files
        current_root_string := ""
        for file_root in file_roots {
            if !current_root.Has(file_root) {
                current_root[file_root] := Map()
            }
            current_root := current_root[file_root]
            current_root_string .= file_root "\"
        }
        if !current_root.Has("files") {
            current_root["files"] := Array()
        }
        current_root["files"].push(file)
    }
    return root_files
}

write_hierarchy_summary(files) {
    root := get_root_from(files)
    mapped_files_in_root := into_sub_directories(root, files)
    SplitPath(Trim(root, "\"), &root_dir_name)
    mapped_files_in_root[root_dir_name] := mapped_files_in_root["root"]
    mapped_files_in_root.Delete("root")
    A_Clipboard := md_summary := Trim(hierarchy_as_md_str(mapped_files_in_root), "`r`n`t *") "`r`n"
    file := FileOpen(root "\" root_dir_name "-summary.md", "w")
    len := file.Write(md_summary)
    file.Length := len
    file.close()
    msgbox "DONE!"
    return md_summary
}

hierarchy_as_md_str(root_files, nest_level := 1) {
    static md_line := "`r`n`r`n***************************************************************`r`n`r`n"
    TrimPath := (path) => Trim(path, "`r`n `t\")
    repeat_numeral := repeat_string("#", nest_level)
    string := ""
    for key, value in root_files {
        string .= Format("`r`n#{} {}\`r`n", repeat_numeral, key)

        ; Unroll this loop case to make sure files appear before the subfolders
        if value.Has("files") {
            files := value["files"]
            for file in files {
                SplitPath(file, &file_name, , &file_extension)
                file_size := FileGetSize(file)
                file_data := Format("{} ({:.2f} KBs)`r`n", file_name, Float(file_size) / 1024)
                file_content := Trim(FileRead(file), "`r`n `t")
                string .= Format("##{} {}`r`n ``````{}`r`n{}`r`n```````r`n`r`n", repeat_numeral, file_data, file_extension, file_content) md_line
            }
        }
        for key, _map in value {
            if key == "files" {
                if !(_map is Array) {
                    throw Error("Files should be an array", , _map)
                }
                continue
            }
            string .= hierarchy_as_md_str(Map(key, _map), nest_level + 1)
        }
    }
    return string
}


get_root_from(files) {
    if files.length == 0
        throw Error("Empty Array of files - " A_LineNumber)
    if files.length == 1 {
        SplitPath(files[1], , &root)
        return root
    }
    SplitStrPath := (path) => StrSplit(path, "\")
    shortest_array := SplitStrPath(files[1])
    shortest := (a, b) => a.length < b.length ? a : b
    for file in files {
        file := SplitStrPath(file)
        shortest_array := shortest(shortest_array, file)
    }
    shortest_popped := shortest_array.pop()
    loop {
        continue_loop := false
        candidate_idx := shortest_array.length + 1
        for file in files {
            file := SplitStrPath(file)
            candidate := file[candidate_idx]
            if candidate != shortest_popped {
                continue_loop := true
                shortest_popped := shortest_array.pop()
                break
            }
        }
        if continue_loop
            continue
        break
    }
    root := ""
    VarSetStrCapacity(&root, 255)
    ; Join all, and append back popped element
    for element in shortest_array
        root .= element "\"
    root .= shortest_popped "\"
    return root
}

trim_appended_commented_file_name(trim_from, formatted_string) {
    /**
     * Assumptions made:
     * The string to search for is at the start of the string `trim_from`
     * it starts in a format of `/****...` and ends with `****/`
     * last line's lenght is longer by 1 character than the first line.
     * also assumes that each line is separated by "`n"
     * 
     */
    f_lines := StrSplit(formatted_string, "`n")
    formatted_lines := f_lines.Length
    lines := StrSplit(trim_from, "`n")
    for line in lines {
        if InStr(line, f_lines[1]) {
            loop formatted_lines {
                lines.RemoveAt(1)
            }
            break
        }
    }
    VarSetStrCapacity(&trim_from, StrLen(trim_from))
    for line in lines {
        trim_from .= line "`n"
    }
    return trim_from

}
get_directory() {
    file := FileSelect("D S")
    if !file
        return
    MsgBox("Selected Directory: " file)
    return file
}

^r:: reload