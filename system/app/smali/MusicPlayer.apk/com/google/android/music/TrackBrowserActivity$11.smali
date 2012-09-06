.class Lcom/google/android/music/TrackBrowserActivity$11;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->containerContextMenuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCurrentlyKeptOn:Z

.field private location:[I

.field private mArtistId:J

.field private mArtistSort:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHasLocal:Z

.field private mHasRemote:Z

.field private final mRootView:Landroid/view/View;

.field private final mSavedMediaList:Lcom/google/android/music/medialist/SongList;

.field private final popupDirection:I

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1228
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    .line 1233
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mRootView:Landroid/view/View;

    .line 1234
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->popupDirection:I

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mArtistSort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 3

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1250
    :cond_12
    :goto_12
    return-void

    .line 1242
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    .line 1243
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->isCurrentlyKeptOn:Z

    .line 1244
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->containsRemoteItems(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasRemote:Z

    .line 1245
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->containsLocalItems(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasLocal:Z

    .line 1246
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v0, :cond_12

    .line 1247
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;->getArtistId(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mArtistId:J

    .line 1248
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;->getArtistSort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->mArtistSort:Ljava/lang/String;

    goto :goto_12
.end method

.method public taskCompleted()V
    .registers 32

    .prologue
    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    if-eq v2, v3, :cond_f

    .line 1302
    :cond_e
    :goto_e
    return-void

    .line 1258
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$3000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v13

    .line 1260
    .local v13, network:Lcom/google/android/music/dl/INetworkMonitor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v2, :cond_66

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v30

    check-cast v30, Lcom/google/android/music/medialist/PlaylistSongList;

    .line 1262
    .local v30, mediaList:Lcom/google/android/music/medialist/PlaylistSongList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v4

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistType()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasRemote:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/music/TrackBrowserActivity$11;->isCurrentlyKeptOn:Z

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_e

    .line 1268
    .end local v30           #mediaList:Lcom/google/android/music/medialist/PlaylistSongList;
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v2, :cond_e7

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mArtistId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mArtistSort:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasRemote:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->isCurrentlyKeptOn:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasLocal:Z

    move/from16 v28, v0

    move-object/from16 v29, v13

    invoke-virtual/range {v14 .. v29}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenuWithArtistSort(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_e

    .line 1275
    :cond_e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    if-eqz v2, :cond_117

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    goto/16 :goto_e

    .line 1280
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/StoreSongList;

    if-eqz v2, :cond_147

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const-wide/16 v4, -0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    goto/16 :goto_e

    .line 1284
    :cond_147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/ThumbsUpList;

    if-eqz v2, :cond_177

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const-wide/16 v4, -0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    goto/16 :goto_e

    .line 1289
    :cond_177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v2, :cond_1bf

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v30

    check-cast v30, Lcom/google/android/music/medialist/ArtistSongList;

    .line 1291
    .local v30, mediaList:Lcom/google/android/music/medialist/ArtistSongList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistId()J

    move-result-wide v4

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mRootView:Landroid/view/View;

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasRemote:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/music/TrackBrowserActivity$11;->isCurrentlyKeptOn:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasLocal:Z

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_e

    .line 1295
    .end local v30           #mediaList:Lcom/google/android/music/medialist/ArtistSongList;
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/music/medialist/GenreSongList;

    if-eqz v2, :cond_e

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v30

    check-cast v30, Lcom/google/android/music/medialist/GenreSongList;

    .line 1297
    .local v30, mediaList:Lcom/google/android/music/medialist/GenreSongList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/medialist/GenreSongList;->getGenreId()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/google/android/music/medialist/GenreSongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/TrackBrowserActivity$11;->location:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/TrackBrowserActivity$11;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/music/TrackBrowserActivity$11;->mHasLocal:Z

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V

    goto/16 :goto_e
.end method
