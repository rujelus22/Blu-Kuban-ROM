.class Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WatchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/WatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;)V
    .registers 2
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/videos/honeycomb/WatchController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 544
    const-string v0, "Audio becoming noisy. Pausing if needed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->access$700(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 546
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/WatchController;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->access$700(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 548
    :cond_1a
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->access$500(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->access$600(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    return-void
.end method
