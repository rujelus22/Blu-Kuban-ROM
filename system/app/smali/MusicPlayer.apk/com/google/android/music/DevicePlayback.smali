.class public abstract Lcom/google/android/music/DevicePlayback;
.super Ljava/lang/Object;
.source "DevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DevicePlayback$1;,
        Lcom/google/android/music/DevicePlayback$State;
    }
.end annotation


# instance fields
.field private mIsActive:Z

.field protected final mService:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method protected constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    .line 23
    return-void
.end method


# virtual methods
.method protected activate()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/DevicePlayback;->mIsActive:Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/music/DevicePlayback;->onActivate()V

    .line 72
    return-void
.end method

.method public abstract clearQueue()V
.end method

.method protected deactivate()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/DevicePlayback;->mIsActive:Z

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/DevicePlayback;->onDeactivate()V

    .line 77
    return-void
.end method

.method public abstract disableGroupPlay()V
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "writer"

    .prologue
    .line 156
    return-void
.end method

.method public abstract duration()J
.end method

.method public abstract getAlbumArtUrl(J)Ljava/lang/String;
.end method

.method public abstract getAlbumId()J
.end method

.method public abstract getAlbumName()Ljava/lang/String;
.end method

.method public abstract getArtistId()J
.end method

.method public abstract getArtistName()Ljava/lang/String;
.end method

.method public abstract getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
.end method

.method public abstract getAudioSessionId()I
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    return-object v0
.end method

.method public abstract getDebugInfo()Ljava/lang/String;
.end method

.method public abstract getErrorType()I
.end method

.method public abstract getLastUserInteractionTime()J
.end method

.method public abstract getMediaList()Lcom/google/android/music/medialist/SongList;
.end method

.method public abstract getPreviewPlayType()I
.end method

.method public abstract getQueuePosition()I
.end method

.method public abstract getQueueSize()I
.end method

.method public abstract getRating()I
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract getSongStoreId()Ljava/lang/String;
.end method

.method public abstract getSortableAlbumArtistName()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/google/android/music/DevicePlayback$State;
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract hasLocal()Z
.end method

.method public abstract hasRemote()Z
.end method

.method public abstract hasValidPlaylist()Z
.end method

.method protected isActive()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/music/DevicePlayback;->mIsActive:Z

    return v0
.end method

.method public abstract isCurrentSongLoaded()Z
.end method

.method public abstract isInErrorState()Z
.end method

.method public abstract isInFatalErrorState()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPreparing()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract next()V
.end method

.method protected final notifyChange(Ljava/lang/String;)V
    .registers 3
    .parameter "what"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 33
    :cond_9
    return-void
.end method

.method protected notifyFailure()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/google/android/music/DevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicPlaybackService;->notifyFailure(Lcom/google/android/music/DevicePlayback;)V

    .line 39
    :cond_9
    return-void
.end method

.method protected onActivate()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method protected onCreate()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method protected onDeactivate()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public abstract open(Lcom/google/android/music/medialist/SongList;IZ)V
.end method

.method public abstract openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playlistLoading()Z
.end method

.method public abstract position()J
.end method

.method public abstract prev()V
.end method

.method protected saveState()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public abstract seek(J)J
.end method

.method public abstract setQueuePosition(I)V
.end method

.method public abstract setRating(I)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract stop()V
.end method

.method public abstract supportsRating()Z
.end method
