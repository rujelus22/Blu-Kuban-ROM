.class public Lcom/google/android/music/ArtistAlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistQuery;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static mLastListPosCoarse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAppState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:J

.field private mCurrentArtistName:Ljava/lang/String;

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

.field private mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 83
    const-string v0, "ArtistAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    .line 102
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCoarse:I

    .line 103
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 116
    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 356
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 1110
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$5;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1124
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/ArtistAlbumBrowserActivity;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/ArtistAlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/ArtistAlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createContextMusicMenu(Landroid/view/View;)V
    .registers 38
    .parameter "view"

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v3, :cond_7

    .line 506
    :cond_6
    :goto_6
    return-void

    .line 445
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/music/MusicExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v30

    .line 446
    .local v30, flatListPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/google/android/music/MusicExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v33

    .line 447
    .local v33, packedPosition:J
    invoke-static/range {v33 .. v34}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v32

    .line 448
    .local v32, itemtype:I
    invoke-static/range {v33 .. v34}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v31

    .line 449
    .local v31, gpos:I
    invoke-static/range {v33 .. v34}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v29

    .line 452
    .local v29, cpos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v31, v31, v3

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move/from16 v0, v31

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 456
    .local v4, artistId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, artistName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 459
    .local v2, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v7

    .line 460
    .local v7, popupLocation:[I
    const/16 v35, 0x2

    .line 461
    .local v35, popupDirection:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 465
    .local v8, rootView:Landroid/view/View;
    if-nez v32, :cond_a8

    .line 466
    const/4 v3, -0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6d

    .line 468
    const-string v3, "ArtistAlbumBrowser"

    const-string v9, "no group"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 472
    :cond_6d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_a2

    const/4 v10, 0x1

    .line 473
    .local v10, hasRemote:Z
    :goto_7a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a4

    const/4 v11, 0x1

    .line 474
    .local v11, isKept:Z
    :goto_86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v12, 0x1

    .line 475
    .local v12, hasLocal:Z
    :goto_92
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v13

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_6

    .line 472
    .end local v10           #hasRemote:Z
    .end local v11           #isKept:Z
    .end local v12           #hasLocal:Z
    :cond_a2
    const/4 v10, 0x0

    goto :goto_7a

    .line 473
    .restart local v10       #hasRemote:Z
    :cond_a4
    const/4 v11, 0x0

    goto :goto_86

    .line 474
    .restart local v11       #isKept:Z
    :cond_a6
    const/4 v12, 0x0

    goto :goto_92

    .line 479
    .end local v10           #hasRemote:Z
    .end local v11           #isKept:Z
    :cond_a8
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    .line 480
    const/4 v3, -0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_bb

    .line 482
    const-string v3, "ArtistAlbumBrowser"

    const-string v9, "no child"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 485
    :cond_bb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v28

    .line 486
    .local v28, c:Landroid/database/Cursor;
    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 488
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 489
    .local v15, albumId:J
    const-wide/16 v13, -0x1

    cmp-long v3, v15, v13

    if-eqz v3, :cond_123

    .line 491
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 492
    .local v17, albumName:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_11d

    const/4 v10, 0x1

    .line 493
    .restart local v10       #hasRemote:Z
    :goto_e9
    const/4 v3, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11f

    const/4 v11, 0x1

    .line 494
    .restart local v11       #isKept:Z
    :goto_f3
    const/4 v3, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_121

    const/4 v12, 0x1

    .line 496
    .restart local v12       #hasLocal:Z
    :goto_fd
    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v27

    move-object v13, v2

    move-object/from16 v14, p0

    move-wide/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    invoke-virtual/range {v13 .. v27}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_6

    .line 492
    .end local v10           #hasRemote:Z
    .end local v11           #isKept:Z
    .end local v12           #hasLocal:Z
    :cond_11d
    const/4 v10, 0x0

    goto :goto_e9

    .line 493
    .restart local v10       #hasRemote:Z
    :cond_11f
    const/4 v11, 0x0

    goto :goto_f3

    .line 494
    .restart local v11       #isKept:Z
    :cond_121
    const/4 v12, 0x0

    goto :goto_fd

    .line 501
    .end local v10           #hasRemote:Z
    .end local v11           #isKept:Z
    .end local v17           #albumName:Ljava/lang/String;
    :cond_123
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v26

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move-wide/from16 v20, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-virtual/range {v18 .. v26}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;ILcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_6
.end method

.method private getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 566
    if-eqz p1, :cond_f

    .line 567
    const-string v1, "ArtistAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v1, v2, :cond_2b

    const/4 v7, 0x1

    .line 572
    .local v7, isPrimary:Z
    :goto_1c
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 574
    .local v0, ret:Landroid/database/Cursor;
    return-object v0

    .line 570
    .end local v0           #ret:Landroid/database/Cursor;
    .end local v7           #isPrimary:Z
    :cond_2b
    const/4 v7, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    const-string v0, "artists"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_11

    .line 375
    if-eqz p1, :cond_10

    .line 376
    const-string v0, "ArtistAlbumBrowser"

    const-string v1, "null adapter, non-null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_10
    :goto_10
    return-void

    .line 381
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 388
    sget v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCoarse:I

    if-ltz v0, :cond_10

    .line 389
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    sget v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCoarse:I

    sget v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicExpandableListView;->setSelectionFromTop(II)V

    .line 390
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCoarse:I

    goto :goto_10
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 16
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v10, 0x0

    .line 160
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 162
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v12

    .line 163
    .local v12, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 164
    .local v13, launchIntent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2b

    const-string v0, "ArtistAlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2b
    sget-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_4b

    const-string v0, "ArtistAlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4b
    if-eqz v12, :cond_fb

    .line 168
    const-string v0, "autoscrollAlbumId"

    invoke-virtual {v12, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 169
    const-string v0, "autoscrollAlbumName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 170
    const-string v0, "autoscrollArtistId"

    invoke-virtual {v12, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 171
    const-string v0, "autoscrollArtistName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 172
    sget-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_af

    const-string v0, "ArtistAlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored artist / album from icicle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_af
    const-string v0, "expandedGroups"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 177
    const-string v0, "scrollPos"

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 188
    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 190
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f040020

    new-array v6, v10, [Ljava/lang/String;

    new-array v7, v10, [I

    const v8, 0x7f04001e

    new-array v9, v10, [Ljava/lang/String;

    new-array v10, v10, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 200
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 202
    invoke-direct {p0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 203
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0, v11}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 204
    return-void

    .line 179
    .end local v11           #c:Landroid/database/Cursor;
    :cond_fb
    const-string v0, "autoscrollArtistId"

    invoke-virtual {v13, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 180
    const-string v0, "autoscrollAlbumName"

    invoke-virtual {v13, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 181
    sget-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_c0

    const-string v0, "ArtistAlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got artist / album from launchIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0
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
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 511
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    :cond_9
    return-void
.end method

.method public onArtistChanged(Ljava/util/List;)V
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
    .line 517
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 520
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

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->onArtistChanged(Ljava/util/List;)V

    .line 264
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 232
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v4, :cond_7

    .line 421
    :cond_6
    :goto_6
    return v2

    .line 399
    :cond_7
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v4, p3}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChildrenCount(I)I

    move-result v4

    if-eqz v4, :cond_6

    .line 403
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 404
    iput-wide p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 407
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-gez v4, :cond_5a

    .line 409
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 410
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 411
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 413
    const v2, 0x7f0d0074

    invoke-virtual {p0, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    :cond_3c
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v2

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 420
    .end local v1           #name:Ljava/lang/String;
    .local v0, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_51
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    move v2, v3

    .line 421
    goto :goto_6

    .line 418
    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_5a
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v0, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_51
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 130
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 131
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 132
    const-string v0, "ArtistAlbumBrowser"

    const-string v1, "ArtistAlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 136
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 138
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicExpandableListView;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    .line 142
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setTextFilterEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setCacheColorHint(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 147
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 148
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollBarEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollbarPosition(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setScrollBarStyle(I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 155
    :cond_7d
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    if-eqz v3, :cond_1c

    .line 289
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCoarse:I

    .line 290
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/MusicExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 291
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_1c

    .line 292
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 296
    .end local v2           #cv:Landroid/view/View;
    :cond_1c
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 297
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 302
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v3, :cond_3d

    .line 303
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 304
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 308
    .local v0, adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-virtual {v0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 311
    new-instance v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 322
    .end local v0           #adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_3d
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object v3, v4

    check-cast v3, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 323
    iput-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 324
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 326
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 327
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
    .line 437
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;)V

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 213
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 215
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 4
    .parameter "musicStateController"

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 238
    .local v0, offlineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v1, v0, :cond_30

    .line 239
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_1b

    .line 240
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 241
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 242
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 245
    :cond_1b
    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 247
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_30

    .line 248
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 249
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 254
    :cond_30
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v1, :cond_39

    .line 255
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 257
    :cond_39
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 368
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 369
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 370
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 431
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 432
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 434
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 332
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v1}, Lcom/google/android/music/MusicExpandableListView;->invalidateViews()V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v1, :cond_38

    .line 343
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 346
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v1, :cond_45

    .line 347
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v1, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 349
    :cond_45
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outcicle"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    const-string v2, "autoscrollAlbumId"

    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 274
    const-string v2, "autoscrollAlbumName"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "autoscrollArtistId"

    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 276
    const-string v2, "autoscrollArtistName"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v2}, Lcom/google/android/music/MusicExpandableListView;->getExpandedPositions()Ljava/util/Set;

    move-result-object v1

    .line 279
    .local v1, expandedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 280
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 281
    .local v0, arr:[I
    const-string v2, "expandedGroups"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 283
    .end local v0           #arr:[I
    :cond_36
    const-string v2, "scrollPos"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    return-void
.end method
