.class public Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$UpdateService;
.super Landroid/app/IntentService;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "WidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 59
    const-string v3, "appWidgetIds"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 60
    .local v0, appWidgetIds:[I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, nowPlaying:Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->populateExtrasFromSharedPreferences(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 62
    invoke-static {p0, v1, v0}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, updateIntent:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "appwidgetupdate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v3, "device"

    const-string v4, "any"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 79
    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v2}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
