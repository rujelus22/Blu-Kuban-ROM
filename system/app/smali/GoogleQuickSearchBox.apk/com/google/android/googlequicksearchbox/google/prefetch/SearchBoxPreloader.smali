.class public Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
.super Ljava/lang/Object;
.source "SearchBoxPreloader.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;


# static fields
.field private static final ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private mLastQuery:Ljava/lang/String;

.field private mPreloadComponent:Landroid/content/ComponentName;

.field private mSearchBoxPageBaseUrl:Ljava/lang/String;

.field private mStarting:Z

.field private final mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.browser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;)V
    .registers 4
    .parameter "context"
    .parameter "urlHelper"
    .parameter "strategy"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 74
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 75
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    .line 76
    return-void
.end method

.method private static browserPackageMatch(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageFound"

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->ANDROID_BROWSER_PACKAGES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 80
    .local v3, packageName:Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 81
    const/4 v4, 0x1

    .line 84
    .end local v3           #packageName:Ljava/lang/String;
    :goto_f
    return v4

    .line 79
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 84
    .end local v3           #packageName:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private cancelPreload()V
    .registers 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;->shouldPrefetchNow()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 206
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase()Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_1c

    .line 208
    const-string v1, "searchbox_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    .line 214
    .end local v0           #i:Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public static create(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;)Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
    .registers 15
    .parameter "context"
    .parameter "urlHelper"
    .parameter "strategy"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 90
    .local v3, pacman:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_11

    .line 91
    const-string v9, "QSB.SearchBoxPreloader"

    const-string v10, "No package manager, not preloading"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 123
    :goto_10
    return-object v7

    .line 96
    :cond_11
    new-instance v7, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;

    invoke-direct {v7, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;)V

    .line 97
    .local v7, self:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;
    const-string v9, "q"

    invoke-direct {v7, v9, v10}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, browseIntent:Landroid/content/Intent;
    const/high16 v9, 0x1

    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 99
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_28

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_31

    .line 100
    :cond_28
    const-string v9, "QSB.SearchBoxPreloader"

    const-string v10, "No browser installed?"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 101
    goto :goto_10

    .line 104
    :cond_31
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->browserPackageMatch(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_59

    .line 105
    const-string v9, "QSB.SearchBoxPreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t preload due to non-Android browser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 106
    goto :goto_10

    .line 108
    :cond_59
    new-instance v5, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.browser.PreloadRequestReceiver"

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v5, preloadComponent:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 113
    .local v4, preload:Landroid/content/Intent;
    :try_start_68
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 114
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_a9

    .line 115
    new-instance v9, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v10, "ActivityInfo is null"

    invoke-direct {v9, v10}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_7b} :catch_7b

    .line 117
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_7b
    move-exception v2

    .line 118
    .local v2, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "QSB.SearchBoxPreloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 120
    goto/16 :goto_10

    .line 122
    .end local v2           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_a9
    iput-object v5, v7, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mPreloadComponent:Landroid/content/ComponentName;

    goto/16 :goto_10
.end method

.method private getLocation()Landroid/location/Location;
    .registers 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    .line 292
    .local v0, settings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 293
    const/4 v1, 0x0

    .line 297
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->getLastFix()Landroid/location/Location;

    move-result-object v1

    goto :goto_12
.end method

.method private getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "query"

    .prologue
    .line 235
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mSearchBoxPageBaseUrl:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 236
    const/4 v1, 0x0

    .line 256
    :cond_5
    :goto_5
    return-object v1

    .line 238
    :cond_6
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase()Landroid/content/Intent;

    move-result-object v1

    .line 239
    .local v1, i:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 241
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_2c

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, headers:Landroid/os/Bundle;
    const-string v3, "X-Geo"

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "Geo-Position"

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/GeoPositionEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v3, "com.android.browser.headers"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    .end local v0           #headers:Landroid/os/Bundle;
    :cond_2c
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mSearchBoxPageBaseUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    if-eqz p1, :cond_5

    .line 254
    const-string v3, "searchbox_query"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5
.end method

.method private getPreloadIntentBase()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mPreloadComponent:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getPreloadIntentBase(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4
    .parameter "preloadComponent"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 270
    const-string v1, "preload_id"

    const-string v2, "qsb_srp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    return-object v0
.end method

.method private getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7
    .parameter "query"
    .parameter "includeLocation"

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->createWebSearchIntent(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;Lcom/google/android/googlequicksearchbox/Clock;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, i:Landroid/content/Intent;
    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 282
    .local v1, loc:Landroid/location/Location;
    :cond_f
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;->createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/location/Location;Lcom/google/android/googlequicksearchbox/QsbApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    const-string v2, "preload_id"

    const-string v3, "qsb_srp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    return-object v0
.end method

.method private loadBasePageIfNeeded()V
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    if-eqz v0, :cond_b

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->preloadResults(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 152
    :cond_b
    return-void
.end method

.method private preloadResults(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStrategy:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;->shouldPrefetchNow()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_15

    .line 198
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    .line 202
    .end local v0           #i:Landroid/content/Intent;
    :cond_15
    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "newQuery"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->loadBasePageIfNeeded()V

    .line 130
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 135
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->cancelPreload()V

    .line 137
    :cond_12
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchBoxBaseUrl(Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mSearchBoxPageBaseUrl:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 144
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mStarting:Z

    .line 162
    return-void
.end method

.method public onSuggestionsDone()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->loadBasePageIfNeeded()V

    .line 168
    return-void
.end method

.method public performSearch(Ljava/lang/String;)Z
    .registers 6
    .parameter "query"

    .prologue
    const/4 v2, 0x1

    .line 176
    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->getSearchResultsPageIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 177
    .local v1, i:Landroid/content/Intent;
    const-string v3, "searchbox_query"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :try_start_a
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->startActivity(Landroid/content/Intent;)V

    .line 180
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mLastQuery:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    .line 183
    :goto_12
    return v2

    .line 182
    :catch_13
    move-exception v0

    .line 183
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public prefetch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 190
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->preloadResults(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .parameter "appSearchData"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchBoxPreloader;->mAppSearchData:Landroid/os/Bundle;

    .line 219
    return-void
.end method
