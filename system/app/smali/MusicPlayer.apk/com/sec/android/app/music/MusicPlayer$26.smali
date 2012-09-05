.class Lcom/sec/android/app/music/MusicPlayer$26;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newposition:D

.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 3918
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 3930
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v1, v1, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v1, :cond_56

    if-eqz p3, :cond_56

    .line 3934
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3935
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    int-to-double v3, p2

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    .line 3936
    iget-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    .line 3939
    iget-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v1, v1

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5c

    .line 3940
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v2, v2, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayedTime(J)V

    .line 3942
    :try_start_41
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3943
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->access$3002(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    .line 3944
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayer;->doPause()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_56} :catch_57

    .line 3966
    :cond_56
    :goto_56
    return-void

    .line 3946
    :catch_57
    move-exception v0

    .line 3947
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56

    .line 3953
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 3954
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayedTime(J)V

    .line 3956
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$3000(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3957
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayer;->doPlay()V

    .line 3958
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->access$3002(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_81} :catch_82

    goto :goto_56

    .line 3962
    :catch_82
    move-exception v0

    .line 3963
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "seekBar"

    .prologue
    .line 3971
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v0, v0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v0, :cond_13

    .line 3972
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3974
    :cond_13
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    .line 3979
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v1, v1, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v1, :cond_11

    .line 3980
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3982
    :cond_11
    iget-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v1, v1

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_47

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_47

    .line 3984
    :try_start_22
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 3985
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer$26;->newposition:D

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayedTime(J)V

    .line 3987
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$3000(Lcom/sec/android/app/music/MusicPlayer;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 3988
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayer;->doPlay()V

    .line 3989
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$26;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->access$3002(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_47} :catch_48

    .line 3996
    :cond_47
    :goto_47
    return-void

    .line 3992
    :catch_48
    move-exception v0

    .line 3993
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_47
.end method
