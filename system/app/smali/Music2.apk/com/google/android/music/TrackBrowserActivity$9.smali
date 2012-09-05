.class Lcom/google/android/music/TrackBrowserActivity$9;
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

.field private final mContext:Landroid/content/Context;

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
    .line 1052
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1055
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    .line 1059
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mRootView:Landroid/view/View;

    .line 1060
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->popupDirection:I

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1073
    :cond_12
    :goto_12
    return-void

    .line 1067
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    .line 1068
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->isCurrentlyKeptOn:Z

    .line 1069
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->containsRemoteItems(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mHasRemote:Z

    .line 1070
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v0, :cond_12

    .line 1071
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;->getArtistId(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mArtistId:J

    goto :goto_12
.end method

.method public taskCompleted()V
    .registers 14

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 1119
    :cond_a
    :goto_a
    return-void

    .line 1082
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v0, :cond_44

    .line 1083
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/medialist/PlaylistSongList;

    .line 1084
    .local v12, mediaList:Lcom/google/android/music/medialist/PlaylistSongList;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {v12}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistType()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mHasRemote:Z

    iget-boolean v9, p0, Lcom/google/android/music/TrackBrowserActivity$9;->isCurrentlyKeptOn:Z

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(JLjava/lang/String;I[ILandroid/view/View;IZZ)V

    goto :goto_a

    .line 1089
    .end local v12           #mediaList:Lcom/google/android/music/medialist/PlaylistSongList;
    :cond_44
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v0, :cond_90

    .line 1090
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mArtistId:J

    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v6}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/SongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    const/4 v9, 0x2

    iget-boolean v10, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mHasRemote:Z

    iget-boolean v11, p0, Lcom/google/android/music/TrackBrowserActivity$9;->isCurrentlyKeptOn:Z

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V

    goto/16 :goto_a

    .line 1095
    :cond_90
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    if-eqz v0, :cond_b4

    .line 1096
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V

    goto/16 :goto_a

    .line 1099
    :cond_b4
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/StoreSongList;

    if-eqz v0, :cond_d8

    .line 1100
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    const-wide/16 v1, -0x3

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V

    goto/16 :goto_a

    .line 1103
    :cond_d8
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/ThumbsUpList;

    if-eqz v0, :cond_fc

    .line 1104
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    const-wide/16 v1, -0x4

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V

    goto/16 :goto_a

    .line 1107
    :cond_fc
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v0, :cond_12e

    .line 1108
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/medialist/ArtistSongList;

    .line 1109
    .local v12, mediaList:Lcom/google/android/music/medialist/ArtistSongList;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {v12}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mRootView:Landroid/view/View;

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mHasRemote:Z

    iget-boolean v8, p0, Lcom/google/android/music/TrackBrowserActivity$9;->isCurrentlyKeptOn:Z

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;IZZ)V

    goto/16 :goto_a

    .line 1112
    .end local v12           #mediaList:Lcom/google/android/music/medialist/ArtistSongList;
    :cond_12e
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/GenreSongList;

    if-eqz v0, :cond_a

    .line 1113
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/medialist/GenreSongList;

    .line 1114
    .local v12, mediaList:Lcom/google/android/music/medialist/GenreSongList;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {v12}, Lcom/google/android/music/medialist/GenreSongList;->getGenreId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$9;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Lcom/google/android/music/medialist/GenreSongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$9;->location:[I

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$9;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto/16 :goto_a
.end method
