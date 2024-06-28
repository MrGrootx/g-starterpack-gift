Language = {}

function LAN(name, ...)
    if name then 
        local str = Language[Config.settings.Language][name]
        if str then 
            return string.format(str, ...)
        else    
            return "ERR_TRANSLATE_"..(name).."_404"
        end
    else
        return "ERR_TRANSLATE_404"
    end
end