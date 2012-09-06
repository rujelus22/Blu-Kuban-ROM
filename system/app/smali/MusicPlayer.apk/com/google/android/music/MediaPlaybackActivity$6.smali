.class Lcom/google/android/music/MediaPlaybackActivity$6;
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
    .line 1173
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1175
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v3

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$502(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 1176
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/PlaybackControls;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 1177
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1178
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1179
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 1180
    .local v0, next:J
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v2, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V

    .line 1181
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshTrackListFromService()V
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1182
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "classname"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$502(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 1185
    return-void
.end method
