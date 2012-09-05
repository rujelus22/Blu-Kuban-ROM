.class public Lcom/google/android/apps/books/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final ASSUME_NETWORK_CONNECTED:Z

.field private static final sBaseApiaryUri:Ljava/lang/String;

.field private static final sBaseGDataUri:Landroid/net/Uri;

.field private static final sBaseUri:Landroid/net/Uri;


# instance fields
.field private final mBaseFinskyUri:Landroid/net/Uri;

.field private final mLargeDevice:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceParam:Ljava/lang/String;

.field private final mVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 78
    const-string v3, "BooksFrontend"

    const-string v4, "https://encrypted.google.com/"

    const-string v5, "BooksConfig"

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, baseUri:Ljava/lang/String;
    const-string v3, "https://encrypted.google.com/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 82
    const-string v3, "BooksConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## using custom books frontend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, origUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/apps/books/net/HttpUtils;->isDebugServer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    move-object v2, v1

    .line 89
    .local v2, uri:Landroid/net/Uri;
    :goto_35
    sput-object v2, Lcom/google/android/apps/books/util/Config;->sBaseUri:Landroid/net/Uri;

    .line 90
    sput-object v2, Lcom/google/android/apps/books/util/Config;->sBaseGDataUri:Landroid/net/Uri;

    .line 92
    const-string v3, "BooksApiary"

    const-string v4, "https://www.googleapis.com/books/v1"

    const-string v5, "BooksConfig"

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/books/util/Config;->sBaseApiaryUri:Ljava/lang/String;

    .line 93
    const-string v3, "https://www.googleapis.com/books/v1"

    sget-object v4, Lcom/google/android/apps/books/util/Config;->sBaseApiaryUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 95
    const-string v3, "BooksConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## using custom apiary frontend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/books/util/Config;->sBaseApiaryUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_69
    const-string v3, "BooksConnected"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    sput-boolean v3, Lcom/google/android/apps/books/util/Config;->ASSUME_NETWORK_CONNECTED:Z

    return-void

    .line 87
    .end local v2           #uri:Landroid/net/Uri;
    :cond_73
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto :goto_35
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/util/Config;->mPackageName:Ljava/lang/String;

    .line 114
    const-string v5, "https://market.android.com/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_63

    :goto_2b
    iput-boolean v3, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    .line 120
    const v3, 0x7f0e0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    .line 122
    const v3, 0x7f0e0098

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, versionString:Ljava/lang/String;
    :try_start_3d
    iget-object v3, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 126
    .local v0, info:Landroid/content/pm/PackageInfo;
    const v3, 0x7f0e0097

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_5f} :catch_65

    move-result-object v2

    .line 131
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_60
    iput-object v2, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    .line 132
    return-void

    .end local v2           #versionString:Ljava/lang/String;
    :cond_63
    move v3, v4

    .line 118
    goto :goto_2b

    .line 128
    .restart local v2       #versionString:Ljava/lang/String;
    :catch_65
    move-exception v3

    goto :goto_60
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "baseFinskyUri"
    .parameter "largeDevice"
    .parameter "sourceParam"
    .parameter "versionString"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/Config;->mPackageName:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    .line 141
    iput-boolean p3, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    .line 142
    iput-object p4, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;
    .registers 2
    .parameter "context"

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/apps/books/util/Config;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/util/Config;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBaseApiaryUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/google/android/apps/books/util/Config;->sBaseApiaryUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getBaseGDataUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 227
    sget-object v0, Lcom/google/android/apps/books/util/Config;->sBaseGDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getBaseUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 216
    sget-object v0, Lcom/google/android/apps/books/util/Config;->sBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method private hasActivities(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/apps/books/util/Config;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static isBooksUri(Ljava/lang/String;)Z
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 371
    .local v2, originalUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 372
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1b

    const-string v6, ".google.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 382
    .end local v1           #host:Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v4

    .line 377
    :cond_1b
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 378
    .local v3, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v5, :cond_1a

    .line 381
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, element:Ljava/lang/String;
    const-string v6, "books"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "ebooks"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_3b
    move v4, v5

    goto :goto_1a
.end method

.method public static isDeviceConnected(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 260
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 262
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v1

    return v1
.end method

.method public static isDeviceConnected(Landroid/net/ConnectivityManager;)Z
    .registers 3
    .parameter "cm"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 272
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_c
    sget-boolean v1, Lcom/google/android/apps/books/util/Config;->ASSUME_NETWORK_CONNECTED:Z

    if-eqz v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static makeRelative(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "relativePath"

    .prologue
    .line 299
    const-string v3, "missing relativePath"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 304
    .local v2, relativeUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 305
    move-object v0, v2

    .line 311
    .local v0, absoluteUri:Landroid/net/Uri;
    :goto_10
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 307
    .end local v0           #absoluteUri:Landroid/net/Uri;
    :cond_15
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, baseUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #absoluteUri:Landroid/net/Uri;
    goto :goto_10
.end method


# virtual methods
.method public getBaseFinskyUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mBaseFinskyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInstalledNativeFinskyPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getFinskyShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, shopUrl:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v0, shopIntent:Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/Config;->hasActivities(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 171
    const-string v2, "com.android.vending"

    .line 179
    :goto_18
    return-object v2

    .line 174
    :cond_19
    const-string v2, "com.google.android.finsky"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/Config;->hasActivities(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 176
    const-string v2, "com.google.android.finsky"

    goto :goto_18

    .line 179
    :cond_27
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mSourceParam:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/books/util/Config;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public isLargeDevice()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/Config;->mLargeDevice:Z

    return v0
.end method

.method public prepareForOcean(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "uri"

    .prologue
    .line 357
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->isBooksUri(Ljava/lang/String;)Z

    move-result v0

    .line 358
    .local v0, isBooks:Z
    if-nez v0, :cond_1f

    .line 359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a Google Books uri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_1f
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    .local v2, relativeUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/Config;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, newUri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/util/Config;->setSourceParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setSourceParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "uriString"

    .prologue
    .line 325
    if-nez p1, :cond_8

    .line 326
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 330
    :cond_8
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, booksAuthority:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5f

    .line 332
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "source"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 335
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 338
    :cond_4a
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 339
    .local v2, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, sourceParam:Ljava/lang/String;
    const-string v5, "source"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 341
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    .end local v0           #authority:Ljava/lang/String;
    .end local v2           #builder:Landroid/net/Uri$Builder;
    .end local v3           #sourceParam:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    .end local p1
    :cond_5f
    return-object p1
.end method
