local glossary_map = {}

local GLOSSARY_PAGE = "appendix-a-glossary.html"

local function build_glossary_map()
  local paths = {
    "src/appendices/appendix-a-glossary.qmd",
    "../src/appendices/appendix-a-glossary.qmd",
    "../../src/appendices/appendix-a-glossary.qmd",
  }
  for _, path in ipairs(paths) do
    local file = io.open(path, "r")
    if file then
      local current_id = nil
      for line in file:lines() do
        local id = line:match('^:::%s*{#(gl%-[%w%-]+)%}')
        if id then
          current_id = id
        elseif current_id then
          local trimmed = line:match('^%s*(.-)%s*$')
          if trimmed ~= '' and not trimmed:match('^:') then
            glossary_map[current_id] = trimmed
            current_id = nil
          end
        end
      end
      file:close()
      return
    end
  end
end

build_glossary_map()

local function glossary_href(id)
  local output_file = quarto and quarto.doc and quarto.doc.output_file
  if not output_file then
    return "../appendices/" .. GLOSSARY_PAGE .. "#" .. id
  end
  local dir = pandoc.path.directory(output_file)
  local parts = {}
  for part in dir:gmatch("[^/\\]+") do
    parts[#parts + 1] = part
  end
  if #parts == 0 or (#parts == 1 and parts[1] == ".") then
    return "src/appendices/" .. GLOSSARY_PAGE .. "#" .. id
  elseif parts[1] == "src" and #parts == 1 then
    return "appendices/" .. GLOSSARY_PAGE .. "#" .. id
  elseif parts[1] == "src" and #parts >= 2 then
    return "../appendices/" .. GLOSSARY_PAGE .. "#" .. id
  else
    return "../appendices/" .. GLOSSARY_PAGE .. "#" .. id
  end
end

return {
  Link = function(link)
    local target = link.target or ""
    local id = target:match('#(gl%-[%w%-]+)$')
    if id and glossary_map[id] then
      link.content = pandoc.Inlines({pandoc.Str(glossary_map[id])})
      link.target = glossary_href(id)
    end
    return link
  end
}