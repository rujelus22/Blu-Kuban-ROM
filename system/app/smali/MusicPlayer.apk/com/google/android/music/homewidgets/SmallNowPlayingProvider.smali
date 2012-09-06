.class public Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;
.super Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;
.source "SmallNowPlayingProvider.java"


# static fields
.field private static sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;-><init>()V

    return-void
.end method

.method public static getConfig(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .registers 10
    .parameter "context"
    .parameter "info"

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x4

    .line 25
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    if-nez v3, :cond_3f

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 28
    .local v0, albumArtSize:I
    iget v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {p0, v3}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->buildConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    .line 29
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setAlbumArtHeight(I)V

    .line 30
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setAlbumArtWidth(I)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_use_star_ratings"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    .local v1, hasStarRatings:Z
    if-eqz v1, :cond_42

    .line 41
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->showElements(I)V

    .line 42
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v7}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hideElements(I)V

    .line 49
    .end local v0           #albumArtSize:I
    .end local v1           #hasStarRatings:Z
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_3f
    :goto_3f
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    return-object v3

    .line 44
    .restart local v0       #albumArtSize:I
    .restart local v1       #hasStarRatings:Z
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_42
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hideElements(I)V

    .line 45
    sget-object v3, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v3, v7}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->showElements(I)V

    goto :goto_3f
.end method
