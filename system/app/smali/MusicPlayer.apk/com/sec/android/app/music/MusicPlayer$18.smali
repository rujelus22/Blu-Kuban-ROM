.class Lcom/sec/android/app/music/MusicPlayer$18;
.super Landroid/content/BroadcastReceiver;
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
    .line 2494
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0xbb8

    const/16 v5, 0x20

    .line 2500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProgressBarRecceiver:onReceive() is called. Action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const-string v2, "musicplayer.ffrew.down"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2505
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v2, v2, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v2, :cond_3a

    .line 2506
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2531
    :cond_39
    :goto_39
    return-void

    .line 2508
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39

    .line 2510
    :cond_55
    const-string v2, "musicplayer.ffrew.up"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2511
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v2, v2, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v2, :cond_39

    .line 2512
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_39

    .line 2514
    :cond_6d
    const-string v2, "com.android.music.settingchanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2515
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2519
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "MusicPlayer"

    const-string v3, "from"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2520
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->doUpdateRepeatIcon()V
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$1600(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 2521
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->doUpdateShuffleIcon()V
    invoke-static {v2}, Lcom/sec/android/app/music/MusicPlayer;->access$1700(Lcom/sec/android/app/music/MusicPlayer;)V

    goto :goto_39

    .line 2526
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_92
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v2, v2, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v2, :cond_39

    .line 2527
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer$18;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_39
.end method
