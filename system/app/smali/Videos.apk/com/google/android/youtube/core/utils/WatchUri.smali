.class public Lcom/google/android/youtube/core/utils/WatchUri;
.super Ljava/lang/Object;
.source "WatchUri.java"


# instance fields
.field public final params:Ljava/lang/String;

.field public final position:I

.field public final videoId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "videoId"
    .parameter "params"
    .parameter "position"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/WatchUri;->videoId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/utils/WatchUri;->params:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/google/android/youtube/core/utils/WatchUri;->position:I

    .line 31
    return-void
.end method

.method public static fromUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 53
    :cond_1a
    const-string v1, "vnd.youtube"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 54
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/WatchUri;->parseVndUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;

    move-result-object v1

    .line 62
    :goto_2a
    return-object v1

    .line 56
    :cond_2b
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, path:Ljava/lang/String;
    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "/movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 58
    :cond_3f
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/WatchUri;->parseWatchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;

    move-result-object v1

    goto :goto_2a

    .line 59
    :cond_44
    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 60
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/WatchUri;->parseLegacyEmbedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;

    move-result-object v1

    goto :goto_2a

    .line 61
    :cond_51
    const-string v1, "/e/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "/embed/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 62
    :cond_61
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/WatchUri;->parseEmbedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;

    move-result-object v1

    goto :goto_2a

    .line 65
    :cond_66
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Unrecognised URI"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static parseEmbedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, params:Ljava/lang/String;
    const-string v3, "start"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/WatchUri;->parseOffsetTime(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, position:I
    new-instance v3, Lcom/google/android/youtube/core/utils/WatchUri;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/youtube/core/utils/WatchUri;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method private static parseLegacyEmbedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 12
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 125
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, path:Ljava/lang/String;
    const-string v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, endIndex:I
    const/4 v8, -0x1

    if-le v0, v8, :cond_48

    .line 128
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, id:Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, params:Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, position:I
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, paramList:[Ljava/lang/String;
    const-string v7, "start="

    .line 135
    .local v7, start:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v8, v3

    if-ge v1, v8, :cond_3f

    .line 136
    aget-object v8, v3, v1

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 137
    aget-object v8, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/utils/WatchUri;->parseOffsetTime(Ljava/lang/String;)I

    move-result v6

    .line 141
    :cond_3f
    new-instance v8, Lcom/google/android/youtube/core/utils/WatchUri;

    invoke-direct {v8, v2, v4, v6}, Lcom/google/android/youtube/core/utils/WatchUri;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #paramList:[Ljava/lang/String;
    .end local v4           #params:Ljava/lang/String;
    .end local v6           #position:I
    .end local v7           #start:Ljava/lang/String;
    :goto_44
    return-object v8

    .line 135
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #paramList:[Ljava/lang/String;
    .restart local v4       #params:Ljava/lang/String;
    .restart local v6       #position:I
    .restart local v7       #start:Ljava/lang/String;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 143
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #paramList:[Ljava/lang/String;
    .end local v4           #params:Ljava/lang/String;
    .end local v6           #position:I
    .end local v7           #start:Ljava/lang/String;
    :cond_48
    new-instance v8, Lcom/google/android/youtube/core/utils/WatchUri;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v10}, Lcom/google/android/youtube/core/utils/WatchUri;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_44
.end method

.method private static parseOffsetTime(Ljava/lang/String;)I
    .registers 6
    .parameter "timeStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p0, :cond_5

    move v1, v2

    .line 189
    :goto_4
    return v1

    .line 167
    :cond_5
    const/4 v1, 0x0

    .line 170
    .local v1, ret:I
    const-string v3, "h"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, index:I
    if-ltz v0, :cond_21

    .line 172
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/utils/Util;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x36ee80

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 173
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    :cond_21
    const-string v3, "m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    if-ltz v0, :cond_3c

    .line 179
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/utils/Util;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 180
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_3c
    const-string v3, "s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_4e
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/Util;->parseFloat(Ljava/lang/String;F)F

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 189
    goto :goto_4
.end method

.method private static parseVndUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, id:Ljava/lang/String;
    const-string v3, "//"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_12
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, params:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_22
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 80
    .local v2, position:I
    :goto_28
    new-instance v3, Lcom/google/android/youtube/core/utils/WatchUri;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/youtube/core/utils/WatchUri;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 79
    .end local v2           #position:I
    :cond_2e
    const-string v3, "t"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/WatchUri;->parseOffsetTime(Ljava/lang/String;)I

    move-result v2

    goto :goto_28
.end method

.method private static parseWatchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 13
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 85
    const-string v9, "v"

    invoke-virtual {p0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, id:Ljava/lang/String;
    if-nez v2, :cond_11

    .line 87
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "No video id in URI"

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 90
    :cond_11
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, params:Ljava/lang/String;
    const-string v9, "t"

    invoke-virtual {p0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, timeStr:Ljava/lang/String;
    if-nez v8, :cond_30

    .line 95
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, fragment:Ljava/lang/String;
    if-eqz v1, :cond_30

    const-string v9, "t="

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 97
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 100
    .end local v1           #fragment:Ljava/lang/String;
    :cond_30
    invoke-static {v8}, Lcom/google/android/youtube/core/utils/WatchUri;->parseOffsetTime(Ljava/lang/String;)I

    move-result v6

    .line 103
    .local v6, position:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "v="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, idParam:Ljava/lang/String;
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_5a

    .line 105
    :cond_53
    const/4 v4, 0x0

    .line 120
    :goto_54
    new-instance v9, Lcom/google/android/youtube/core/utils/WatchUri;

    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/youtube/core/utils/WatchUri;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9

    .line 108
    :cond_5a
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 109
    .local v7, startIndex:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v7, v9

    .line 110
    .local v0, endIndex:I
    const-string v5, ""

    .line 111
    .local v5, paramsWithoutId:Ljava/lang/String;
    if-lez v7, :cond_7d

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_7d
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9c

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    :cond_9c
    move-object v4, v5

    goto :goto_54
.end method
