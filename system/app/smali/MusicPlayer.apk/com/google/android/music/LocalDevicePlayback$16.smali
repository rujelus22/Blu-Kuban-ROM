.class Lcom/google/android/music/LocalDevicePlayback$16;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->setNextTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1919
    :try_start_2
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/music/player/AsyncMediaPlayer;->setNextPlayer(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_85

    .line 1922
    :goto_c
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 1923
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/player/AsyncMediaPlayer;->release()V

    .line 1924
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5, v7}, Lcom/google/android/music/LocalDevicePlayback;->access$802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 1926
    :cond_22
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->getNextPlayPosition(ZZ)I
    invoke-static {v5, v9, v9}, Lcom/google/android/music/LocalDevicePlayback;->access$5300(Lcom/google/android/music/LocalDevicePlayback;ZZ)I

    move-result v4

    .line 1927
    .local v4, nextpos:I
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v1

    .line 1928
    .local v1, currentPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    if-ltz v4, :cond_52

    .line 1929
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->getAudioIdAndListItemId(I)Landroid/util/Pair;

    move-result-object v0

    .line 1931
    .local v0, audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    if-eqz v0, :cond_52

    .line 1936
    :try_start_3c
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v6

    const/4 v5, 0x1

    new-array v7, v5, [Lcom/google/android/music/dl/ContentIdentifier;

    const/4 v8, 0x0

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/music/dl/ContentIdentifier;

    aput-object v5, v7, v8

    invoke-interface {v6, v7}, Lcom/google/android/music/store/IStoreService;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4f} :catch_53

    move-result-object v5

    if-eqz v5, :cond_55

    .line 1971
    .end local v0           #audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    :cond_52
    :goto_52
    return-void

    .line 1940
    .restart local v0       #audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    :catch_53
    move-exception v2

    .line 1941
    .local v2, e:Landroid/os/RemoteException;
    goto :goto_52

    .line 1944
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_55
    new-instance v3, Lcom/google/android/music/player/AsyncMediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v6, v6, Lcom/google/android/music/LocalDevicePlayback;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-direct {v3, v5, v6}, Lcom/google/android/music/player/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;)V

    .line 1945
    .local v3, next:Lcom/google/android/music/player/AsyncMediaPlayer;
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$16;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAudioSessionId(I)V

    .line 1946
    invoke-virtual {v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAtHomeMediaPlayerConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAtHomeMediaPlayerConfig(Ljava/lang/String;)V

    .line 1947
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/music/dl/ContentIdentifier;

    new-instance v6, Lcom/google/android/music/LocalDevicePlayback$16$1;

    invoke-direct {v6, p0, v1, v3, v4}, Lcom/google/android/music/LocalDevicePlayback$16$1;-><init>(Lcom/google/android/music/LocalDevicePlayback$16;Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/player/AsyncMediaPlayer;I)V

    invoke-virtual {v3, v5, v9, v6}, Lcom/google/android/music/player/AsyncMediaPlayer;->setDataSource(Lcom/google/android/music/dl/ContentIdentifier;ZLcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;)V

    goto :goto_52

    .line 1920
    .end local v0           #audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    .end local v1           #currentPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    .end local v3           #next:Lcom/google/android/music/player/AsyncMediaPlayer;
    .end local v4           #nextpos:I
    :catch_85
    move-exception v5

    goto :goto_c
.end method
