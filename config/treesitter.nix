{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
        "go"
        "gomod"
        "gosum"
        "gowork"
        "bash"
        "json"
        "yaml"
        "templ"
        "terraform"
        "python"
        "helm"
        "toml"
        "dockerfile"
        "csv"
        "html"
        "css"
        "hurl"
        "nix"
        "gitignore"
        "markdown"
        "markdown_inline"
        "requirements"
      ];
      highlight.enable = true;
      incremental_selection.enable = true;
      indent.enable = true;
    };
  };
}
