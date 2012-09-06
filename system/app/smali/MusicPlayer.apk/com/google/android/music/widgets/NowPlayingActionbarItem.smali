.class public Lcom/google/android/music/widgets/NowPlayingActionbarItem;
.super Landroid/widget/LinearLayout;
.source "NowPlayingActionbarItem.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mArtist:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mIsAttached:Z

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mSongTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mIsAttached:Z

    .line 83
    new-instance v0, Lcom/google/android/music/widgets/NowPlayingActionbarItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem$1;-><init>(Lcom/google/android/music/widgets/NowPlayingActionbarItem;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/NowPlayingActionbarItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 91
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v1, :cond_a

    .line 118
    :cond_9
    :goto_9
    return-void

    .line 95
    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, songTitle:Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, artistName:Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v9

    .line 99
    .local v9, songList:Lcom/google/android/music/medialist/SongList;
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isAlbumArtInService()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 100
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 113
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mArtist:Landroid/widget/TextView;

    if-nez v4, :cond_7b

    move-object v1, v12

    :goto_3c
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mSongTitle:Landroid/widget/TextView;

    if-nez v10, :cond_80

    move-object v1, v12

    :goto_44
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_47} :catch_48

    goto :goto_9

    .line 115
    .end local v4           #artistName:Ljava/lang/String;
    .end local v9           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v10           #songTitle:Ljava/lang/String;
    :catch_48
    move-exception v7

    .line 116
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "NowPlayingActionbar"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 102
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v4       #artistName:Ljava/lang/String;
    .restart local v9       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v10       #songTitle:Ljava/lang/String;
    :cond_53
    if-eqz v9, :cond_69

    :try_start_55
    instance-of v1, v9, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v1, :cond_69

    .line 103
    move-object v0, v9

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    move-object v8, v0

    .line 104
    .local v8, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    invoke-virtual {v8}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, url:Ljava/lang/String;
    if-eqz v11, :cond_37

    .line 106
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v1, v11}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    goto :goto_37

    .line 109
    .end local v8           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    .end local v11           #url:Ljava/lang/String;
    :cond_69
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 113
    :cond_7b
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    .line 114
    :cond_80
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_83} :catch_48

    move-result-object v1

    goto :goto_44
.end method


# virtual methods
.method protected declared-synchronized onAttachedToWindow()V
    .registers 4

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mIsAttached:Z

    .line 65
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 70
    monitor-exit p0

    return-void

    .line 63
    .end local v0           #f:Landroid/content/IntentFilter;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 75
    iget-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mIsAttached:Z

    if-eqz v0, :cond_1a

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mIsAttached:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 79
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 81
    :cond_1a
    monitor-exit p0

    return-void

    .line 74
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 53
    const v0, 0x7f10004d

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mArtist:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mSongTitle:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mSongTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-nez v0, :cond_36

    .line 57
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_36
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->updateViews()V

    .line 122
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 127
    return-void
.end method
