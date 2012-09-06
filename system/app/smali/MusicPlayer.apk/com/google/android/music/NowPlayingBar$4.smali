.class Lcom/google/android/music/NowPlayingBar$4;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/NowPlayingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/NowPlayingBar;


# direct methods
.method constructor <init>(Lcom/google/android/music/NowPlayingBar;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$4;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 465
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_5

    .line 469
    :goto_4
    return-void

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$4;->this$0:Lcom/google/android/music/NowPlayingBar;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$500(Lcom/google/android/music/NowPlayingBar;Z)V

    goto :goto_4
.end method
