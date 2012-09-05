.class Lcom/sec/android/app/music/MusicPlayer$24;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 3556
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3559
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlingHandler handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7c

    .line 3595
    :goto_23
    return-void

    .line 3562
    :pswitch_24
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->showFlingAnimation(I)V
    invoke-static {v1, v4}, Lcom/sec/android/app/music/MusicPlayer;->access$2600(Lcom/sec/android/app/music/MusicPlayer;I)V

    goto :goto_23

    .line 3565
    :pswitch_2a
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->showFlingAnimation(I)V
    invoke-static {v1, v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2600(Lcom/sec/android/app/music/MusicPlayer;I)V

    goto :goto_23

    .line 3568
    :pswitch_30
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2702(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    goto :goto_23

    .line 3571
    :pswitch_36
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mIsMusidPrepared:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2802(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    goto :goto_23

    .line 3576
    :pswitch_3c
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mIsMusidPrepared:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/music/MusicPlayer;->access$2802(Lcom/sec/android/app/music/MusicPlayer;Z)Z

    .line 3578
    :try_start_41
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 3579
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3586
    :goto_57
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v1, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/sec/android/app/music/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V

    .line 3587
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->access$202(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_69} :catch_6a

    goto :goto_23

    .line 3588
    :catch_6a
    move-exception v0

    .line 3589
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23

    .line 3583
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6f
    :try_start_6f
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$24;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicPlayer;->access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_7b} :catch_6a

    goto :goto_57

    .line 3560
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method
