.class Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 3
    .parameter
    .parameter "downloadList"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 343
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 20
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 385
    const/4 v1, 0x1

    .line 412
    :goto_f
    return v1

    .line 387
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 412
    :goto_17
    const/4 v1, 0x1

    goto :goto_f

    .line 389
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 390
    .local v12, downloadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v1, v4, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$1600(Lcom/android/providers/downloads/ui/DownloadList;J)V

    goto :goto_29

    .line 393
    .end local v12           #downloadId:Ljava/lang/Long;
    :cond_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v15

    .line 394
    .local v15, lv:Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 395
    .local v10, checkedPositionList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 396
    .local v11, checkedPositionListSize:I
    const/16 v16, 0x0

    .line 397
    .local v16, sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_54
    if-ge v13, v11, :cond_72

    .line 398
    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 399
    .local v3, position:I
    const/4 v1, 0x0

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 400
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 401
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 397
    :cond_6f
    add-int/lit8 v13, v13, 0x1

    goto :goto_54

    .line 404
    .end local v3           #position:I
    :cond_72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 406
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_17

    .line 409
    .end local v10           #checkedPositionList:Landroid/util/SparseBooleanArray;
    .end local v11           #checkedPositionListSize:I
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #lv:Landroid/widget/ListView;
    .end local v16           #sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    :pswitch_89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->shareDownloadedFiles()Z

    goto :goto_17

    .line 387
    nop

    :pswitch_data_92
    .packed-switch 0x7f0b0030
        :pswitch_89
        :pswitch_19
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 361
    const-string v3, "DownloadList"

    const-string v4, "onCreateActionMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v3, "DownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDownloadList.mSelectedIds.size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_38

    .line 378
    :goto_37
    return v1

    .line 370
    :cond_38
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$1400(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 371
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 372
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 373
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f08001e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 374
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f080022

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 377
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_5f
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move v1, v2

    .line 378
    goto :goto_37
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mCheckStates:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 348
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1302(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 349
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1400(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 350
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->refresh()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1500(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 352
    :cond_25
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 10
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->isCurrentViewExpandableListView()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 420
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 421
    .local v0, ev:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 422
    .local v1, pos:J
    if-eqz p5, :cond_1f

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1f

    .line 425
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 430
    .end local v0           #ev:Landroid/widget/ExpandableListView;
    .end local v1           #pos:J
    :goto_1e
    return-void

    .line 429
    :cond_1f
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3, p1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    goto :goto_1e
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method
