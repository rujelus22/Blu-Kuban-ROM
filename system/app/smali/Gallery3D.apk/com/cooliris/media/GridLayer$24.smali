.class Lcom/cooliris/media/GridLayer$24;
.super Ljava/lang/Thread;
.source "GridLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->setResultForMultiPick(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;

.field final synthetic val$check:Z

.field final synthetic val$isGridView:Z


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    iput-boolean p2, p0, Lcom/cooliris/media/GridLayer$24;->val$isGridView:Z

    iput-boolean p3, p0, Lcom/cooliris/media/GridLayer$24;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 2897
    const/16 v21, -0x1

    .line 2898
    .local v21, numMediaItems:I
    const/4 v9, 0x0

    .line 2899
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 2900
    .local v19, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 2901
    .local v25, selectedItemList:Ljava/lang/StringBuffer;
    new-instance v17, Lcom/cooliris/media/PhotoAppWidgetController;

    invoke-direct/range {v17 .. v17}, Lcom/cooliris/media/PhotoAppWidgetController;-><init>()V

    .line 2902
    .local v17, mController:Lcom/cooliris/media/PhotoAppWidgetController;
    const/16 v24, 0x0

    .line 2905
    .local v24, savedItemNum:I
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "APPWIDGET_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    .line 2907
    sget v2, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/cooliris/media/PhotoAppWidgetController;->resetWidgetFolder(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_a2

    .line 2916
    :try_start_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/GridLayer$24;->val$isGridView:Z

    if-eqz v2, :cond_d2

    .line 2917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1100(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/MediaBucketList;

    move-result-object v11

    .line 2918
    .local v11, bucketList:Lcom/cooliris/media/MediaBucketList;
    invoke-virtual {v11}, Lcom/cooliris/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v18

    .line 2919
    .local v18, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/media/MediaBucket;

    .line 2920
    .local v10, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v0, v10, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 2921
    if-eqz v19, :cond_1c2

    .line 2922
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2923
    const/16 v2, 0x64

    move/from16 v0, v21

    if-le v0, v2, :cond_1c2

    .line 2924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060099

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2927
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1202(Z)Z

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v2, v2, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_32 .. :try_end_a1} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_a1} :catch_25b

    .line 3036
    .end local v10           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v11           #bucketList:Lcom/cooliris/media/MediaBucketList;
    .end local v18           #mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    :goto_a1
    return-void

    .line 2908
    :catch_a2
    move-exception v13

    .line 2909
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not make picture frame widget. Widget id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 2911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v2, v2, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a1

    .line 2933
    .end local v13           #e:Ljava/lang/Exception;
    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1300(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/MediaFeed;

    move-result-object v14

    .line 2934
    .local v14, feed:Lcom/cooliris/media/MediaFeed;
    invoke-virtual {v14}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v26

    .line 2935
    .local v26, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mFocusSlot:I
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1400(Lcom/cooliris/media/GridLayer;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v19

    .line 2936
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2937
    const/16 v2, 0x64

    move/from16 v0, v21

    if-le v0, v2, :cond_1c2

    .line 2938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060099

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;

    move-result-object v2

    if-eqz v2, :cond_148

    .line 2943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/cooliris/media/GridInputProcessor;->setPreviousSelectedSlot(I)V

    .line 2944
    :cond_148
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1202(Z)Z
    :try_end_14c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d2 .. :try_end_14c} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_14c} :catch_25b

    goto/16 :goto_a1

    .line 3010
    .end local v14           #feed:Lcom/cooliris/media/MediaFeed;
    .end local v26           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    :catch_14e
    move-exception v13

    .line 3011
    .local v13, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 3017
    .end local v13           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_152
    :goto_152
    if-eqz v9, :cond_15d

    :try_start_154
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_15d

    .line 3018
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 3020
    :cond_15d
    sget-object v2, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v20

    .line 3022
    .local v20, msg:Landroid/os/Message;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3023
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3024
    .local v12, data:Landroid/os/Bundle;
    const-string v2, "savedItemNum"

    move/from16 v0, v24

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3025
    const-string v2, "selectedItemNum"

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3026
    const-string v2, "selectedItems"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->MultiPickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1500(Lcom/cooliris/media/GridLayer;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_19c} :catch_19e

    goto/16 :goto_a1

    .line 3029
    .end local v12           #data:Landroid/os/Bundle;
    .end local v20           #msg:Landroid/os/Message;
    :catch_19e
    move-exception v13

    .line 3030
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "GridLayer"

    const-string v3, "Can not make picture frame widget"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v2, v2, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3033
    sget-object v2, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a1

    .line 2949
    .end local v13           #e:Ljava/lang/Exception;
    :cond_1c2
    :try_start_1c2
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResultForMultiPick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/16 v23, 0x0

    .line 2951
    .local v23, savedIndex:I
    const/16 v16, 0x0

    .local v16, j:I
    :goto_1e6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_152

    .line 2952
    if-eqz v19, :cond_210

    .line 2953
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cooliris/media/MediaItem;
    :try_end_1f8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c2 .. :try_end_1f8} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1f8} :catch_25b

    .line 2955
    .local v15, item:Lcom/cooliris/media/MediaItem;
    :try_start_1f8
    iget v2, v15, Lcom/cooliris/media/MediaItem;->mRotation:F

    float-to-int v0, v2

    move/from16 v22, v0

    .line 2956
    .local v22, rotation:I
    iget-object v2, v15, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_213

    iget-object v2, v15, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_213

    .line 2957
    const-string v2, "GridLayer"

    const-string v3, "DRM file. Skip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    .end local v15           #item:Lcom/cooliris/media/MediaItem;
    .end local v22           #rotation:I
    :cond_210
    :goto_210
    add-int/lit8 v16, v16, 0x1

    goto :goto_1e6

    .line 2960
    .restart local v15       #item:Lcom/cooliris/media/MediaItem;
    .restart local v22       #rotation:I
    :cond_213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v4, 0x500

    const/16 v5, 0x500

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2962
    if-nez v9, :cond_261

    .line 2963
    const-string v2, "GridLayer"

    const-string v3, "Bitmap is null. Skip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f8 .. :try_end_231} :catch_232
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_231} :catch_2b0
    .catch Ljava/net/URISyntaxException; {:try_start_1f8 .. :try_end_231} :catch_2ee
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f8 .. :try_end_231} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_231} :catch_25b

    goto :goto_210

    .line 2982
    .end local v22           #rotation:I
    :catch_232
    move-exception v13

    .line 2983
    .local v13, e:Ljava/lang/OutOfMemoryError;
    :try_start_233
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 3001
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :cond_236
    :goto_236
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/GridLayer$24;->val$check:Z

    if-eqz v2, :cond_210

    .line 3002
    const-string v2, "GridLayer"

    const-string v3, "setResultForMultiPick folder check first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    sget-object v2, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->MultiPickHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1500(Lcom/cooliris/media/GridLayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3005
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1202(Z)Z
    :try_end_259
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_233 .. :try_end_259} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_259} :catch_25b

    goto/16 :goto_a1

    .line 3012
    .end local v15           #item:Lcom/cooliris/media/MediaItem;
    .end local v16           #j:I
    .end local v23           #savedIndex:I
    :catch_25b
    move-exception v13

    .line 3013
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_152

    .line 2967
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v15       #item:Lcom/cooliris/media/MediaItem;
    .restart local v16       #j:I
    .restart local v22       #rotation:I
    .restart local v23       #savedIndex:I
    :cond_261
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26f

    .line 2968
    :try_start_269
    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/cooliris/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2970
    :cond_26f
    iget-object v2, v15, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "|+|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v3, v15, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v3, v3, Lcom/cooliris/media/MediaSet;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/Gallery;->setFolderID(J)V

    .line 2973
    sget v2, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v2, v9, v1}, Lcom/cooliris/media/PhotoAppWidgetController;->saveItemsFromId(ILandroid/graphics/Bitmap;I)I

    move-result v2

    add-int v24, v24, v2

    .line 2975
    if-nez v23, :cond_2a4

    .line 2976
    sget v2, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    const/16 v3, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9, v3}, Lcom/cooliris/media/PhotoAppWidgetController;->saveFakeItemsFromId(ILandroid/graphics/Bitmap;I)Z

    .line 2979
    :cond_2a4
    add-int/lit8 v23, v23, 0x1

    .line 2980
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_236

    .line 2981
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_269 .. :try_end_2af} :catch_232
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_2af} :catch_2b0
    .catch Ljava/net/URISyntaxException; {:try_start_269 .. :try_end_2af} :catch_2ee
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_269 .. :try_end_2af} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_2af} :catch_25b

    goto :goto_236

    .line 2984
    .end local v22           #rotation:I
    :catch_2b0
    move-exception v13

    .line 2985
    .local v13, e:Ljava/io/IOException;
    :try_start_2b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2989
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 2995
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$1202(Z)Z

    .line 2996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer$24;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-object v2, v2, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a1

    .line 2998
    .end local v13           #e:Ljava/io/IOException;
    :catch_2ee
    move-exception v13

    .line 2999
    .local v13, e:Ljava/net/URISyntaxException;
    invoke-virtual {v13}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_2f2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2b1 .. :try_end_2f2} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2f2} :catch_25b

    goto/16 :goto_236
.end method
