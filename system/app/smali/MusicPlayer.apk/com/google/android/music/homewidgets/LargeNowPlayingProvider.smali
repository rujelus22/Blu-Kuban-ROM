.class public Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;
.super Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;
.source "LargeNowPlayingProvider.java"


# static fields
.field private static sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;-><init>()V

    return-void
.end method

.method public static getConfig(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .registers 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 23
    sget-object v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    if-nez v2, :cond_21

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 25
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 26
    .local v0, albumArtSize:I
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {p0, v2}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->buildConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v2

    sput-object v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    .line 27
    sget-object v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v2, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setAlbumArtHeight(I)V

    .line 28
    sget-object v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-virtual {v2, v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setAlbumArtWidth(I)V

    .line 31
    .end local v0           #albumArtSize:I
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_21
    sget-object v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->sConfig:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    return-object v2
.end method
