.class Lcom/sec/android/app/music/CorePlayerService$5;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 784
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, action:Ljava/lang/String;
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaReceiver:onReceive(action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 787
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 791
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/music/CorePlayerService;->access$402(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 793
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_56

    .line 806
    :cond_50
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3}, Lcom/sec/android/app/music/CorePlayerService;->stop()V

    .line 893
    :cond_55
    :goto_55
    return-void

    .line 808
    :cond_56
    const-string v3, "CorePlayerService"

    const-string v4, "mMediaReceiver::ACTION_MEDIA_UNMOUNTED:Playing file is in the phone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 812
    :cond_5e
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 813
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/music/CorePlayerService;->access$402(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 818
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, ActionPath:Ljava/lang/String;
    if-eqz v0, :cond_55

    .line 825
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/music/CorePlayerService;->access$1502(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto :goto_55

    .line 828
    .end local v0           #ActionPath:Ljava/lang/String;
    :cond_7b
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 829
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 830
    .restart local v0       #ActionPath:Ljava/lang/String;
    const-string v3, "CorePlayerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent : ActionPath - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 833
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    :cond_b4
    if-eqz v0, :cond_55

    .line 848
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 852
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 855
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->release()V

    .line 856
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v3, v8}, Lcom/sec/android/app/music/CorePlayerService;->access$202(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    .line 858
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    new-instance v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v4, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v3, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$202(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    .line 859
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 861
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3, v8}, Lcom/sec/android/app/music/CorePlayerService;->access$1402(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/common/data/MusicAlbumInfo;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 862
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/music/MusicPlayerController;->setCurrentMedia(Landroid/net/Uri;)V

    .line 864
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 865
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$902(Lcom/sec/android/app/music/CorePlayerService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 867
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$900(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 869
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$5;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V
    invoke-static {v3, v7}, Lcom/sec/android/app/music/CorePlayerService;->access$600(Lcom/sec/android/app/music/CorePlayerService;Z)V

    goto/16 :goto_55

    .line 873
    .end local v0           #ActionPath:Ljava/lang/String;
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_140
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto/16 :goto_55
.end method
