.class public Lcom/google/android/youtube/core/utils/ExternalIntents;
.super Ljava/lang/Object;
.source "ExternalIntents.java"


# static fields
.field private static final MARKET_BASE_URI:Landroid/net/Uri;

.field private static final VIDEOS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "http://youtube.com/my_purchases"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/ExternalIntents;->VIDEOS_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "http://market.android.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/ExternalIntents;->MARKET_BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "urlId"

    .prologue
    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 350
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isFinskyInstalledAndSupportsMovies(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/youtube/core/utils/ExternalIntents;->MARKET_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "movies"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .local v0, finskyMoviesIntent:Landroid/content/Intent;
    const-string v1, "com.google.android.finsky"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private static isVendingInstalledAndSupportsMovies(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/youtube/core/utils/ExternalIntents;->MARKET_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "movies"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, vendingMoviesIntent:Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static parseYouTubeWatchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    .registers 3
    .parameter "uri"

    .prologue
    .line 324
    :try_start_0
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/WatchUri;->fromUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/WatchUri;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 326
    :goto_4
    return-object v1

    .line 325
    :catch_5
    move-exception v0

    .line 326
    .local v0, ex:Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static rewriteUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "context"
    .parameter "src"

    .prologue
    .line 371
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static startShopActivity(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter "starter"
    .parameter "userAuth"

    .prologue
    .line 131
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/google/android/youtube/core/utils/ExternalIntents;->MARKET_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "movies"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, shopUri:Landroid/net/Uri;
    invoke-static {p0, v0, p1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForUri(Landroid/app/Activity;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 134
    return-void
.end method

.method private static startShopForUri(Landroid/app/Activity;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter "starter"
    .parameter "uri"
    .parameter "userAuth"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0, p1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->rewriteUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->isFinskyInstalledAndSupportsMovies(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 150
    const-string v1, "com.google.android.finsky"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :goto_1b
    if-eqz p2, :cond_24

    .line 158
    const-string v1, "authAccount"

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void

    .line 151
    :cond_28
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->isVendingInstalledAndSupportsMovies(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 152
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    .line 155
    :cond_34
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b
.end method

.method public static startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter "starter"
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/google/android/youtube/core/utils/ExternalIntents;->MARKET_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movie-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, videoDetailsUri:Landroid/net/Uri;
    invoke-static {p0, v0, p2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForUri(Landroid/app/Activity;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 144
    return-void
.end method

.method public static startWifiSettingsActivity(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public static viewUri(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, viewIntent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->rewriteUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method
