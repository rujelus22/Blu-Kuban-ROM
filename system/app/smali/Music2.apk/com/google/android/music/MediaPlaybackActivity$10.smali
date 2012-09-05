.class Lcom/google/android/music/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1777
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v4

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v3, v4}, Lcom/google/android/music/MediaPlaybackActivity;->access$302(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 1778
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1779
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1780
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1782
    :try_start_18
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$300(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1783
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1300(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1784
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1785
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1500(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    .line 1786
    .local v1, next:J
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;J)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_39} :catch_44

    .line 1791
    .end local v1           #next:J
    :cond_39
    :goto_39
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setControlsVisibilityAccordingToFlag()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1792
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setControlsClickableAccordingToFlag()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1793
    return-void

    .line 1788
    :catch_44
    move-exception v0

    .line 1789
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "classname"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$302(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 1796
    return-void
.end method
