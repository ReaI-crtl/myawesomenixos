{lib, ...}:

{
    add_newline = false;

    format = lib.concatStrings [
        "[](fg:cream)"
        "$os"
        "[](bg:orange fg:cream)"
        "$username"
        "[](bg:dark-orange fg:orange)"
        "$directory"
        "[](fg:dark-orange bg:brown)"
        "$git_branch"
        "$git_status"
        "[ ](fg:brown bg:dark-brown)"
        # "$c\\"
        # "$nodejs\\"
        # "[](fg:#86BBD8 bg:#06969A)\\"
        # "$docker_context\\"
        # "[](fg:#06969A bg:#33658A)\\"
        "$time"
        "[ ](fg:dark-brown)"
    ];

    scan_timeout = 10;

    character = {
        success_symbol = "➜";
        error_symbol = "➜";
    };

    username = {
        show_always = true;
        style_user = "bg:orange fg:cream";
        style_root = "bg:red fg:crust";
        format = "[$user]($style)";
    };

    os = {
        disabled = false;

        symbols = {
            Mint = "󰣭 ";
        };

        format = "[$symbol](bg:cream fg:orange)";
    };

    directory = {
        style = "bg:dark-orange fg:cream";
        format = "[$path]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";

        # substitutions = {
        #     Documents = "󰈙 ";
        #     Downloads = " ";
        #     Music = "󰝚 ";
        #     Pictures = "; ";
        #     Developer = "󰲋 ";
        # };
    };

    git_branch = {
        symbol = "";
        style = "bg:brown fg:cream";
        format = "[ $symbol $branch ]($style)";
    };

    git_status = {
        style = "bg:brown fg:cream";
        format = "[$all_status$ahead_behind ]($style)";
    };

    time = {
        disabled = false;
        time_format = "%R";
        style = "bg:dark-brown";
        format = "[  $time ]($style)";
    };

    palette = "fox";

    palettes = {
        fox = {
            cream = "#F5E6D3";
            orange = "#D35400";
            dark-orange = "#8E441D";
            brown = "#4E2E1A";
            dark-brown = "#2C1E16";
        };
    };
}