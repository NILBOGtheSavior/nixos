{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

      format = ''
        [](fg:blue)$os$username[](fg:blue bg:green)$directory[](fg:green bg:cyan)$git_branch$git_status[](fg:cyan bg:white)$c$cpp$golang$java$kotlin$kubernetes$lua$nodejs$python$rlang$ruby$rust[](fg:white bg:bright-black)$character[ ](fg:bright-black)
      '';

      right_format = ''
        [](fg:bright-black)$time$battery[](fg:bright-black)
      '';

      time = {
        disabled = false;
        time_format = "%R";
        format = "[$time](bg:bright-black fg:blue)";
      };

      directory = {
        format = "[ $path ](fg:bright-black bg:green)";
        truncation_length = 3;
        truncation_symbol = "…/";
        substitutions = {
          "Documents" = "󰈙 ";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
        };
      };

      username = {
        show_always = true;
        style_user = "fg:bright-black bg:blue";
        format = "[ $user ]($style)";
      };

      git_branch = {
        symbol = "";
        style = "bg:#394260";
        format = "[[ $symbol $branch ](fg:bright-black bg:cyan)]($style)";
      };

      git_status = {
        style = "bg:#394260";
        format = "[[($all_status$ahead_behind )](fg:bright-black bg:cyan)]($style)";
      };

      character = {
        success_symbol = "[ \\$](fg:white bg:bright-black)";
        error_symbol = "[ !](fg:red bg:bright-black)";
        vimcmd_symbol = "[ ](fg:white bg:bright-black)";
        vimcmd_replace_one_symbol = "[ ](fg:white bg:bright-black)";
        format = "$symbol";
      };

      c = { format = "[  ](fg:black bg:white)"; };
      cpp = { format = "[  ](fg:black bg:white)"; };
      golang = { format = "[  ](fg:black bg:white)"; };
      java = { format = "[  ](fg:black bg:white)"; };
      kotlin = { format = "[  ](fg:black bg:white)"; };
      kubernetes = { format = "[  ](fg:black bg:white)"; };
      lua = { format = "[ 󰢱 ](fg:black bg:white)"; };
      nodejs = { format = "[  ](fg:black bg:white)"; };
      python = { format = "[  ](fg:black bg:white)"; };
      rlang = { format = "[  ](fg:black bg:white)"; };
      ruby = { format = "[  ](fg:black bg:white)"; };
      rust = { format = "[  ](fg:black bg:white)"; };

      battery = {
        disabled = false;
        display = [
          { threshold = 10; style = "bold red"; }
          { threshold = 30; style = "bold yellow"; }
        ];
      };

    };
  };
}
