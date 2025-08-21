module  = "notation"

typesetfiles  = {"notation.dtx"}

scriptfiles   = {}
installfiles  = {"notation.sty", "notation-*.sty"}
sourcefiles   = {"notation.dtx","notation.ins"}
docfiles     = {"README.md", "LICENSE", "examples/demo.tex"}

-- Tagging support: `l3build tag v0.1`
function update_tag(file, content, tagname, tagdate)
  content = string.gsub(content,
    "\\ProvidesExplPackage%{notationTex%}%%b{}%%b{}",
    "\\ProvidesExplPackage{notationTex}{"..tagdate.."}{"..string.sub(tagname,2).."}")
  content = string.gsub(content,
    "\\ProvidesFile%{notationTex%.dtx%}%%b[]",
    "\\ProvidesFile{notationTex.dtx}["..tagdate.." "..string.sub(tagname,2).." AI/ML notation macros + table]")
  return content
end
