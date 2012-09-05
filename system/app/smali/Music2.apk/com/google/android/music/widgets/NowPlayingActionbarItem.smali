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
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 91
    sget-object v8, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v8, :cond_a

    .line 115
    :cond_9
    :goto_9
    return-void

    .line 95
    :cond_a
    :try_start_a
    sget-object v8, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, songTitle:Ljava/lang/String;
    sget-object v8, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, artistName:Ljava/lang/String;
    sget-object v8, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    .line 99
    .local v4, songList:Lcom/google/android/music/medialist/SongList;
    if-eqz v4, :cond_4c

    instance-of v8, v4, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v8, :cond_4c

    .line 100
    move-object v0, v4

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    move-object v3, v0

    .line 101
    .local v3, externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    invoke-virtual {v3}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_31

    .line 103
    iget-object v8, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v8, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    .line 110
    .end local v3           #externalSongList:Lcom/google/android/music/medialist/ExternalDomainSongList;
    .end local v6           #url:Ljava/lang/String;
    :cond_31
    :goto_31
    iget-object v9, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mArtist:Landroid/widget/TextView;

    if-nez v1, :cond_5e

    move-object v8, v7

    :goto_36
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v8, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mSongTitle:Landroid/widget/TextView;

    if-nez v5, :cond_63

    :goto_3d
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_40} :catch_41

    goto :goto_9

    .line 112
    .end local v1           #artistName:Ljava/lang/String;
    .end local v4           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v5           #songTitle:Ljava/lang/String;
    :catch_41
    move-exception v2

    .line 113
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "NowPlayingActionbar"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 106
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #artistName:Ljava/lang/String;
    .restart local v4       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v5       #songTitle:Ljava/lang/String;
    :cond_4c
    :try_start_4c
    iget-object v8, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v9, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v9}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v9

    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v11}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 110
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_36

    .line 111
    :cond_63
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_66} :catch_41

    move-result-object v7

    goto :goto_3d
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
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 53
    const v0, 0x7f100005

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->mArtist:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f100042

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
    .line 118
    invoke-direct {p0}, Lcom/google/android/music/widgets/NowPlayingActionbarItem;->updateViews()V

    .line 119
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 124
    return-void
.end method
