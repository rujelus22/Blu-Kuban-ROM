.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onCreateContextMusicMenu(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$location:[I

.field final synthetic val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;[I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$location:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateKeepOnValues(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    .line 691
    return-void
.end method

.method public taskCompleted()V
    .registers 18

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6c

    .line 695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v3, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v5, v5, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v6, v6, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v8, v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v9, v9, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mSortableAlbumArtistName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v10}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$location:[I

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-boolean v13, v13, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-boolean v14, v14, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-boolean v15, v15, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasLocal:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;
    invoke-static/range {v16 .. v16}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v16

    invoke-virtual/range {v1 .. v16}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenuWithArtistSort(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 713
    :cond_6b
    :goto_6b
    return-void

    .line 702
    :cond_6c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c4

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v3, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v5, v5, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v6, v6, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$location:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v8

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-boolean v10, v10, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-boolean v11, v11, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;
    invoke-static {v12}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v12

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_6b

    .line 708
    :cond_c4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    if-nez v1, :cond_6b

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->val$location:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/utils/ContextMenuManager;->showShuffleAllContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;[ILandroid/view/View;I)V

    goto/16 :goto_6b
.end method
