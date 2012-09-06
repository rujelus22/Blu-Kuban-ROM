.class public Lcom/google/android/music/RecentBrowserActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/BottomBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCoarse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mIsStreamingEnabled:Z

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mRecentCursor:Landroid/database/Cursor;

.field private mRecentList:Landroid/widget/GridView;

.field private mRestorePosition:I

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 60
    const-string v0, "RecentBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    .line 68
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCoarse:I

    .line 69
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosFine:I

    .line 160
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "list_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ListType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "base"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    .line 535
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$1;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 549
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$2;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RecentBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/RecentBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/GridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/RecentBrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/music/RecentBrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    return-object v0
.end method

.method private getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "filter"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    .line 280
    .local v0, isPrimary:Z
    :goto_d
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

    sget-object v2, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v1, p0, v2, p1, v0}, Lcom/google/android/music/medialist/RecentItemsList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0           #isPrimary:Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_c

    .line 222
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 225
    :cond_c
    return-void
.end method

.method public createContextMusicMenu(Landroid/view/View;Landroid/view/View;I)V
    .registers 34
    .parameter "view"
    .parameter "lineView"
    .parameter "position"

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    .line 200
    .local v2, contextManager:Lcom/google/android/music/utils/ContextMenuManager;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 202
    .local v29, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v16

    .line 203
    .local v16, network:Lcom/google/android/music/dl/INetworkMonitor;
    move-object/from16 v0, v29

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-ltz v3, :cond_5b

    .line 205
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v3}, Lcom/google/android/music/StatefulShadowTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, albumName:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v3}, Lcom/google/android/music/StatefulShadowTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, artistName:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-wide v4, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-object/from16 v0, v29

    iget-wide v7, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v11

    const/4 v12, 0x2

    move-object/from16 v0, v29

    iget-boolean v13, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasRemote:Z

    move-object/from16 v0, v29

    iget-boolean v14, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->isKeptInDb:Z

    move-object/from16 v0, v29

    iget-boolean v15, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasLocal:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 218
    .end local v6           #albumName:Ljava/lang/String;
    .end local v9           #artistName:Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-void

    .line 211
    :cond_5b
    move-object/from16 v0, v29

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-ltz v3, :cond_5a

    .line 213
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistType:I

    move/from16 v22, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->hasRemote:Z

    move/from16 v26, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->isKeptInDb:Z

    move/from16 v27, v0

    move-object/from16 v17, v2

    move-object/from16 v18, p0

    move-object/from16 v28, v16

    invoke-virtual/range {v17 .. v28}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_5a
.end method

.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    const-string v0, "recent"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-nez v0, :cond_5

    .line 275
    :cond_4
    :goto_4
    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->closeContextMusicMenu()V

    goto :goto_4
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 130
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, savedBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    const-string v1, "savedScrollPos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 132
    const-string v1, "savedScrollPos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    .line 136
    :goto_19
    return-void

    .line 134
    :cond_1a
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRestorePosition:I

    goto :goto_19
.end method

.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    return-void
.end method

.method public onCreate()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 88
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 90
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 91
    const-string v0, "RecentBrowserActivity"

    const-string v1, "RecentBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_19
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 96
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mView:Landroid/view/View;

    .line 98
    new-instance v0, Lcom/google/android/music/medialist/RecentItemsList;

    invoke-direct {v0}, Lcom/google/android/music/medialist/RecentItemsList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/RecentItemsList;

    .line 100
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    .line 101
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    .line 102
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setTextFilterEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getApplication()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f040019

    iget-object v5, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;-><init>(Lcom/google/android/music/RecentBrowserActivity;Landroid/content/Context;Lcom/google/android/music/RecentBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    .line 118
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/google/android/music/RecentBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 122
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 124
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_14

    .line 151
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 153
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iput-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    .line 155
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 157
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, 0x0

    .line 512
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v2}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 533
    :cond_a
    :goto_a
    return-void

    .line 516
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 517
    .local v1, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    if-eqz v1, :cond_79

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_49

    .line 520
    sget-boolean v2, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_38

    const-string v2, "RecentBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening album list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_38
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 526
    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_a

    .line 527
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    goto :goto_a

    .line 522
    :cond_49
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3f

    .line 523
    sget-boolean v2, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_6d

    const-string v2, "RecentBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_6d
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-wide v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    iget-object v4, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistType:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;I)V

    .restart local v0       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_3f

    .line 530
    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_79
    new-instance v2, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 531
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    goto :goto_a
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
    .line 186
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p2, p3}, Lcom/google/android/music/RecentBrowserActivity;->createContextMusicMenu(Landroid/view/View;Landroid/view/View;I)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 238
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 239
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 260
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 261
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    if-nez v0, :cond_1d

    .line 247
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 249
    :cond_1d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "savedScrollPos"

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    return-void
.end method
