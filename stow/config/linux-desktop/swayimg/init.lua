-- VIEWER MODE --

swayimg.imagelist.order = "numeric"

-- Exit with q
swayimg.viewer.on_key("q", function()
  swayimg.exit()
end)

-- Send image to the trash
swayimg.viewer.on_key("Delete", function()
  local image = swayimg.viewer.get_image()
  if image then
    os.execute(string.format('gio trash -- "%s"', image.path))
    swayimg.text.set_status("File "..image.path.." removed")
  end
end)

-- mwh script binding
local mwh_dump = os.getenv("HOME") .. "/.local/bin/mwh_dump"

swayimg.viewer.on_key("Ctrl-p", function()
    local image = swayimg.viewer.get_image()
    if image then
        os.execute(string.format('"%s" "%s"', mwh_dump, image.path))
    end
end)

-- GALLERY MODE --

-- Exit with q
swayimg.gallery.on_key("q", function()
  swayimg.exit()
end)

