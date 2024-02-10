function Div(el)
    quarto.log.warning(el.classes)
    if (el.classes:includes("callout-hint")) then
      -- Treat as objective card
      return quarto.Callout({
        content = {el},
        icon = "question",
        title="hint...",
        collapse=true,
        type="hint"
      })
    else
        return el
    end

end