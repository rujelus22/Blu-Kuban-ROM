.class public Lcom/google/android/music/AlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;,
        Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCoarse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumList:Landroid/widget/ListView;

.field private mArtistId:J

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mCurrentAlbumId:J

.field private mFragmentTitle:Ljava/lang/CharSequence;

.field private mIsStreamingEnabled:Z

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/AlbumList;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mRestoreScrollPos:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 71
    const-string v0, "AlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    .line 82
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCoarse:I

    .line 83
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 91
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 234
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 332
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$3;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$4;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 734
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$5;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 805
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$6;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/AlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/AlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/AlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/AlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/medialist/AlbumList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method private getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "filter"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    sget-object v1, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/AlbumList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private setTitle()V
    .registers 3

    .prologue
    .line 246
    move-object v0, p0

    .line 248
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/AlbumBrowserActivity$2;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 258
    return-void
.end method


# virtual methods
.method public createContextMusicMenu(Landroid/view/View;I)V
    .registers 19
    .parameter "view"
    .parameter "position"

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 378
    .local v3, albumId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "album"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "artist_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 382
    .local v6, artistId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "hasRemote"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b0

    const/4 v12, 0x1

    .line 386
    .local v12, hasRemote:Z
    :goto_67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "KeepOnId"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b2

    const/4 v13, 0x1

    .line 388
    .local v13, isKept:Z
    :goto_7c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v9, "hasLocal"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b4

    const/4 v14, 0x1

    .line 391
    .local v14, hasLocal:Z
    :goto_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v10

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v15

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v15}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 395
    return-void

    .line 384
    .end local v12           #hasRemote:Z
    .end local v13           #isKept:Z
    .end local v14           #hasLocal:Z
    :cond_b0
    const/4 v12, 0x0

    goto :goto_67

    .line 386
    .restart local v12       #hasRemote:Z
    :cond_b2
    const/4 v13, 0x0

    goto :goto_7c

    .line 388
    .restart local v13       #isKept:Z
    :cond_b4
    const/4 v14, 0x0

    goto :goto_91
.end method

.method public getLoggerScreenString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 225
    const-string v0, "albums"

    .line 226
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v1, :cond_25

    .line 227
    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#forArtist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_25
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_5

    .line 366
    :cond_4
    :goto_4
    return-void

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 360
    sget v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCoarse:I

    if-ltz v0, :cond_1e

    .line 361
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    sget v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCoarse:I

    sget v2, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 362
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCoarse:I

    .line 365
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 15
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, -0x1

    .line 140
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 142
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v10

    .line 143
    .local v10, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 144
    .local v11, intent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2b

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2b
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_4b

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4b
    if-eqz v10, :cond_155

    .line 148
    const-string v0, "selectedAlbumId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 149
    const-string v0, "albumArtistId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 150
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_87

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored artist / album from icicle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_87
    const-string v0, "scrollPos"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRestoreScrollPos:I

    .line 161
    :cond_90
    :goto_90
    if-eqz v10, :cond_191

    .line 162
    const-string v0, "medialist"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 166
    :goto_9c
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    if-nez v0, :cond_ad

    .line 167
    iget-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_19d

    .line 168
    new-instance v0, Lcom/google/android/music/medialist/AllAlbumsList;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AllAlbumsList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 174
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 175
    iget-boolean v0, p1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v0, :cond_c0

    .line 176
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 179
    :cond_c0
    iget-boolean v12, p1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    .line 181
    .local v12, isSubView:Z
    if-eqz v12, :cond_1a8

    .line 182
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    .line 187
    :goto_cd
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    .line 189
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    const v0, 0x7f100006

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 195
    .local v8, albumInfo:Landroid/view/View;
    if-eqz v8, :cond_105

    .line 196
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_105
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    instance-of v0, v0, Lcom/google/android/music/medialist/AllAlbumsList;

    if-eqz v0, :cond_128

    .line 200
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 202
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 208
    :cond_128
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04001d

    iget-object v5, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    new-array v7, v7, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 216
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 220
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0, v9}, Lcom/google/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 221
    return-void

    .line 155
    .end local v8           #albumInfo:Landroid/view/View;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #isSubView:Z
    :cond_155
    const-string v0, "albumArtistId"

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 156
    const-string v0, "selectedAlbumId"

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 157
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_90

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got artist / album from launch intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_90

    .line 164
    :cond_191
    const-string v0, "medialist"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_9c

    .line 170
    :cond_19d
    new-instance v0, Lcom/google/android/music/medialist/ArtistAlbumList;

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/ArtistAlbumList;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_ad

    .line 184
    .restart local v12       #isSubView:Z
    :cond_1a8
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mView:Landroid/view/View;

    goto/16 :goto_cd
.end method

.method public onAlbumChanged(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_9

    .line 429
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 800
    if-eqz p5, :cond_6

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->onAlbumChanged(Ljava/util/List;)V

    .line 803
    :cond_6
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 126
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 128
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 129
    const-string v0, "AlbumBrowser"

    const-string v1, "AlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_20
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 133
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    if-eqz v1, :cond_1c

    .line 292
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCoarse:I

    .line 293
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 298
    .end local v0           #cv:Landroid/view/View;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_2a

    .line 304
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 306
    :cond_2a
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    iput-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 308
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 312
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 313
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 406
    :goto_8
    return-void

    .line 405
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v1, p4, p5}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    goto :goto_8
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/AlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;I)V

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 270
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_17

    .line 272
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    :goto_16
    return-void

    .line 274
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mFragmentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 778
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    .line 779
    .local v1, musicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v0

    .line 780
    .local v0, isOfflineManageMusicMode:Z
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v2, v1, :cond_28

    .line 781
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v2, :cond_1a

    .line 782
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 783
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 786
    :cond_1a
    iput-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 788
    if-eqz v0, :cond_28

    .line 789
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 790
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v2, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 793
    :cond_28
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_31

    .line 794
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 796
    :cond_31
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 345
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 346
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 327
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_3a

    .line 328
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 330
    :cond_3a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 283
    const-string v0, "selectedAlbumId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    const-string v0, "albumArtistId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    const-string v0, "scrollPos"

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    return-void
.end method
