.class public Lcom/google/android/music/NowPlayingBar;
.super Landroid/widget/RelativeLayout;
.source "NowPlayingBar.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

.field private mContext:Landroid/app/Activity;

.field private mFullRefresh:Z

.field private mGotService:Z

.field private mIsAttached:Z

.field private mIsVisible:Z

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
    .line 40
    const-string v0, "NowPlayingBar"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/NowPlayingBar;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 45
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 283
    new-instance v0, Lcom/google/android/music/NowPlayingBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/NowPlayingBar$3;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/google/android/music/NowPlayingBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/NowPlayingBar$4;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/NowPlayingBar;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/NowPlayingBar;->superSetVisibility(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/NowPlayingBar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/NowPlayingBar;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/music/NowPlayingBar;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/NowPlayingBar;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->refresh()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/NowPlayingBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/NowPlayingBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    return-void
.end method

.method private addClickListener(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_9
    return-void
.end method

.method private queueNextRefresh(J)V
    .registers 7
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 271
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    if-nez v1, :cond_6

    .line 281
    :cond_5
    :goto_5
    return-void

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    if-eqz v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private refresh()I
    .registers 22

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 303
    const/16 v17, -0x1

    .line 377
    :goto_a
    return v17

    .line 306
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    move/from16 v17, v0

    if-eqz v17, :cond_ca

    .line 307
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v17, :cond_fe

    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v17

    if-eqz v17, :cond_fe

    .line 308
    const/high16 v17, 0x7f10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 309
    .local v15, title:Landroid/widget/TextView;
    const v17, 0x7f100005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 310
    .local v4, artist:Landroid/widget/TextView;
    if-eqz v15, :cond_45

    .line 311
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_45
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v17

    if-eqz v17, :cond_b0

    .line 315
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, artistName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_66

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0d0064

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    :cond_66
    if-eqz v4, :cond_6b

    .line 320
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_6b
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, albumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_84

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0d0065

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_84
    const v17, 0x7f100018

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 329
    .local v2, albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    if-eqz v2, :cond_b0

    .line 330
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v14

    .line 331
    .local v14, songList:Lcom/google/android/music/medialist/SongList;
    if-eqz v14, :cond_e0

    instance-of v0, v14, Lcom/google/android/music/medialist/ExternalDomainSongList;

    move/from16 v17, v0

    if-eqz v17, :cond_e0

    .line 332
    move-object v0, v14

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    move-object v9, v0

    .line 333
    .local v9, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    invoke-virtual {v9}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v16

    .line 334
    .local v16, url:Ljava/lang/String;
    if-eqz v16, :cond_b0

    .line 335
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    .line 344
    .end local v2           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v3           #albumName:Ljava/lang/String;
    .end local v5           #artistName:Ljava/lang/String;
    .end local v9           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v16           #url:Ljava/lang/String;
    :cond_b0
    :goto_b0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/NowPlayingBar;->updatePlayPause()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v18 .. v18}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 347
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 354
    .end local v4           #artist:Landroid/widget/TextView;
    .end local v15           #title:Landroid/widget/TextView;
    :cond_ca
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v12

    .line 355
    .local v12, pos:J
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->duration()J

    move-result-wide v6

    .line 356
    .local v6, duration:J
    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    if-gtz v17, :cond_10b

    .line 357
    const/16 v17, -0x1

    goto/16 :goto_a

    .line 338
    .end local v6           #duration:J
    .end local v12           #pos:J
    .restart local v2       #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v3       #albumName:Ljava/lang/String;
    .restart local v4       #artist:Landroid/widget/TextView;
    .restart local v5       #artistName:Ljava/lang/String;
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v15       #title:Landroid/widget/TextView;
    :cond_e0
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_eb} :catch_ec

    goto :goto_b0

    .line 375
    .end local v2           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #artist:Landroid/widget/TextView;
    .end local v5           #artistName:Ljava/lang/String;
    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v15           #title:Landroid/widget/TextView;
    :catch_ec
    move-exception v8

    .line 376
    .local v8, e:Landroid/os/RemoteException;
    const-string v17, "NowPlayingBar"

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/16 v17, -0x1

    goto/16 :goto_a

    .line 350
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_fe
    const/16 v17, 0x8

    :try_start_100
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 351
    const/16 v17, -0x1

    goto/16 :goto_a

    .line 359
    .restart local v6       #duration:J
    .restart local v12       #pos:J
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    move-object/from16 v17, v0

    if-eqz v17, :cond_132

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    move-object/from16 v17, v0

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v12

    div-long v18, v18, v6

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 363
    :cond_132
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    move-wide/from16 v19, v0

    rem-long v19, v12, v19

    sub-long v10, v17, v19

    .line 364
    .local v10, msecToNextRefresh:J
    const-wide/16 v17, 0x14

    cmp-long v17, v10, v17

    if-gez v17, :cond_14c

    .line 369
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    .line 371
    :cond_14c
    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v17

    if-eqz v17, :cond_159

    .line 372
    long-to-int v0, v10

    move/from16 v17, v0

    goto/16 :goto_a

    .line 374
    :cond_159
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    move-wide/from16 v17, v0
    :try_end_15f
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_15f} :catch_ec

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_a
.end method

.method private scheduleRefresh()V
    .registers 3

    .prologue
    .line 267
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    .line 268
    return-void
.end method

.method private superSetVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    return-void
.end method

.method private updatePlayPause()V
    .registers 4

    .prologue
    .line 383
    :try_start_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-eqz v1, :cond_1e

    .line 384
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 385
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 395
    :cond_1e
    :goto_1e
    return-void

    .line 386
    :cond_1f
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 387
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 392
    :catch_2e
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NowPlayingBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 389
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
    .line 121
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 122
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 124
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_7
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    .line 69
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 70
    const v1, 0x7f1000a0

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    .line 71
    new-instance v1, Lcom/google/android/music/BufferProgressListener;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-direct {v1, v2}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 74
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->getRefreshDelay(Landroid/view/View;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshDelayMs:J

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 88
    const v1, 0x7f10002c

    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/PlayPauseButton;

    iput-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 89
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-eqz v1, :cond_6e

    .line 90
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v1, p0}, Lcom/google/android/music/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_6e
    const v1, 0x7f1000a1

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 94
    const/high16 v1, 0x7f10

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 95
    const v1, 0x7f100005

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 96
    const v1, 0x7f100018

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 97
    const v1, 0x7f100019

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 98
    const v1, 0x7f10002d

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 99
    const v1, 0x7f10002b

    invoke-direct {p0, v1}, Lcom/google/android/music/NowPlayingBar;->addClickListener(I)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 177
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v2, :cond_5

    .line 217
    :goto_4
    return-void

    .line 181
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 183
    .local v1, id:I
    sparse-switch v1, :sswitch_data_70

    .line 211
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

    .line 214
    :catch_25
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NowPlayingBar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_30
    :try_start_30
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->next()V

    goto :goto_4

    .line 188
    :sswitch_36
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->prev()V

    goto :goto_4

    .line 191
    :sswitch_3c
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 192
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->stop()V

    goto :goto_4

    .line 193
    :cond_4a
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 194
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->pause()V

    goto :goto_4

    .line 196
    :cond_58
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->play()V

    goto :goto_4

    .line 204
    :sswitch_5e
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    if-nez v2, :cond_6a

    .line 205
    const-string v2, "NowPlayingBar"

    const-string v3, "The MusicStateController has not been set yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 207
    :cond_6a
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startNowPlayingScreen()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_6f} :catch_25

    goto :goto_4

    .line 183
    :sswitch_data_70
    .sparse-switch
        0x7f100000 -> :sswitch_5e
        0x7f100005 -> :sswitch_5e
        0x7f100018 -> :sswitch_5e
        0x7f100019 -> :sswitch_5e
        0x7f10002b -> :sswitch_36
        0x7f10002c -> :sswitch_3c
        0x7f10002d -> :sswitch_30
        0x7f1000a1 -> :sswitch_5e
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v0, :cond_23

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 226
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0}, Lcom/google/android/music/BufferProgressListener;->destroy()V

    .line 229
    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 230
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 231
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 233
    :cond_23
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 234
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 258
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 259
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 263
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 264
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 238
    sparse-switch p2, :sswitch_data_1c

    .line 250
    const-string v0, "NowPlayingBar"

    const-string v1, "unknown visibility value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 254
    return-void

    .line 241
    :sswitch_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 242
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    goto :goto_a

    .line 246
    :sswitch_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 247
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    goto :goto_a

    .line 238
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_15
        0x4 -> :sswitch_e
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 2
    .parameter "musicStateController"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 111
    return-void
.end method

.method public setVisibility(I)V
    .registers 12
    .parameter "newVisibility"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 174
    :goto_6
    return-void

    .line 133
    :cond_7
    const/4 v2, 0x4

    if-ne p1, v2, :cond_12

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only GONE and VISIBLE are valid visibilites for the NowPlayingBar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_12
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 139
    const/16 v2, 0x8

    if-ne p1, v2, :cond_37

    .line 140
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

    .line 143
    .local v0, animOut:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 144
    new-instance v2, Lcom/google/android/music/NowPlayingBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/NowPlayingBar$1;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .line 157
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

    .line 160
    .local v1, animIn:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    new-instance v2, Lcom/google/android/music/NowPlayingBar$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/NowPlayingBar$2;-><init>(Lcom/google/android/music/NowPlayingBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method
