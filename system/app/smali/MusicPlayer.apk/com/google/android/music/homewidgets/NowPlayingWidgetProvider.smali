.class public Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$UpdateService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->getWidgetConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v0

    return-object v0
.end method

.method private static getWidgetConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 161
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-class v2, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 164
    invoke-static {p0, v0}, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->getConfig(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v0

    .line 172
    :goto_1e
    return-object v0

    .line 165
    :cond_1f
    const-class v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 166
    invoke-static {p0, v0}, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;->getConfig(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v0

    goto :goto_1e

    .line 167
    :cond_30
    const-class v2, Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 169
    invoke-static {p0, v0}, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;->getConfig(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v0

    goto :goto_1e

    .line 171
    :cond_41
    const-string v0, "NowPlayingWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find widget provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static notifyChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 94
    :cond_10
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 99
    invoke-static {p0, p1, v1}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V

    .line 102
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/music/homewidgets/SmallNowPlayingProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 104
    invoke-static {p0, p1, v1}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V

    .line 107
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/music/homewidgets/LargeNowPlayingProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 109
    invoke-static {p0, p1, v0}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V

    .line 111
    :cond_3e
    return-void
.end method

.method static declared-synchronized performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V
    .registers 5
    .parameter "context"
    .parameter "nowPlaying"
    .parameter "appWidgetIds"

    .prologue
    .line 125
    const-class v1, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;-><init>(Landroid/content/Context;[ILandroid/content/Intent;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 151
    monitor-exit v1

    return-void

    .line 125
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method
