fromMaybe defval wrapped =
    case wrapped of 
        Nothing -> defval
        Just x  -> x