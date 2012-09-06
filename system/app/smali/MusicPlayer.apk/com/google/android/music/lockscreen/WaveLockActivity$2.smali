.class Lcom/google/android/music/lockscreen/WaveLockActivity$2;
.super Ljava/lang/Object;
.source "WaveLockActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v2

    #setter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1, v2}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$302(Lcom/google/android/music/lockscreen/WaveLockActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 178
    :try_start_9
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #getter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$300(Lcom/google/android/music/lockscreen/WaveLockActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 179
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$400(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfo()V
    invoke-static {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$500(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 186
    :cond_1f
    :goto_1f
    return-void

    .line 183
    :catch_20
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WaveLockActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "classname"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$302(Lcom/google/android/music/lockscreen/WaveLockActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 189
    return-void
.end method
