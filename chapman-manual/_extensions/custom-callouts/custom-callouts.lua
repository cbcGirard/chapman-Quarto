function Div(el)
    -- quarto.log.warning(el.classes)

    if (el.classes:includes("callout-hint")) then
      -- Treat as objective card
      ico = pandoc.RawInline("html", "<i class='bi bi-hand-index icon-flipud'></i>&nbsp;")
      -- ico = pandoc.RawInline("html", "<i class='fa hand-point-down'></i>&nbsp;")
      callout =  quarto.Callout({
        content = {el},
        title=pandoc.Inlines{ico, "(hint...)"},
        collapse=true,
        type="hint"
      })
      
      -- quarto.log.warning(el.content)
      return callout
    elseif (el.classes:includes("callout-objective")) then
      ico = pandoc.RawInline("html", "<i class='bi bi-bullseye'></i>&nbsp;")
      callout =  quarto.Callout({
        content = {el},
        title=pandoc.Inlines{ico, "Objective:"},
        type="objective",
        icon=""
      })
      return callout
    elseif (el.classes:includes("callout-video")) then
      ico = pandoc.RawInline("html", "<i class='bi bi-camera-reels'></i>&nbsp;")
      callout =  quarto.Callout({
        content = {el},
        title=pandoc.Inlines{ico, "Video"},
        type="video",
        collapse=true,
        icon=""
      })
      return callout

    else
        return el
    end

end


