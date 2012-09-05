.class public Lcom/google/android/apps/plus/phone/FIFEUtil;
.super Ljava/lang/Object;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/FIFEUtil$1;,
        Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;,
        Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;
    }
.end annotation


# static fields
.field private static final FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

.field private static final JOIN_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;

.field private static final SPLIT_ON_EQUALS:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

.field private static final SPLIT_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "="

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->on(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->omitEmptyStrings()Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil;->SPLIT_ON_EQUALS:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    .line 24
    const-string v0, "/"

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->on(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->omitEmptyStrings()Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    .line 26
    const-string v0, "/"

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;->on(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil;->JOIN_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;

    .line 28
    const-string v0, "^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(www\\.google\\.com\\/visualsearch\\/lh))\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method public static isFifeHostedUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 221
    if-nez p0, :cond_4

    .line 222
    const/4 v1, 0x0

    .line 226
    :goto_3
    return v1

    .line 225
    :cond_4
    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 226
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_3
.end method

.method private static makeUriString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, scheme:Ljava/lang/String;
    if-eqz v6, :cond_14

    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_14
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, encodedAuthority:Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 112
    const-string v7, "//"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_23
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, path:Ljava/lang/String;
    const-string v7, "/="

    invoke-static {v5, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, encodedPath:Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_32
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, encodedQuery:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 123
    const/16 v7, 0x3f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_45
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, encodedFragment:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 128
    const/16 v7, 0x23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_d

    move-object v0, p0

    .line 363
    check-cast v0, Ljava/util/Collection;

    .line 364
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_c
    return-object v2

    .line 366
    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private static setContentImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter "options"
    .parameter "url"

    .prologue
    .line 294
    sget-object v2, Lcom/google/android/apps/plus/phone/FIFEUtil;->SPLIT_ON_EQUALS:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 295
    .local v1, splitPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static setImageUriOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .parameter "options"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    .line 153
    sget-object v3, Lcom/google/android/apps/plus/phone/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    .local v2, numParts:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2a

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 159
    add-int/lit8 v2, v2, -0x1

    .line 163
    :cond_2a
    const/4 v3, 0x4

    if-lt v2, v3, :cond_35

    const/4 v3, 0x6

    if-gt v2, v3, :cond_35

    .line 165
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setLegacyImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, modifiedUri:Landroid/net/Uri;
    :goto_34
    return-object v1

    .line 166
    .end local v1           #modifiedUri:Landroid/net/Uri;
    :cond_35
    if-ne v2, v5, :cond_3c

    .line 167
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setContentImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #modifiedUri:Landroid/net/Uri;
    goto :goto_34

    .line 170
    .end local v1           #modifiedUri:Landroid/net/Uri;
    :cond_3c
    move-object v1, p1

    .restart local v1       #modifiedUri:Landroid/net/Uri;
    goto :goto_34
.end method

.method public static setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "options"
    .parameter "url"

    .prologue
    .line 142
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUriOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .parameter "size"
    .parameter "url"
    .parameter "crop"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setImageUrlSize(ILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 8
    .parameter "size"
    .parameter "url"
    .parameter "crop"
    .parameter "includeMetadata"

    .prologue
    .line 76
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move-object v1, p1

    .line 93
    :goto_9
    return-object v1

    .line 80
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, options:Ljava/lang/StringBuffer;
    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    if-eqz p2, :cond_24

    .line 84
    const-string v3, "-c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_24
    if-eqz p3, :cond_2b

    .line 87
    const-string v3, "-I"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 91
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->makeUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, returnUrl:Ljava/lang/String;
    goto :goto_9
.end method

.method private static setLegacyImageUrlOptions(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .parameter "options"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x4

    const/4 v8, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, path:Ljava/lang/String;
    sget-object v7, Lcom/google/android/apps/plus/phone/FIFEUtil;->SPLIT_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/phone/FIFEUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 251
    .local v2, hasImagePrefix:Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2a

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 252
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 253
    const/4 v2, 0x1

    .line 256
    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 257
    .local v5, numParts:I
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 258
    .local v4, isPathSlashTerminated:Z
    if-nez v4, :cond_7e

    const/4 v7, 0x5

    if-ne v5, v7, :cond_7e

    move v1, v3

    .line 260
    .local v1, containsFilenameNoOptions:Z
    :goto_3a
    if-ne v5, v10, :cond_80

    .line 263
    .local v3, isBaseUrlFormat:Z
    :goto_3c
    if-eqz v1, :cond_45

    .line 264
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_45
    if-eqz v3, :cond_82

    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_4a
    if-eqz v2, :cond_51

    .line 275
    const-string v7, "image"

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 279
    :cond_51
    if-eqz v4, :cond_58

    .line 280
    const-string v7, ""

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_58
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/google/android/apps/plus/phone/FIFEUtil;->JOIN_ON_SLASH:Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;

    invoke-virtual {v9, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7

    .end local v1           #containsFilenameNoOptions:Z
    .end local v3           #isBaseUrlFormat:Z
    :cond_7e
    move v1, v8

    .line 258
    goto :goto_3a

    .restart local v1       #containsFilenameNoOptions:Z
    :cond_80
    move v3, v8

    .line 260
    goto :goto_3c

    .line 270
    .restart local v3       #isBaseUrlFormat:Z
    :cond_82
    invoke-interface {v0, v10, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a
.end method
