//PercentileInclusive Function
//https://social.technet.microsoft.com/Forums/en-US/a57bfbea-52d1-4231-b2de-fa993d9bb4c9/can-the-quotpercentilequot-be-calculated-in-power-query?forum=powerquery
(inputSeries as list, percentile as number) =>
let
    SeriesCount = List.Count(inputSeries),
    PercentileRank = percentile*(SeriesCount-1)+1, //percentile value between 0 and 1
    PercentileRankRoundedUp = Number.RoundUp(PercentileRank),
    PercentileRankRoundedDown = Number.RoundDown(PercentileRank),
    Percentile1 = List.Max(List.MinN(inputSeries,PercentileRankRoundedDown)),
    Percentile2 = List.Max(List.MinN(inputSeries,PercentileRankRoundedUp)),
    Percentile = Percentile1+(Percentile2-Percentile1)*(PercentileRank-PercentileRankRoundedDown)
in
    Percentile   

//PercentileExclusive Function
(inputSeries as list, percentile as number) =>
let
    SeriesCount = List.Count(inputSeries),
    PercentileRank = percentile*(SeriesCount+1), //percentile value between 0 and 1
    PercentileRankRoundedUp = Number.RoundUp(PercentileRank),
    PercentileRankRoundedDown = Number.RoundDown(PercentileRank),
    Percentile1 = List.Max(List.MinN(inputSeries,PercentileRankRoundedDown)),
    Percentile2 = List.Max(List.MinN(inputSeries,PercentileRankRoundedUp)),
    Percentile = Percentile1+(Percentile2-Percentile1)*(PercentileRank-PercentileRankRoundedDown)
in
    Percentile
    
    //
    


//https://stackoverflow.com/questions/56294330/how-do-i-calculate-percentiles-in-powerquery-based-on-grouping-variables

(inputSeries as list, percentile as number) => 
let
    SeriesCount = List.Count(inputSeries),
    PercentileRank = percentile*(SeriesCount-1)+1, //percentile value between 0 and 1
    PercentileRankRoundedUp = Number.RoundUp(PercentileRank),
    PercentileRankRoundedDown = Number.RoundDown(PercentileRank),
    Percentile1 = List.Max(List.MinN(inputSeries,PercentileRankRoundedDown)),
    Percentile2 = List.Max(List.MinN(inputSeries,PercentileRankRoundedUp)),
    Percentile = Percentile1+(Percentile2-Percentile1)*(PercentileRank-PercentileRankRoundedDown)
in
    Percentile
