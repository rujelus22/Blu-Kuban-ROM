.class Lcom/sec/android/app/music/CorePlayerService$ServiceStub;
.super Lcom/sec/android/app/music/ICorePlayerService$Stub;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/music/CorePlayerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 4566
    invoke-direct {p0}, Lcom/sec/android/app/music/ICorePlayerService$Stub;-><init>()V

    .line 4567
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 4568
    return-void
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .registers 4
    .parameter "list"
    .parameter "action"

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->enqueue([JI)V

    .line 4691
    return-void
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4667
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .registers 3

    .prologue
    .line 4711
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMedia()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4783
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    .line 4785
    .local v0, musicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    if-eqz v0, :cond_1c

    .line 4786
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 4787
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4789
    .end local v1           #uri:Landroid/net/Uri;
    :goto_19
    return-object v2

    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1a
    move-object v2, v3

    .line 4787
    goto :goto_19

    .end local v1           #uri:Landroid/net/Uri;
    :cond_1c
    move-object v2, v3

    .line 4789
    goto :goto_19
.end method

.method public getCurrentMediaListType()I
    .registers 2

    .prologue
    .line 4810
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrent_ID()J
    .registers 3

    .prologue
    .line 4684
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrent_ID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexOfPlayList()I
    .registers 2

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getItemCountFromDB()I
    .registers 2

    .prologue
    .line 4833
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v0

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMountedCount()I
    .registers 2

    .prologue
    .line 4766
    const/4 v0, 0x0

    return v0
.end method

.method public getNext(Z)Landroid/net/Uri;
    .registers 3
    .parameter "ignoreRepeatOne"

    .prologue
    .line 4912
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4705
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrev()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 4907
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .registers 2

    .prologue
    .line 4695
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRealEQdata([I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4867
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->getSubRealEQdata([I)V

    .line 4868
    return-void
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 4761
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTabFrom()I
    .registers 2

    .prologue
    .line 4592
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getTabFrom()I

    move-result v0

    return v0
.end method

.method public getTotalMediaCount()I
    .registers 2

    .prologue
    .line 4828
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4662
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideNotificationInfo()V
    .registers 2

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 4897
    return-void
.end method

.method public initIndex()V
    .registers 1

    .prologue
    .line 4903
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 4886
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPausedByTransientLossOfFocus()Z
    .registers 2

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPausedByTransientLossOfFocus()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 4627
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .registers 2

    .prologue
    .line 4881
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .registers 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 4701
    return-void
.end method

.method public next()V
    .registers 3

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->next(Z)Z

    .line 4658
    return-void
.end method

.method public offRealEQdata()V
    .registers 2

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->offSubRealEQdata()V

    .line 4873
    return-void
.end method

.method public open([JI)V
    .registers 4
    .parameter "list"
    .parameter "position"

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->open([JI)V

    .line 4578
    return-void
.end method

.method public openCurrent(Z)V
    .registers 3
    .parameter "bPlay"

    .prologue
    .line 4604
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4605
    if-eqz p1, :cond_1f

    .line 4606
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 4612
    :cond_1f
    :goto_1f
    return-void

    .line 4608
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$3800(Lcom/sec/android/app/music/CorePlayerService;)Z

    .line 4609
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 4610
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_1f
.end method

.method public openFile(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 4572
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    .line 4573
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 4643
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 4647
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 4648
    return-void
.end method

.method public playIt(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "media"
    .parameter "toNext"

    .prologue
    .line 4917
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->playIt(Landroid/net/Uri;Z)V

    .line 4918
    return-void
.end method

.method public playSeek(J)V
    .registers 4
    .parameter "seekTime"

    .prologue
    .line 4778
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->playAfterSeek(J)V

    .line 4779
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 4716
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareWithLastPlayedFile(Z)V
    .registers 5
    .parameter "bPlay"

    .prologue
    .line 4862
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    const-wide/16 v1, 0x0

    #calls: Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V
    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$3900(Lcom/sec/android/app/music/CorePlayerService;ZJ)V

    .line 4863
    return-void
.end method

.method public prev()V
    .registers 2

    .prologue
    .line 4652
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->prev()V

    .line 4653
    return-void
.end method

.method public removeTrack(J)I
    .registers 4
    .parameter "id"

    .prologue
    .line 4751
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .registers 4
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4741
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public removeTracksSelectedList([I)I
    .registers 3
    .parameter "list"

    .prologue
    .line 4746
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/CorePlayerService;->removeTracks([I)I

    move-result v0

    return v0
.end method

.method public reorderQueueItem([JI)V
    .registers 4
    .parameter "list"
    .parameter "position"

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->reorderQueueItem([JI)V

    .line 4583
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setListFrom(ILjava/lang/String;)V
    .registers 4
    .parameter "tabFrom"
    .parameter "keyWord"

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->setListFrom(ILjava/lang/String;)V

    .line 4588
    return-void
.end method

.method public setPlayIteratorWithUri(Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 4839
    const/4 v1, 0x1

    .line 4841
    .local v1, result:Z
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3402(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4842
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4844
    const-string v2, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlayIterator : uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    if-nez p1, :cond_33

    .line 4846
    const/4 v1, 0x0

    .line 4849
    :cond_33
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v3

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I
    invoke-static {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3102(Lcom/sec/android/app/music/CorePlayerService;I)I

    .line 4850
    if-eqz v1, :cond_8b

    .line 4851
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 4852
    .local v0, playUri:Landroid/net/Uri;
    if-eqz v0, :cond_8b

    .line 4853
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$600(Lcom/sec/android/app/music/CorePlayerService;Z)V

    .line 4854
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 4855
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 4858
    .end local v0           #playUri:Landroid/net/Uri;
    :cond_8b
    return-void
.end method

.method public setQueuePosition(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 4623
    return-void
.end method

.method public setR2VSMode()V
    .registers 2

    .prologue
    .line 4817
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setEq()V
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$1700(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 4818
    return-void
.end method

.method public setR2VSUserEQ(I[I)V
    .registers 4
    .parameter "mode"
    .parameter "eq"

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4823
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->internalSetUserEQ(I[I)V

    .line 4824
    :cond_21
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 4756
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/CorePlayerService;->setRepeatMode(I)V

    .line 4757
    return-void
.end method

.method public setShuffleMode(I)V
    .registers 4
    .parameter "shufflemode"

    .prologue
    .line 4731
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    if-nez p1, :cond_13

    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->setShuffleMode(Ljava/lang/Boolean;)V

    .line 4732
    return-void

    .line 4731
    :cond_13
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public setUlpBypass(Z)V
    .registers 4
    .parameter "bUlpByPass"

    .prologue
    .line 4922
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/music/CorePlayerService;->access$1800(Lcom/sec/android/app/music/CorePlayerService;ZZ)V

    .line 4923
    return-void
.end method

.method public showNotificationInfo()V
    .registers 2

    .prologue
    .line 4891
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    .line 4892
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 4637
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->stop()V

    .line 4638
    return-void
.end method
