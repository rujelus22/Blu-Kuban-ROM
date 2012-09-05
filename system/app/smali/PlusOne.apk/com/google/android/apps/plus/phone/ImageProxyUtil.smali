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
    .line 20
    const-string v0, "^(((http(s)?):)?\\/\\/images(\\d)?-.+-opensocial\\.googleusercontent\\.com\\/gadgets\\/proxy\\?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->PROXY_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createProxyUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
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

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getNextProxyIndex()I
    .registers 3

    .prologue
    .line 110
    const-class v2, Lcom/google/android/apps/plus/phone/ImageProxyUtil;

    monitor-enter v2

    :try_start_3
    sget v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    .line 111
    .local v0, toReturn:I
    sget v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I

    rem-int/lit8 v1, v1, 0x3

    sput v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->sProxyIndex:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 112
    monitor-exit v2

    return v0

    .line 110
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

    .line 188
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 189
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "This isn\'t a hierarchical URI."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 192
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 215
    :goto_19
    return-object v7

    .line 197
    :cond_1a
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 198
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 200
    .local v6, start:I
    :cond_20
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 201
    .local v3, next:I
    if-ne v3, v8, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 203
    .local v0, end:I
    :goto_2c
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 204
    .local v5, separator:I
    if-gt v5, v0, :cond_36

    if-ne v5, v8, :cond_37

    .line 205
    :cond_36
    move v5, v0

    .line 208
    :cond_37
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v6, v0, 0x1

    .line 213
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_20

    .line 215
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_19

    .end local v0           #end:I
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #separator:I
    :cond_4f
    move v0, v3

    .line 201
    goto :goto_2c
.end method

.method public static isProxyHostedUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 226
    if-nez p0, :cond_4

    .line 227
    const/4 v1, 0x0

    .line 231
    :goto_3
    return v1

    .line 230
    :cond_4
    sget-object v1, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->PROXY_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 231
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
    .line 76
    if-nez p2, :cond_4

    move-object v2, p2

    .line 88
    :goto_3
    return-object v2

    .line 81
    :cond_4
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 82
    invoke-static {}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->createProxyUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, proxyUrl:Ljava/lang/String;
    :goto_e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, proxyUri:Landroid/net/Uri;
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 84
    .end local v0           #proxyUri:Landroid/net/Uri;
    .end local v1           #proxyUrl:Ljava/lang/String;
    :cond_1b
    move-object v1, p2

    .line 85
    .restart local v1       #proxyUrl:Ljava/lang/String;
    const/4 p2, 0x0

    goto :goto_e
.end method

.method public static setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "size"
    .parameter "url"

    .prologue
    .line 51
    if-nez p1, :cond_4

    move-object v2, p1

    .line 63
    :goto_3
    return-object v2

    .line 56
    :cond_4
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 57
    invoke-static {}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->createProxyUrl()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, proxyUrl:Ljava/lang/String;
    :goto_e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, proxyUri:Landroid/net/Uri;
    invoke-static {p0, p0, v0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 59
    .end local v0           #proxyUri:Landroid/net/Uri;
    .end local v1           #proxyUrl:Ljava/lang/String;
    :cond_1b
    move-object v1, p1

    .line 60
    .restart local v1       #proxyUrl:Ljava/lang/String;
    const/4 p1, 0x0

    goto :goto_e
.end method

.method public static setImageUrlSizeOptions(IILandroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .parameter "width"
    .parameter "height"
    .parameter "proxyUri"
    .parameter "imageUrl"

    .prologue
    .line 127
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 128
    .local v5, proxyUriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    const-string v8, "resize_w"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    const-string v8, "resize_h"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    const-string v8, "no_expand"

    const-string v9, "1"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 138
    .local v3, newProxyUri:Landroid/net/Uri;
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v4

    .line 139
    .local v4, paramNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_40

    .line 144
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 145
    const-string v8, "url"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 147
    const-string v8, "url"

    const-string v9, "url"

    invoke-virtual {p2, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    :cond_69
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_40

    .line 150
    :cond_6e
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 151
    .local v7, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 152
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_76

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_86
    if-eqz p3, :cond_9d

    const-string v8, "url"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9d

    .line 160
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 161
    const-string v8, "url"

    invoke-virtual {v5, v8, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 164
    :cond_9d
    const-string v8, "container"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b4

    .line 165
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 166
    const-string v8, "container"

    const-string v9, "esmobile"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 169
    :cond_b4
    const-string v8, "gadget"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_cb

    .line 170
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 171
    const-string v8, "gadget"

    const-string v9, "a"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 174
    :cond_cb
    const-string v8, "rewriteMime"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e2

    .line 175
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 176
    const-string v8, "rewriteMime"

    const-string v9, "image/*"

    invoke-virtual {v5, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 180
    :cond_e2
    return-object v3
.end method
