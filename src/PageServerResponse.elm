module PageServerResponse exposing (map, PageServerResponse(..))

{-|

@docs map, PageServerResponse

-}

import ServerResponse exposing (ServerResponse)


{-| -}
type PageServerResponse data
    = RenderPage data
    | ServerResponse ServerResponse


{-| -}
map : (data -> mappedData) -> PageServerResponse data -> PageServerResponse mappedData
map mapFn pageServerResponse =
    case pageServerResponse of
        RenderPage data ->
            RenderPage (mapFn data)

        ServerResponse serverResponse ->
            ServerResponse serverResponse
