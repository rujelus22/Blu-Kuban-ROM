.class public Lcom/google/android/music/GenreAlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static mLastListPosCoarse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentGenreId:J

.field private mCurrentGenreName:Ljava/lang/String;

.field private mGenreCursor:Landroid/database/Cursor;

.field private mIsStreamingEnabled:Z

.field private mList:Lcom/google/android/music/MusicExpandableListView;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mRestoreExpandedGroups:[I

.field private mRestoreScrollPos:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 79
    const-string v0, "GenreAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    .line 95
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCoarse:I

    .line 96
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 357
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 515
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 1087
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$5;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1100
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/GenreAlbumBrowserActivity;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/GenreAlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/GenreAlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 558
    if-eqz p1, :cond_f

    .line 559
    const-string v1, "GenreAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v1, v2, :cond_2b

    const/4 v7, 0x1

    .line 565
    .local v7, isPrimary:Z
    :goto_1c
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    .local v0, ret:Landroid/database/Cursor;
    return-object v0

    .line 562
    .end local v0           #ret:Landroid/database/Cursor;
    .end local v7           #isPrimary:Z
    :cond_2b
    const/4 v7, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public createContextMusicMenu(Landroid/view/View;)V
    .registers 35
    .parameter "view"

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/music/MusicExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v28

    .line 441
    .local v28, flatListPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/google/android/music/MusicExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v31

    .line 442
    .local v31, packedPosition:J
    invoke-static/range {v31 .. v32}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v30

    .line 443
    .local v30, itemtype:I
    invoke-static/range {v31 .. v32}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v29

    .line 444
    .local v29, gpos:I
    invoke-static/range {v31 .. v32}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v27

    .line 447
    .local v27, cpos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v29, v29, v3

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 450
    .local v4, genreId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, genreName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v10, 0x1

    .line 452
    .local v10, genreHasLocal:Z
    :goto_51
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v7

    .line 454
    .local v7, location:[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 456
    .local v2, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    if-nez v30, :cond_81

    .line 457
    const/4 v3, -0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_6e

    .line 459
    const-string v3, "GenreAlbumBrowser"

    const-string v8, "no group"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_6b
    :goto_6b
    return-void

    .line 451
    .end local v2           #contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    .end local v7           #location:[I
    .end local v10           #genreHasLocal:Z
    :cond_6c
    const/4 v10, 0x0

    goto :goto_51

    .line 463
    .restart local v2       #contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    .restart local v7       #location:[I
    .restart local v10       #genreHasLocal:Z
    :cond_6e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v11

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_6b

    .line 467
    :cond_81
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_6b

    .line 468
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_93

    .line 470
    const-string v3, "GenreAlbumBrowser"

    const-string v8, "no child"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 473
    :cond_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v26

    .line 474
    .local v26, c:Landroid/database/Cursor;
    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 476
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 478
    .local v13, albumId:J
    const-wide/16 v8, -0x1

    cmp-long v3, v13, v8

    if-nez v3, :cond_c2

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v11

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_6b

    .line 483
    :cond_c2
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 484
    .local v15, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v29, v29, v3

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 488
    .local v18, artistNameForAlbum:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_126

    const/16 v22, 0x1

    .line 489
    .local v22, hasRemote:Z
    :goto_f1
    const/4 v3, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_129

    const/16 v23, 0x1

    .line 490
    .local v23, isKept:Z
    :goto_fc
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 491
    .local v16, artistId:J
    const/4 v3, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_12c

    const/16 v24, 0x1

    .line 492
    .local v24, hasLocal:Z
    :goto_10e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v25

    move-object v11, v2

    move-object/from16 v12, p0

    move-object/from16 v20, v7

    invoke-virtual/range {v11 .. v25}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_6b

    .line 488
    .end local v16           #artistId:J
    .end local v22           #hasRemote:Z
    .end local v23           #isKept:Z
    .end local v24           #hasLocal:Z
    :cond_126
    const/16 v22, 0x0

    goto :goto_f1

    .line 489
    .restart local v22       #hasRemote:Z
    :cond_129
    const/16 v23, 0x0

    goto :goto_fc

    .line 491
    .restart local v16       #artistId:J
    .restart local v23       #isKept:Z
    :cond_12c
    const/16 v24, 0x0

    goto :goto_10e
.end method

.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    const-string v0, "genres"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-nez v0, :cond_11

    .line 377
    if-eqz p1, :cond_10

    .line 378
    const-string v0, "GenreAlbumBrowser"

    const-string v1, "null adapter, non-null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_10
    :goto_10
    return-void

    .line 383
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 385
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 390
    sget v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCoarse:I

    if-ltz v0, :cond_10

    .line 391
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    sget v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCoarse:I

    sget v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicExpandableListView;->setSelectionFromTop(II)V

    .line 392
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCoarse:I

    goto :goto_10
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 8
    .parameter "state"

    .prologue
    const-wide/16 v4, -0x1

    .line 175
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 176
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 178
    .local v1, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_8d

    .line 179
    const-string v2, "autoscrollGenreId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 180
    const-string v2, "autoscrollGenreName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 181
    const-string v2, "autoscrollAlbumId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 182
    const-string v2, "autoscrollAlbumName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 183
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_71

    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored Genre / album from icicle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_71
    const-string v2, "expandedGroups"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 188
    const-string v2, "scrollPos"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 200
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 201
    return-void

    .line 191
    :cond_8d
    const-string v2, "autoscrollGenreId"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 192
    const-string v2, "autoscrollAlbumName"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 193
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_82

    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Genre / album from launchIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 2
    .parameter "actionbarConfig"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V

    .line 213
    return-void
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
    .line 510
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 511
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 261
    if-eqz p5, :cond_6

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onAlbumChanged(Ljava/util/List;)V

    .line 264
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 13
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-nez v3, :cond_7

    .line 420
    :cond_6
    :goto_6
    return v1

    .line 400
    :cond_7
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChildrenCount(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 404
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 405
    iput-wide p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 408
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-gez v3, :cond_49

    .line 410
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 412
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v5

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 419
    .local v0, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    move v1, v2

    .line 420
    goto :goto_6

    .line 416
    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_49
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v0, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_40
.end method

.method public onCreate()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 125
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 126
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    const-string v0, "GenreAlbumBrowser"

    const-string v1, "GenreAlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 131
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 134
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 137
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicExpandableListView;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    .line 138
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setTextFilterEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setCacheColorHint(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 144
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 145
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollBarEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollbarPosition(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setScrollBarStyle(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 153
    :cond_7c
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f040020

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    const v8, 0x7f04001e

    new-array v9, v3, [Ljava/lang/String;

    new-array v10, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 163
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 165
    invoke-direct {p0, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 166
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0, v11}, Lcom/google/android/music/GenreAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    if-eqz v3, :cond_1c

    .line 289
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCoarse:I

    .line 290
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/MusicExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 291
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_1c

    .line 292
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    .line 296
    .end local v2           #cv:Landroid/view/View;
    :cond_1c
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 297
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 303
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v3, :cond_3d

    .line 304
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 305
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 309
    .local v0, adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-virtual {v0, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 312
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 323
    .end local v0           #adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_3d
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object v3, v4

    check-cast v3, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 324
    iput-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 326
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 327
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 328
    return-void
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
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 206
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 207
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 241
    .local v0, offlineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v1, v0, :cond_26

    .line 242
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_16

    .line 243
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 244
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 247
    :cond_16
    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 248
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_26

    .line 249
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 254
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v1, :cond_2f

    .line 255
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 257
    :cond_2f
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 371
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 372
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v1}, Lcom/google/android/music/MusicExpandableListView;->invalidateViews()V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v1, :cond_38

    .line 344
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v1, :cond_45

    .line 348
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v1, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 350
    :cond_45
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outcicle"

    .prologue
    .line 272
    const-string v2, "autoscrollAlbumId"

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 273
    const-string v2, "autoscrollAlbumName"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "autoscrollGenreId"

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 275
    const-string v2, "autoscrollGenreName"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v2}, Lcom/google/android/music/MusicExpandableListView;->getExpandedPositions()Ljava/util/Set;

    move-result-object v1

    .line 278
    .local v1, expandedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 279
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 280
    .local v0, arr:[I
    const-string v2, "expandedGroups"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 282
    .end local v0           #arr:[I
    :cond_33
    const-string v2, "scrollPos"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method
