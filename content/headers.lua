function Header(el)
    if el.level == 4 then
      print(el.content[3])
      local name = pandoc.utils.stringify(el.content[3])
      el.content =  pandoc.Strong(name .. " " .. el.attr.attributes.number:gsub(".0.0.", "-"))
      return el
    end
  end
  

  -- local function flatten (lst)
  --   local res = List:new{}
  --   for i, el in ipairs(lst) do
  --   if el.t == 'Sec' then
  --   res[#res + 1] = pandoc.Header(el.level, el.label, el.attr)
  --   res:extend(flatten(el.contents))
  --   else
  --   res[#res + 1] = el
  --   end
  --   end
  --   return res
  --   end
    