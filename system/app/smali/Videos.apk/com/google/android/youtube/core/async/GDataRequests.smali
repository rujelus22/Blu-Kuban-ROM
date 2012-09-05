.class public final Lcom/google/android/youtube/core/async/GDataRequests;
.super Ljava/lang/Object;
.source "GDataRequests.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DEV_BASE_URI:Landroid/net/Uri;

.field public static final STAGE_BASE_URI:Landroid/net/Uri;

.field private static final SUPPORTED_LOCALES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_REGIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPLOADS_URI:Landroid/net/Uri;

.field private static volatile countryCodeRestrict:Ljava/lang/String;

.field private static volatile safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stage.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->STAGE_BASE_URI:Landroid/net/Uri;

    .line 70
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dev.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->DEV_BASE_URI:Landroid/net/Uri;

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uploads.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/resumable/feeds/api/users/default/uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->UPLOADS_URI:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "zh-TW"

    aput-object v2, v1, v4

    const-string v2, "cs-CZ"

    aput-object v2, v1, v5

    const-string v2, "nl-NL"

    aput-object v2, v1, v6

    const-string v2, "en-GB"

    aput-object v2, v1, v7

    const-string v2, "en-US"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "fr-FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "de-DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "it-IT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ja-JP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ko-KR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "pl-PL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pt-BR"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ru-RU"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "es-ES"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "es-MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sv-SE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_LOCALES:Ljava/util/HashSet;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AR"

    aput-object v2, v1, v4

    const-string v2, "AU"

    aput-object v2, v1, v5

    const-string v2, "BR"

    aput-object v2, v1, v6

    const-string v2, "CA"

    aput-object v2, v1, v7

    const-string v2, "CZ"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "HK"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "IN"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "IE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "IL"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "JP"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "NL"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "NZ"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "PL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RU"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ZA"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ES"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "US"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_REGIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method private static appendPageParameters(Landroid/net/Uri$Builder;II)V
    .registers 5
    .parameter "builder"
    .parameter "startIndex"
    .parameter "maxResults"

    .prologue
    .line 1028
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1029
    const-string v0, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1030
    return-void
.end method

.method private static appendPageParametersIfMissing(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "resultsPerPage"

    .prologue
    .line 1013
    const-string v1, "start-index"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v1, "max-results"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 1015
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1016
    .local v0, builder:Landroid/net/Uri$Builder;
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->appendPageParameters(Landroid/net/Uri$Builder;II)V

    .line 1017
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 1019
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local p0
    :cond_1c
    return-object p0
.end method

.method public static getBrandingRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter "channel"

    .prologue
    .line 724
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 725
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "partners"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "branding"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 730
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getEditMetadataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 19
    .parameter "title"
    .parameter "description"
    .parameter "categoryTerm"
    .parameter "categoryLabel"
    .parameter "keywords"
    .parameter "privacy"
    .parameter
    .parameter "location"
    .parameter "where"
    .parameter "editUri"
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video$Privacy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Lcom/google/android/youtube/core/async/GDataRequest;"
        }
    .end annotation

    .prologue
    .line 886
    .local p6, accessControl:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "editUri cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:media=\'http://search.yahoo.com/mrss/\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\' xmlns:gd=\'http://schemas.google.com/g/2005\' xmlns:gml=\'http://www.opengis.net/gml\' xmlns:georss=\'http://www.georss.org/georss\'><media:group><media:title type=\'plain\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3c

    const-string v7, ""

    invoke-static {p0, v6, v7}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</media:title>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<media:description type=\'plain\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1388

    const-string v7, ""

    invoke-static {p1, v6, v7}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</media:description>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<media:category label=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x64

    const-string v7, ""

    invoke-static {p3, v6, v7}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' scheme=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://gdata.youtube.com/schemas/2007/categories.cat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</media:category>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<media:keywords>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1f4

    const-string v7, ""

    invoke-static {p4, v6, v7}, Lcom/google/android/youtube/core/utils/Util;->formatMetadataKeywords(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</media:keywords>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p5, v5, :cond_f6

    const-string v5, "<yt:private/>"

    :goto_8c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</media:group>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, content:Ljava/lang/String;
    if-nez p6, :cond_a1

    .line 913
    new-instance p6, Ljava/util/LinkedHashMap;

    .end local p6           #accessControl:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 915
    .restart local p6       #accessControl:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a1
    if-eqz p5, :cond_ae

    .line 916
    sget-object v5, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p5, v5, :cond_f9

    .line 917
    const-string v5, "list"

    const-string v6, "allowed"

    invoke-interface {p6, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_ae
    :goto_ae
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 923
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_101

    .line 924
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 925
    .local v4, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<yt:accessControl action=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' permission=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    goto :goto_b6

    .line 888
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f6
    const-string v5, ""

    goto :goto_8c

    .line 919
    .restart local v2       #content:Ljava/lang/String;
    :cond_f9
    const-string v5, "list"

    const-string v6, "denied"

    invoke-interface {p6, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    .line 928
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_101
    if-eqz p7, :cond_120

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<yt:location>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</yt:location>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    :cond_120
    if-eqz p8, :cond_141

    .line 932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<georss:where><gml:Point><gml:pos>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</gml:pos></gml:Point></georss:where>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    :cond_141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</entry>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-static {v0, v1, v5}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v5

    return-object v5
.end method

.method public static getLiveEventRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter "uri"

    .prologue
    .line 419
    const-string v0, "uri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "true"

    const-string v1, "inline"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 421
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 423
    :cond_23
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "playlistUri"
    .parameter "userAuth"

    .prologue
    .line 626
    const/16 v0, 0xf

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter "playlistUri"
    .parameter "userAuth"
    .parameter "resultsPerPage"

    .prologue
    .line 617
    const-string v0, "playlistUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {p0, p2}, Lcom/google/android/youtube/core/async/GDataRequests;->appendPageParametersIfMissing(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "userAuth"

    .prologue
    .line 309
    const-string v0, "userAuth cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "default"

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getProfileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    .line 254
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyVideoRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMyVideoRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "videoId"
    .parameter "auth"

    .prologue
    .line 237
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "playlistUri"

    .prologue
    .line 609
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistVideosRequest(Landroid/net/Uri;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistVideosRequest(Landroid/net/Uri;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "playlistUri"
    .parameter "resultsPerPage"

    .prologue
    .line 601
    const-string v0, "playlistUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->appendPageParametersIfMissing(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getProfileUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "username"

    .prologue
    .line 314
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "videoId"

    .prologue
    .line 247
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter "videoId"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "videoId"

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setCountryCodeRestrict(Ljava/lang/String;)V
    .registers 3
    .parameter "countryCodeRestrict"

    .prologue
    .line 223
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 224
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    .line 228
    :goto_f
    return-void

    .line 226
    :cond_10
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests;->countryCodeRestrict:Ljava/lang/String;

    goto :goto_f
.end method

.method public static setSafeSearch(Lcom/google/android/youtube/core/utils/SafeSearch;)V
    .registers 1
    .parameter "safeSearch"

    .prologue
    .line 219
    sput-object p0, Lcom/google/android/youtube/core/async/GDataRequests;->safeSearch:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 220
    return-void
.end method
