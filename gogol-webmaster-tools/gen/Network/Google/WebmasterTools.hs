-- |
-- Module      : Network.Google.WebmasterTools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you view Google Webmaster Tools data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference>
module Network.Google.WebmasterTools
    (
    -- * API Definition
      WebmasterTools



    -- * Types

    -- ** ApiDataRow
    , ApiDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- ** ApiDimensionFilter
    , ApiDimensionFilter
    , apiDimensionFilter
    , adfOperator
    , adfDimension
    , adfExpression

    -- ** ApiDimensionFilterGroup
    , ApiDimensionFilterGroup
    , apiDimensionFilterGroup
    , adfgFilters
    , adfgGroupType

    -- ** SearchAnalyticsQueryRequest
    , SearchAnalyticsQueryRequest
    , searchAnalyticsQueryRequest
    , saqrAggregationType
    , saqrRowLimit
    , saqrEndDate
    , saqrSearchType
    , saqrDimensionFilterGroups
    , saqrStartDate
    , saqrDimensions

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** UrlCrawlErrorCount
    , UrlCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** UrlCrawlErrorCountsPerType
    , UrlCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- ** UrlCrawlErrorsCountsQueryResponse
    , UrlCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- ** UrlCrawlErrorsSample
    , UrlCrawlErrorsSample
    , urlCrawlErrorsSample
    , ucesResponseCode
    , ucesUrlDetails
    , ucesLastCrawled
    , ucesPageUrl
    , ucesFirstDetected

    -- ** UrlCrawlErrorsSamplesListResponse
    , UrlCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- ** UrlSampleDetails
    , UrlSampleDetails
    , urlSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

    -- ** WmxSitemap
    , WmxSitemap
    , wmxSitemap
    , wsContents
    , wsPath
    , wsIsSitemapsIndex
    , wsLastSubmitted
    , wsWarnings
    , wsLastDownloaded
    , wsIsPending
    , wsType
    , wsErrors

    -- ** WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted
    ) where

import           Network.Google.WebmasterTools.Types

{- $resources
TODO
-}

type WebmasterTools = ()

webmasterTools :: Proxy WebmasterTools
webmasterTools = Proxy



