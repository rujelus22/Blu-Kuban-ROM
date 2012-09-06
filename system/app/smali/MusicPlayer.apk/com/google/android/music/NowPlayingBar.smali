.class public Lcom/google/android/music/NowPlayingBar;
.super Landroid/widget/RelativeLayout;
.source "NowPlayingBar.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

.field private final mBottomNowPlayingBackground:Landroid/graphics/drawable/Drawable;

.field private mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

.field private mContext:Landroid/content/Context;

.field private mFullRefresh:Z

.field private mGotService:Z

.field private mIsAttached:Z

.field private mIsVisible:Z

.field private mMusicMode:I

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRefreshDelayMs:J

.field private final mRefreshHandler:Landroid/os/Handler;

.field private mTmpVisibilityDuringAnimation:I

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "NowPlayingBar"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/NowPlayingBar;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 54
    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 64
    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 314
    new-instance v1, Lcom/google/android/music/NowPlayingBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/NowPlayingBar$3;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    .line 462
    new-instance v1, Lcom/google/android/music/NowPlayingBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/NowPlayingBar$4;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mBottomNowPlayingBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/NowPlayingBar;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/music/NowPlayingBar;->superSetVisibility(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/NowPlayingBar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/NowPlayingBar;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/music/NowPlayingBar;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/NowPlayingBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->refresh()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/NowPlayingBar;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    return-void
.end method

.method private prepButton(IZ)Z
    .registers 6
    .parameter "id"
    .parameter "addFadingBG"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    if-eqz p2, :cond_15

    .line 125
    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_15
    const/4 v1, 0x1

    .line 129
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private queueNextRefresh(J)V
    .registers 7
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 301
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    if-nez v1, :cond_6

    .line 312
    :cond_5
    :goto_5
    return-void

    .line 306
    :cond_6
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    .line 309
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private refresh()I
    .registers 21

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-nez v2, :cond_8

    .line 334
    const/4 v2, -0x1

    .line 420
    :goto_7
    return v2

    .line 337
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    if-eqz v2, :cond_c8

    .line 338
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_11b

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 339
    const v2, 0x7f100002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 340
    .local v18, title:Landroid/widget/TextView;
    const v2, 0x7f10004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 341
    .local v8, artist:Landroid/widget/TextView;
    const v2, 0x7f10002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 343
    .local v1, albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 344
    if-eqz v18, :cond_50

    .line 345
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_50
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, artistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    :cond_67
    if-eqz v8, :cond_6c

    .line 352
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_6c
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, albumName:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    :cond_83
    if-eqz v1, :cond_a4

    .line 360
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    .line 361
    .local v17, songList:Lcom/google/android/music/medialist/SongList;
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isAlbumArtInService()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 362
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 384
    .end local v4           #artistName:Ljava/lang/String;
    .end local v7           #albumName:Ljava/lang/String;
    .end local v17           #songList:Lcom/google/android/music/medialist/SongList;
    :cond_a4
    :goto_a4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/NowPlayingBar;->updatePlayPause()V

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/NowPlayingBar;->updateNowPlayingAppearance()V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    if-eqz v2, :cond_c3

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 391
    :cond_c3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 397
    .end local v1           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v8           #artist:Landroid/widget/TextView;
    .end local v18           #title:Landroid/widget/TextView;
    :cond_c8
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v15

    .line 398
    .local v15, pos:J
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->duration()J

    move-result-wide v9

    .line 399
    .local v9, duration:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gtz v2, :cond_125

    .line 400
    const/4 v2, -0x1

    goto/16 :goto_7

    .line 365
    .end local v9           #duration:J
    .end local v15           #pos:J
    .restart local v1       #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v4       #artistName:Ljava/lang/String;
    .restart local v7       #albumName:Ljava/lang/String;
    .restart local v8       #artist:Landroid/widget/TextView;
    .restart local v17       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v18       #title:Landroid/widget/TextView;
    :cond_dd
    if-eqz v17, :cond_103

    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v2, :cond_103

    .line 367
    move-object/from16 v0, v17

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    move-object v12, v0

    .line 369
    .local v12, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    invoke-virtual {v12}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v19

    .line 370
    .local v19, url:Ljava/lang/String;
    if-eqz v19, :cond_a4

    .line 371
    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f5} :catch_f6

    goto :goto_a4

    .line 418
    .end local v1           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v4           #artistName:Ljava/lang/String;
    .end local v7           #albumName:Ljava/lang/String;
    .end local v8           #artist:Landroid/widget/TextView;
    .end local v12           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    .end local v17           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v18           #title:Landroid/widget/TextView;
    .end local v19           #url:Ljava/lang/String;
    :catch_f6
    move-exception v11

    .line 419
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "NowPlayingBar"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v2, -0x1

    goto/16 :goto_7

    .line 374
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v1       #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v4       #artistName:Ljava/lang/String;
    .restart local v7       #albumName:Ljava/lang/String;
    .restart local v8       #artist:Landroid/widget/TextView;
    .restart local v17       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v18       #title:Landroid/widget/TextView;
    :cond_103
    :try_start_103
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 379
    .end local v4           #artistName:Ljava/lang/String;
    .end local v7           #albumName:Ljava/lang/String;
    .end local v17           #songList:Lcom/google/android/music/medialist/SongList;
    :cond_10d
    invoke-virtual {v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->clearArtwork()V

    .line 380
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    .line 393
    .end local v1           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v8           #artist:Landroid/widget/TextView;
    .end local v18           #title:Landroid/widget/TextView;
    :cond_11b
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 394
    const/4 v2, -0x1

    goto/16 :goto_7

    .line 402
    .restart local v9       #duration:J
    .restart local v15       #pos:J
    :cond_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_140

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v15

    div-long/2addr v5, v9

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 406
    :cond_140
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    rem-long v5, v15, v5

    sub-long v13, v2, v5

    .line 407
    .local v13, msecToNextRefresh:J
    const-wide/16 v2, 0x14

    cmp-long v2, v13, v2

    if-gez v2, :cond_156

    .line 412
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    .line 414
    :cond_156
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_161

    .line 415
    long-to-int v2, v13

    goto/16 :goto_7

    .line 417
    :cond_161
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J
    :try_end_165
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_165} :catch_f6

    long-to-int v2, v2

    goto/16 :goto_7
.end method

.method private scheduleRefresh(Z)V
    .registers 4
    .parameter "fullRefresh"

    .prologue
    .line 294
    if-eqz p1, :cond_5

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 297
    :cond_5
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    .line 298
    return-void
.end method

.method private superSetVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private updateNowPlayingAppearance()V
    .registers 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 442
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 443
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mAtHomeBottomDarkHoloBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    :goto_1d
    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    return-void

    .line 447
    :cond_21
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mBottomNowPlayingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1d
.end method

.method private updatePlayPause()V
    .registers 4

    .prologue
    .line 426
    :try_start_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-eqz v1, :cond_1e

    .line 427
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 428
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 438
    :cond_1e
    :goto_1e
    return-void

    .line 429
    :cond_1f
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 430
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 435
    :catch_2e
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NowPlayingBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 432
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_2e

    goto :goto_1e
.end method


# virtual methods
.method public getVisibility()I
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 143
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 145
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_7
.end method

.method public onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    .line 82
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 83
    const v1, 0x7f1000b9

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    .line 84
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2a

    .line 85
    new-instance v1, Lcom/google/android/music/BufferProgressListener;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-direct {v1, v2}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 87
    :cond_2a
    iput-boolean v5, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 89
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->getRefreshDelay(Landroid/view/View;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-eqz v1, :cond_62

    .line 99
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 104
    :cond_62
    invoke-direct {p0, v5}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    .line 106
    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/PlayPauseButton;

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 107
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-eqz v1, :cond_87

    .line 108
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v1, p0}, Lcom/google/android/music/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    new-instance v2, Lcom/google/android/music/FadingColorDrawable;

    iget-object v3, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-direct {v2, v3, v4}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_87
    const v1, 0x7f1000b8

    invoke-direct {p0, v1, v5}, Lcom/google/android/music/NowPlayingBar;->prepButton(IZ)Z

    move-result v1

    if-nez v1, :cond_97

    .line 114
    const v1, 0x7f10002d

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/NowPlayingBar;->prepButton(IZ)Z

    .line 116
    :cond_97
    const v1, 0x7f100066

    invoke-direct {p0, v1, v5}, Lcom/google/android/music/NowPlayingBar;->prepButton(IZ)Z

    .line 117
    const v1, 0x7f100065

    invoke-direct {p0, v1, v5}, Lcom/google/android/music/NowPlayingBar;->prepButton(IZ)Z

    .line 118
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 198
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v2, :cond_5

    .line 238
    :goto_4
    return-void

    .line 202
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 204
    .local v1, id:I
    sparse-switch v1, :sswitch_data_70

    .line 232
    :try_start_c
    const-string v2, "NowPlayingBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: unexpected view id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_24} :catch_25

    goto :goto_4

    .line 235
    :catch_25
    move-exception v0

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NowPlayingBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_30
    :try_start_30
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->next()V

    goto :goto_4

    .line 209
    :sswitch_36
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->prev()V

    goto :goto_4

    .line 212
    :sswitch_3c
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 213
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->stop()V

    goto :goto_4

    .line 214
    :cond_4a
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 215
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->pause()V

    goto :goto_4

    .line 217
    :cond_58
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->play()V

    goto :goto_4

    .line 225
    :sswitch_5e
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-nez v2, :cond_6a

    .line 226
    const-string v2, "NowPlayingBar"

    const-string v3, "The MusicStateController has not been set yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 228
    :cond_6a
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_6f} :catch_25

    goto :goto_4

    .line 204
    :sswitch_data_70
    .sparse-switch
        0x7f100002 -> :sswitch_5e
        0x7f10002d -> :sswitch_5e
        0x7f10004d -> :sswitch_5e
        0x7f100064 -> :sswitch_3c
        0x7f100065 -> :sswitch_36
        0x7f100066 -> :sswitch_30
        0x7f1000b8 -> :sswitch_5e
        0x7f1000ba -> :sswitch_5e
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 245
    iget-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v0, :cond_30

    .line 246
    iput-boolean v2, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    if-eqz v0, :cond_1f

    .line 249
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 250
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0}, Lcom/google/android/music/BufferProgressListener;->destroy()V

    .line 251
    iput-object v3, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 253
    :cond_1f
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 254
    invoke-direct {p0, v2}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-eqz v0, :cond_30

    .line 256
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 259
    :cond_30
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 260
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v0

    .line 456
    .local v0, musicMode:I
    iget v1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicMode:I

    if-eq v1, v0, :cond_f

    .line 457
    iput v0, p0, Lcom/google/android/music/NowPlayingBar;->mMusicMode:I

    .line 458
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->updateNowPlayingAppearance()V

    .line 460
    :cond_f
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 284
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 285
    invoke-direct {p0, v0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    .line 286
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 290
    invoke-direct {p0, v0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    .line 291
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 264
    sparse-switch p2, :sswitch_data_1c

    .line 276
    const-string v0, "NowPlayingBar"

    const-string v1, "unknown visibility value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_c
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 280
    return-void

    .line 267
    :sswitch_10
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 268
    invoke-direct {p0, v0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    goto :goto_c

    .line 272
    :sswitch_16
    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 273
    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh(Z)V

    goto :goto_c

    .line 264
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_16
        0x4 -> :sswitch_10
        0x8 -> :sswitch_10
    .end sparse-switch
.end method

.method public setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 2
    .parameter "musicStateController"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 134
    return-void
.end method

.method public setVisibility(I)V
    .registers 12
    .parameter "newVisibility"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 195
    :goto_6
    return-void

    .line 154
    :cond_7
    const/4 v2, 0x4

    if-ne p1, v2, :cond_12

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only GONE and VISIBLE are valid visibilites for the NowPlayingBar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_12
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 160
    const/16 v2, 0x8

    if-ne p1, v2, :cond_37

    .line 161
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 164
    .local v0, animOut:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 165
    new-instance v2, Lcom/google/android/music/NowPlayingBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/NowPlayingBar$1;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .line 178
    .end local v0           #animOut:Landroid/view/animation/TranslateAnimation;
    :cond_37
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 181
    .local v1, animIn:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 182
    new-instance v2, Lcom/google/android/music/NowPlayingBar$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/NowPlayingBar$2;-><init>(Lcom/google/android/music/NowPlayingBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method
