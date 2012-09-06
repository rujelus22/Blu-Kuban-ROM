.class Lcom/google/android/music/athome/AtHomePlaybackActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AtHomePlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$100(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/PlaybackControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 345
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateCurrentPlaying()Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    .line 346
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateStatus()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$400(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$3;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/TouchInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/TouchInterceptor;->invalidateViews()V

    .line 349
    return-void
.end method
