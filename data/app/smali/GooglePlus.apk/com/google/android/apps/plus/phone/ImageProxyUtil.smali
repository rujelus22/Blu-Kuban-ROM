.class public Lcom/google/android/apps/plus/phone/ImageProxyUtil;
.super Ljava/lang/Object;
.source "ImageProxyUtil.java"


# static fields
.field private static final PROXY_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

.field static sProxyIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "^(((http(s)?):)?\\/\\/images(\\d)?-.+-opensocial\\.googleusercontent\\.com\\/gadgets\\/proxy\\?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->PROXY_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static createProxyUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, proxy:Ljava/lang/StringBuffer;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->getNextProxyIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "esmobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-opensocial.googleusercontent.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/gadgets/proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImageUrlSize(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 7
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 100
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 101
    .local v1, imageSize:Landroid/graphics/Point;
    if-eqz p0, :cond_e

    invoke-static {p0}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 119
    :cond_e
    :goto_e
    return-object v1

    .line 105
    :cond_f
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    .local v2, proxyUri:Landroid/net/Uri;
    :try_start_13
    const-string v5, "resize_w"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, width:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    move v5, v4

    :goto_20
    iput v5, v1, Landroid/graphics/Point;->x:I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_22} :catch_3d

    .line 113
    .end local v3           #width:Ljava/lang/String;
    :goto_22
    :try_start_22
    const-string v5, "resize_h"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, height:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_38

    :goto_2e
    iput v4, v1, Landroid/graphics/Point;->y:I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_30} :catch_31

    goto :goto_e

    .line 115
    .end local v0           #height:Ljava/lang/String;
    :catch_31
    move-exception v4

    goto :goto_e

    .line 108
    .restart local v3       #width:Ljava/lang/String;
    :cond_33
    :try_start_33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_36} :catch_3d

    move-result v5

    goto :goto_20

    .line 114
    .end local v3           #width:Ljava/lang/String;
    .restart local v0       #height:Ljava/lang/String;
    :cond_38
    :try_start_38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3b} :catch_31

    move-result v4

    goto :goto_2e

    .line 109
    .end local v0           #height:Ljava/lang/String;
    :catch_3d
    move-exception v5

    goto :goto_22
.end method

.method private static declared-synchronized getNextProxyIndex()I
    .registers 3

    .prologue
    .line 141
    const-class v2, Lcom/google/android/apps/plus/phone/ImageProxyUtil;

    monitor-enter v2

    :try_start_3
    sget v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    .line 142
    .local v0, toReturn:I
    sget v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    rem-int/lit8 v1, v1, 0x3

    sput v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 143
    monitor-exit v2

    return v0

    .line 141
    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;
    .registers 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 228
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 229
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 255
    :goto_19
    return-object v7

    .line 237
    :cond_1a
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 238
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 240
    .local v6, start:I
    :cond_20
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 241
    .local v3, next:I
    if-ne v3, v8, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 243
    .local v0, end:I
    :goto_2c
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 244
    .local v5, separator:I
    if-gt v5, v0, :cond_36

    if-ne v5, v8, :cond_37

    .line 245
    :cond_36
    move v5, v0

    .line 248
    :cond_37
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v6, v0, 0x1

    .line 253
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_20

    .line 255
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_19

    .end local v0           #end:I
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #separator:I
    :cond_4f
    move v0, v3

    .line 241
    goto :goto_2c
.end method

.method public static isProxyHostedUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 266
    if-nez p0, :cond_4

    .line 267
    const/4 v1, 0x0

    .line 271
    :goto_3
    return v1

    .line 270
    :cond_4
    sget-object v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->PROXY_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 271
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_3
.end method

.method public static setImageUrlSize(IILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "url"

    .prologue
    .line 80
    if-nez p2, :cond_4

    move-object v2, p2

    .line 92
    :goto_3
    return-object v2

    .line 85
    :cond_4
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 86
    invoke-static {}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->createProxyUrl()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, proxyUrl:Ljava/lang/String;
    :goto_e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, proxyUri:Landroid/net/Uri;
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 88
    .end local v0           #proxyUri:Landroid/net/Uri;
    .end local v1           #proxyUrl:Ljava/lang/String;
    :cond_1b
    move-object v1, p2

    .line 89
    .restart local v1       #proxyUrl:Ljava/lang/String;
    const/4 p2, 0x0

    goto :goto_e
.end method

.method public static setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "size"
    .parameter "url"

    .prologue
    .line 55
    if-nez p1, :cond_4

    move-object v2, p1

    .line 67
    :goto_3
    return-object v2

    .line 60
    :cond_4
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 61
    invoke-static {}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->createProxyUrl()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, proxyUrl:Ljava/lang/String;
    :goto_e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, proxyUri:Landroid/net/Uri;
    invoke-static {p0, p0, v0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 63
    .end local v0           #proxyUri:Landroid/net/Uri;
    .end local v1           #proxyUrl:Ljava/lang/String;
    :cond_1b
    move-object v1, p1

    .line 64
    .restart local v1       #proxyUrl:Ljava/lang/String;
    const/4 p1, 0x0

    goto :goto_e
.end method

.method public static setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 15
    .parameter "width"
    .parameter "height"
    .parameter "proxyUri"
    .parameter "imageUrl"

    .prologue
    const/4 v10, -0x1

    .line 158
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 159
    .local v5, proxyUriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    if-eq p0, v10, :cond_39

    if-eq p1, v10, :cond_39

    .line 164
    const-string v8, "resize_w"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    const-string v8, "resize_h"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    const-string v8, "no_expand"

    const-string v9, "1"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    :cond_39
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 171
    .local v3, newProxyUri:Landroid/net/Uri;
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v4

    .line 172
    .local v4, paramNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_45

    .line 177
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 178
    const-string v8, "url"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 180
    const-string v8, "url"

    const-string v9, "url"

    invoke-virtual {p2, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    :cond_6e
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_45

    .line 183
    :cond_73
    if-eq p0, v10, :cond_77

    if-ne p1, v10, :cond_8f

    :cond_77
    const-string v8, "resize_w"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const-string v8, "resize_h"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const-string v8, "no_expand"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 190
    :cond_8f
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 191
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 192
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_97

    .line 199
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a7
    if-eqz p3, :cond_be

    const-string v8, "url"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_be

    .line 200
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 201
    const-string v8, "url"

    invoke-virtual {v5, v8, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 204
    :cond_be
    const-string v8, "container"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d5

    .line 205
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 206
    const-string v8, "container"

    const-string v9, "esmobile"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 209
    :cond_d5
    const-string v8, "gadget"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_ec

    .line 210
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 211
    const-string v8, "gadget"

    const-string v9, "a"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 214
    :cond_ec
    const-string v8, "rewriteMime"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_103

    .line 215
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 216
    const-string v8, "rewriteMime"

    const-string v9, "image/*"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 220
    :cond_103
    return-object v3
.end method
