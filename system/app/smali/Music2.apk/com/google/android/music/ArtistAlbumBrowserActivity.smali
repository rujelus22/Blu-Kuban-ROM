.class public Lcom/google/android/music/ArtistAlbumBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


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

.field private static mLastListPosCourse:I

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

.field private final mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

.field private volatile mRepresentativeAlbumId:J

.field private mRestoreExpandedGroups:[I

.field private mRestoreScrollPos:I

.field private mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 86
    const-string v0, "ArtistAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    .line 108
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 109
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "base"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J

    .line 124
    iput-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    .line 235
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    .line 379
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 543
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$4;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    .line 1209
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1220
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$7;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/ArtistAlbumBrowserActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/ArtistAlbumBrowserActivity;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/ArtistAlbumBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->requestReconfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/ArtistAlbumBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private createContextMusicMenu(Landroid/view/View;)V
    .registers 33
    .parameter "view"

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v8, :cond_7

    .line 527
    :cond_6
    :goto_6
    return-void

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/android/music/MusicExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v25

    .line 472
    .local v25, flatListPosition:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/google/android/music/MusicExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v28

    .line 473
    .local v28, packedPosition:J
    invoke-static/range {v28 .. v29}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v27

    .line 474
    .local v27, itemtype:I
    invoke-static/range {v28 .. v29}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v26

    .line 475
    .local v26, gpos:I
    invoke-static/range {v28 .. v29}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v24

    .line 478
    .local v24, cpos:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v8}, Lcom/google/android/music/MusicExpandableListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v26, v26, v8

    .line 479
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 482
    .local v3, artistId:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, artistName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 485
    .local v2, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v6

    .line 486
    .local v6, popupLocation:[I
    const/16 v30, 0x2

    .line 487
    .local v30, popupDirection:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 491
    .local v7, rootView:Landroid/view/View;
    if-nez v27, :cond_90

    .line 492
    const/4 v8, -0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_6d

    .line 494
    const-string v8, "ArtistAlbumBrowser"

    const-string v11, "no group"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 498
    :cond_6d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_8c

    const/4 v9, 0x1

    .line 499
    .local v9, hasRemote:Z
    :goto_7a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_8e

    const/4 v10, 0x1

    .line 500
    .local v10, isKept:Z
    :goto_86
    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;IZZ)V

    goto/16 :goto_6

    .line 498
    .end local v9           #hasRemote:Z
    .end local v10           #isKept:Z
    :cond_8c
    const/4 v9, 0x0

    goto :goto_7a

    .line 499
    .restart local v9       #hasRemote:Z
    :cond_8e
    const/4 v10, 0x0

    goto :goto_86

    .line 503
    .end local v9           #hasRemote:Z
    :cond_90
    const/4 v8, 0x1

    move/from16 v0, v27

    if-ne v0, v8, :cond_6

    .line 504
    const/4 v8, -0x1

    move/from16 v0, v24

    if-ne v0, v8, :cond_a3

    .line 506
    const-string v8, "ArtistAlbumBrowser"

    const-string v11, "no child"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 509
    :cond_a3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v23

    .line 510
    .local v23, c:Landroid/database/Cursor;
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 512
    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 513
    .local v12, albumId:J
    const-wide/16 v15, -0x1

    cmp-long v8, v12, v15

    if-eqz v8, :cond_f2

    .line 515
    const/4 v8, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 516
    .local v14, albumName:Ljava/lang/String;
    const/4 v8, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_ee

    const/4 v9, 0x1

    .line 517
    .restart local v9       #hasRemote:Z
    :goto_d1
    const/4 v8, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_f0

    const/4 v10, 0x1

    .line 519
    .restart local v10       #isKept:Z
    :goto_db
    const/16 v20, 0x2

    move-object v11, v2

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v11 .. v22}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V

    goto/16 :goto_6

    .line 516
    .end local v9           #hasRemote:Z
    .end local v10           #isKept:Z
    :cond_ee
    const/4 v9, 0x0

    goto :goto_d1

    .line 517
    .restart local v9       #hasRemote:Z
    :cond_f0
    const/4 v10, 0x0

    goto :goto_db

    .line 523
    .end local v9           #hasRemote:Z
    .end local v14           #albumName:Ljava/lang/String;
    :cond_f2
    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto/16 :goto_6
.end method

.method private getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 587
    if-eqz p1, :cond_f

    .line 588
    const-string v1, "ArtistAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    :cond_f
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v0, ret:Landroid/database/Cursor;
    return-object v0
.end method

.method private refreshRepresentativeAlbum()V
    .registers 3

    .prologue
    .line 231
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPopulateRespresentativeAlbum:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_11

    .line 398
    if-eqz p1, :cond_10

    .line 399
    const-string v0, "ArtistAlbumBrowser"

    const-string v1, "null adapter, non-null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_10
    :goto_10
    return-void

    .line 404
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 411
    sget v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_10

    .line 412
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    sget v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicExpandableListView;->setSelectionFromTop(II)V

    .line 413
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    goto :goto_10
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 16
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v10, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 168
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v12

    .line 169
    .local v12, icicle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 170
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

    .line 171
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

    .line 173
    :cond_4b
    if-eqz v12, :cond_f1

    .line 174
    const-string v0, "autoscrollAlbumId"

    invoke-virtual {v12, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 175
    const-string v0, "autoscrollAlbumName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 176
    const-string v0, "autoscrollArtistId"

    invoke-virtual {v12, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 177
    const-string v0, "autoscrollArtistName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 178
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

    .line 182
    :cond_af
    const-string v0, "expandedGroups"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I

    .line 183
    const-string v0, "scrollPos"

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I

    .line 194
    :cond_c0
    :goto_c0
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f04001c

    new-array v6, v10, [Ljava/lang/String;

    new-array v7, v10, [I

    const v8, 0x7f04001a

    new-array v9, v10, [Ljava/lang/String;

    new-array v10, v10, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 204
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 206
    invoke-direct {p0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 207
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0, v11}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 208
    return-void

    .line 185
    .end local v11           #c:Landroid/database/Cursor;
    :cond_f1
    const-string v0, "autoscrollArtistId"

    invoke-virtual {v13, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 186
    const-string v0, "autoscrollAlbumName"

    invoke-virtual {v13, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 187
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
    .line 531
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 532
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 534
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
    .line 538
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_9

    .line 539
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mUpdateAllOfflineSelectedStatusesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 541
    :cond_9
    return-void
.end method

.method public onAvailableSpaceChanged(JJZ)V
    .registers 7
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 293
    if-eqz p5, :cond_6

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->onArtistChanged(Ljava/util/List;)V

    .line 296
    :cond_6
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 261
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

    .line 264
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 16
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 419
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v6, :cond_9

    .line 447
    :goto_8
    return v4

    .line 422
    :cond_9
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 423
    iput-wide p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 425
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v6, p3, p4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v1

    .line 426
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, album:Ljava/lang/String;
    cmp-long v6, p5, v7

    if-gez v6, :cond_5c

    .line 431
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 432
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 433
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 435
    const v4, 0x7f0d0064

    invoke-virtual {p0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    :cond_3e
    new-instance v2, Lcom/google/android/music/medialist/ArtistSongList;

    iget-wide v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v4

    invoke-direct {v2, v6, v7, v3, v4}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 446
    .end local v3           #name:Ljava/lang/String;
    .local v2, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_53
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    move v4, v5

    .line 447
    goto :goto_8

    .line 439
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_5c
    cmp-long v4, p5, v7

    if-ltz v4, :cond_66

    .line 440
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v2       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_53

    .line 442
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_66
    const-string v4, "ArtistAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Album ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") was not unknown but id ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") was < 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 444
    goto/16 :goto_8
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 136
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 137
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 138
    const-string v0, "ArtistAlbumBrowser"

    const-string v1, "ArtistAlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 142
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mStreamabilityListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 144
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicExpandableListView;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    .line 148
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setTextFilterEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicExpandableListView;->setCacheColorHint(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 154
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 155
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollBarEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setVerticalScrollbarPosition(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicExpandableListView;->setScrollBarStyle(I)V

    .line 160
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/MusicExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 162
    :cond_82
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 320
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    if-eqz v3, :cond_1c

    .line 321
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 322
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/MusicExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 323
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_1c

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 328
    .end local v2           #cv:Landroid/view/View;
    :cond_1c
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 329
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 334
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v3, :cond_3d

    .line 335
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 336
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 340
    .local v0, adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-virtual {v0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 343
    new-instance v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 354
    .end local v0           #adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_3d
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    move-object v3, v4

    check-cast v3, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/music/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 355
    iput-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 356
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 358
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 359
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
    .line 463
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->createContextMusicMenu(Landroid/view/View;)V

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 6
    .parameter "layoutConfig"

    .prologue
    .line 217
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 219
    iget-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 220
    iget-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 222
    :cond_1c
    return-void
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "offlineMusicManager"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eq v0, p2, :cond_2c

    .line 271
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_17

    .line 272
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->unregisterAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 277
    :cond_17
    iput-object p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 279
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_2c

    .line 280
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 286
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_35

    .line 287
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 289
    :cond_35
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 392
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 393
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 457
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 460
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 363
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v1}, Lcom/google/android/music/MusicExpandableListView;->invalidateViews()V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 374
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v1, :cond_38

    .line 375
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 377
    :cond_38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outcicle"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string v2, "autoscrollAlbumId"

    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    const-string v2, "autoscrollAlbumName"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "autoscrollArtistId"

    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 308
    const-string v2, "autoscrollArtistName"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v2}, Lcom/google/android/music/MusicExpandableListView;->getExpandedPositions()Ljava/util/Set;

    move-result-object v1

    .line 311
    .local v1, expandedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 312
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 313
    .local v0, arr:[I
    const-string v2, "expandedGroups"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 315
    .end local v0           #arr:[I
    :cond_36
    const-string v2, "scrollPos"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1239
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1242
    if-nez p2, :cond_5

    .line 1243
    invoke-direct {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->refreshRepresentativeAlbum()V

    .line 1245
    :cond_5
    return-void
.end method
