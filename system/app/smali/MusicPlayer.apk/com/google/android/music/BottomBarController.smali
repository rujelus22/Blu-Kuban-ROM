.class public Lcom/google/android/music/BottomBarController;
.super Ljava/lang/Object;
.source "BottomBarController.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# instance fields
.field private mActionbarController:Lcom/google/android/music/ActionbarController;

.field private final mBottomBarChangeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/BottomBarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

.field private mCurrentPlaylistReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentPlaylistReceiverRegistered:Z

.field private mHasValidPlaylist:Z

.field private mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

.field private mMusicMode:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

.field private final mNowPlayingFilter:Landroid/content/IntentFilter;

.field private mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private final mUpdateBottomBarRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mHasValidPlaylist:Z

    .line 35
    iput v0, p0, Lcom/google/android/music/BottomBarController;->mMusicMode:I

    .line 37
    iput-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiverRegistered:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    .line 124
    new-instance v0, Lcom/google/android/music/BottomBarController$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/BottomBarController$1;-><init>(Lcom/google/android/music/BottomBarController;)V

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mUpdateBottomBarRunnable:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    .line 239
    new-instance v0, Lcom/google/android/music/BottomBarController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/BottomBarController$2;-><init>(Lcom/google/android/music/BottomBarController;)V

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/BottomBarController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/music/BottomBarController;->mMusicMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/menu/ManageMusicMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/BottomBarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mHasValidPlaylist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/BottomBarController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->useTopBarNowPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/ActionbarController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/NowPlayingBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/BottomBarController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/BottomBarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->notifyBottombarChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/BottomBarController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateHasPlaylist()V

    return-void
.end method

.method private notifyBottombarChanged()V
    .registers 7

    .prologue
    .line 191
    iget-object v4, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v4

    .line 192
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/BottomBarChangeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    .line 194
    .local v2, listener:Lcom/google/android/music/BottomBarChangeListener;
    :try_start_15
    invoke-interface {v2}, Lcom/google/android/music/BottomBarChangeListener;->onBottomBarChanged()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 195
    :catch_19
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :try_start_1a
    const-string v3, "MusicBottombar"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/music/BottomBarChangeListener;
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 200
    return-void
.end method

.method private updateBottomBar()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/BottomBarController;->mUpdateBottomBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method private updateHasPlaylist()V
    .registers 5

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, hasValidPlaylist:Z
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_1b

    .line 101
    :try_start_5
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getQueueSize()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_1e

    move-result v2

    if-lez v2, :cond_1c

    const/4 v1, 0x1

    .line 111
    :goto_16
    iput-boolean v1, p0, Lcom/google/android/music/BottomBarController;->mHasValidPlaylist:Z

    .line 113
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateBottomBar()V

    .line 114
    :cond_1b
    return-void

    .line 101
    :cond_1c
    const/4 v1, 0x0

    goto :goto_16

    .line 103
    :catch_1e
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MusicBottombar"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private useTopBarNowPlaying()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->useActionBarNowPlaying()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBottomBarHeight()I
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/ManageMusicMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 227
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 231
    :goto_15
    return v0

    .line 228
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    invoke-virtual {v0}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    .line 229
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_15

    .line 231
    :cond_30
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;

    invoke-virtual {v0}, Lcom/google/android/music/ActionbarController;->getBottomBarHeight()I

    move-result v0

    goto :goto_15
.end method

.method public onCreate(Landroid/app/Activity;Lcom/google/android/music/menu/ManageMusicMenu;Lcom/google/android/music/NowPlayingBar;Lcom/google/android/music/ActionbarController;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "context"
    .parameter "manageMusicMenu"
    .parameter "nowPlayingBar"
    .parameter "actionBarController"
    .parameter "preferences"

    .prologue
    .line 62
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    .line 67
    iput-object p3, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    .line 68
    iput-object p4, p0, Lcom/google/android/music/BottomBarController;->mActionbarController:Lcom/google/android/music/ActionbarController;

    .line 69
    iput-object p5, p0, Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 70
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 252
    .local v0, musicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicMode()I

    move-result v1

    .line 253
    .local v1, musicMode:I
    iget-object v2, p0, Lcom/google/android/music/BottomBarController;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    invoke-virtual {v2, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 254
    iget v2, p0, Lcom/google/android/music/BottomBarController;->mMusicMode:I

    if-eq v2, v1, :cond_16

    .line 255
    iput v1, p0, Lcom/google/android/music/BottomBarController;->mMusicMode:I

    .line 256
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateBottomBar()V

    .line 258
    :cond_16
    return-void
.end method

.method public declared-synchronized onPause()V
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    iget-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiverRegistered:Z

    if-eqz v0, :cond_14

    .line 84
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiverRegistered:Z

    .line 87
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 88
    monitor-exit p0

    return-void

    .line 82
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/music/BottomBarController;->mNowPlayingFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/BottomBarController;->mCurrentPlaylistReceiverRegistered:Z

    .line 76
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateHasPlaylist()V

    .line 77
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mContext:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/BottomBarController;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 78
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateBottomBar()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 79
    monitor-exit p0

    return-void

    .line 73
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateHasPlaylist()V

    .line 266
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 269
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateBottomBar()V

    .line 262
    return-void
.end method

.method public registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 210
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 212
    invoke-interface {p1}, Lcom/google/android/music/BottomBarChangeListener;->onBottomBarChanged()V

    .line 213
    return-void

    .line 211
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setLayoutConfiguration(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 2
    .parameter "layoutConfig"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/BottomBarController;->mCurrentLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    .line 92
    invoke-direct {p0}, Lcom/google/android/music/BottomBarController;->updateBottomBar()V

    .line 93
    return-void
.end method

.method public unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 217
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/BottomBarController;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
