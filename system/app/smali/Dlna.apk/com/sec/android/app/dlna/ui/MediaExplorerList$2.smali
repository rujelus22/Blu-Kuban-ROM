.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;
.super Landroid/os/Handler;
.source "MediaExplorerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->makeWorkThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .parameter "msg"

    .prologue
    .line 263
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_37a

    .line 433
    :cond_7
    :goto_7
    return-void

    .line 266
    :pswitch_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x6d

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->clearList()V
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    .line 268
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v9, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v6, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/api/ContentItem;

    .line 272
    .local v8, item:Lcom/samsung/api/ContentItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurFolder:Lcom/samsung/api/ContentItem;
    invoke-static {v14, v8}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;)Lcom/samsung/api/ContentItem;

    .line 273
    if-nez v8, :cond_3a

    .line 274
    new-instance v8, Lcom/samsung/api/ContentItem;

    .end local v8           #item:Lcom/samsung/api/ContentItem;
    invoke-direct {v8}, Lcom/samsung/api/ContentItem;-><init>()V

    .line 276
    .restart local v8       #item:Lcom/samsung/api/ContentItem;
    :cond_3a
    new-instance v4, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v14, v8, v9}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;-><init>(Lcom/sec/android/app/dlna/DLNAManager;Lcom/samsung/api/ContentItem;Ljava/util/List;)V

    .line 278
    .local v4, fake:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_58

    .line 280
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sec/android/app/dlna/DLNAManager;->getTotalMatchCount(Lcom/samsung/api/ContentItem;)I

    move-result v15

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$602(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v15

    mul-int/lit16 v15, v15, 0x1f4

    sub-int/2addr v14, v15

    const/16 v15, 0x1f4

    if-le v14, v15, :cond_220

    .line 287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x6f

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/16 v15, 0x1f4

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$802(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 293
    :goto_94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v1

    .line 295
    .local v1, PageNum:I
    invoke-virtual {v8}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v12

    .line 297
    .local v12, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    const/16 v15, 0x1f4

    if-le v14, v15, :cond_ba

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v15, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    :cond_ba
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e6

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_df

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_df

    .line 309
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->clearThumbnailHash()V

    .line 312
    :cond_df
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mFolderName:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    :cond_e6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    if-nez v14, :cond_252

    .line 316
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/sec/android/app/dlna/DLNAManager;->browse(Lcom/samsung/api/ContentItem;)Ljava/util/List;

    move-result-object v9

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x6a

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 318
    .local v10, msg1:Landroid/os/Message;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_249

    .line 319
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    :goto_113
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending msg1 : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    .line 334
    .local v5, history:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v14

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v15

    if-ne v14, v15, :cond_16a

    .line 335
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_16a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fillList(Ljava/util/List;)V
    invoke-static {v14, v9}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/util/List;)V

    .line 399
    .end local v5           #history:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    .end local v10           #msg1:Landroid/os/Message;
    :cond_171
    :goto_171
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1502(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 403
    const/4 v7, 0x0

    .local v7, i:I
    :goto_192
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_1b7

    .line 404
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/api/ContentItem;

    .line 405
    .local v13, temp_item:Lcom/samsung/api/ContentItem;
    invoke-virtual {v13}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->position2:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_375

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;
    invoke-static {v14, v13}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1702(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Lcom/samsung/api/ContentItem;)Lcom/samsung/api/ContentItem;

    .line 411
    .end local v13           #temp_item:Lcom/samsung/api/ContentItem;
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/samsung/api/ContentItem;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0xc9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0xc9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/samsung/api/ContentItem;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v15, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;-><init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_203
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_8 .. :try_end_203} :catch_205
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_203} :catch_243

    goto/16 :goto_7

    .line 423
    .end local v1           #PageNum:I
    .end local v4           #fake:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    .end local v6           #historyList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .end local v7           #i:I
    .end local v8           #item:Lcom/samsung/api/ContentItem;
    .end local v9           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .end local v12           #temp:Ljava/lang/String;
    :catch_205
    move-exception v3

    .line 424
    .local v3, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v3}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_21b

    .line 425
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    const/16 v15, 0x42e

    invoke-virtual {v14, v15}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 427
    :cond_21b
    invoke-virtual {v3}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto/16 :goto_7

    .line 291
    .end local v3           #e:Lcom/samsung/api/DMCAPIException;
    .restart local v4       #fake:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    .restart local v6       #historyList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .restart local v8       #item:Lcom/samsung/api/ContentItem;
    .restart local v9       #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    :cond_220
    :try_start_220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x1f4

    move/from16 v16, v0

    sub-int v15, v15, v16

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$802(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I
    :try_end_241
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_220 .. :try_end_241} :catch_205
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_241} :catch_243

    goto/16 :goto_94

    .line 428
    .end local v4           #fake:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    .end local v6           #historyList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .end local v8           #item:Lcom/samsung/api/ContentItem;
    .end local v9           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    :catch_243
    move-exception v3

    .line 429
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 321
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #PageNum:I
    .restart local v4       #fake:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    .restart local v6       #historyList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .restart local v8       #item:Lcom/samsung/api/ContentItem;
    .restart local v9       #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    .restart local v10       #msg1:Landroid/os/Message;
    .restart local v12       #temp:Ljava/lang/String;
    :cond_249
    const/4 v14, 0x0

    :try_start_24a
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_113

    .line 341
    .end local v10           #msg1:Landroid/os/Message;
    :cond_252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x6a

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 342
    .local v11, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    if-lez v14, :cond_2e6

    .line 343
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    :goto_271
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending msg2 : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Ljava/lang/Thread;

    move-result-object v14

    if-eqz v14, :cond_2af

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mThumbnailCreateThread:Ljava/lang/Thread;
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1102(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_2aa
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_24a .. :try_end_2aa} :catch_205
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_2aa} :catch_243

    .line 354
    const-wide/16 v14, 0x3e8

    :try_start_2ac
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2af
    .catch Ljava/lang/InterruptedException; {:try_start_2ac .. :try_end_2af} :catch_2ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_2ac .. :try_end_2af} :catch_205
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2af} :catch_243

    .line 359
    :cond_2af
    :goto_2af
    const/4 v2, 0x0

    .line 360
    .local v2, count:I
    :try_start_2b0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mBrowsedItemCnt:I
    invoke-static {v14, v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1202(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->CreateThumbnailThread()V
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V

    .line 363
    :cond_2bf
    :goto_2bf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mPageItemCnt:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$800(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    if-ge v2, v14, :cond_171

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->workerThread:Landroid/os/HandlerThread;
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/HandlerThread;

    move-result-object v14

    if-eqz v14, :cond_2dd

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v14

    if-eq v1, v14, :cond_2f3

    .line 365
    :cond_2dd
    const-string v14, "DLNA"

    const-string v15, "exit add list"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 345
    .end local v2           #count:I
    :cond_2e6
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_271

    .line 355
    :catch_2ee
    move-exception v3

    .line 356
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2af

    .line 368
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v2       #count:I
    :cond_2f3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 370
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v15

    mul-int/lit16 v15, v15, 0x1f4

    add-int/2addr v15, v2

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Lcom/sec/android/app/dlna/DLNAManager;->browse(Lcom/samsung/api/ContentItem;II)Ljava/util/List;

    move-result-object v9

    .line 372
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v2, v14

    .line 373
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_315
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_2b0 .. :try_end_315} :catch_205
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_315} :catch_243

    .line 376
    :try_start_315
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    .line 378
    .restart local v5       #history:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v14

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getParent()Lcom/samsung/api/ContentItem;

    move-result-object v15

    if-ne v14, v15, :cond_369

    .line 379
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getHistoryStack()Ljava/util/Stack;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->getItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v14

    if-eqz v14, :cond_35a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->FirstBrowse:Z
    invoke-static {v14}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v14

    if-nez v14, :cond_361

    .line 388
    :cond_35a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->fillList(Ljava/util/List;)V
    invoke-static {v14, v9}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/util/List;)V

    .line 391
    :cond_361
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2bf

    goto/16 :goto_171

    .line 382
    :cond_369
    const-string v14, "DLNA"

    const-string v15, "exit add list"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_370
    .catch Ljava/util/EmptyStackException; {:try_start_315 .. :try_end_370} :catch_372
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_315 .. :try_end_370} :catch_205
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_370} :catch_243

    goto/16 :goto_7

    .line 393
    .end local v5           #history:Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    :catch_372
    move-exception v14

    goto/16 :goto_2bf

    .line 403
    .end local v2           #count:I
    .end local v11           #msg2:Landroid/os/Message;
    .restart local v7       #i:I
    .restart local v13       #temp_item:Lcom/samsung/api/ContentItem;
    :cond_375
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_192

    .line 263
    nop

    :pswitch_data_37a
    .packed-switch 0xc9
        :pswitch_8
    .end packed-switch
.end method
