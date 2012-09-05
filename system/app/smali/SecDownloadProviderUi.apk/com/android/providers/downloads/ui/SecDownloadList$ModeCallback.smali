.class Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 3
    .parameter
    .parameter "downloadList"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    .line 392
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 20
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 436
    const-string v1, "SecDownloadList"

    const-string v2, "onActionItemClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 439
    const/4 v1, 0x1

    .line 466
    :goto_16
    return v1

    .line 441
    :cond_17
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_98

    .line 466
    :goto_1e
    const/4 v1, 0x1

    goto :goto_16

    .line 443
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 444
    .local v12, downloadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->deleteDownload(J)V
    invoke-static {v1, v4, v5}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1700(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    goto :goto_30

    .line 447
    .end local v12           #downloadId:Ljava/lang/Long;
    :cond_48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v15

    .line 448
    .local v15, lv:Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 449
    .local v10, checkedPositionList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 450
    .local v11, checkedPositionListSize:I
    const/16 v16, 0x0

    .line 451
    .local v16, sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/SecDownloadItem;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5b
    if-ge v13, v11, :cond_79

    .line 452
    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 453
    .local v3, position:I
    const/4 v1, 0x0

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 454
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 455
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 451
    :cond_76
    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    .line 458
    .end local v3           #position:I
    :cond_79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 460
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_1e

    .line 463
    .end local v10           #checkedPositionList:Landroid/util/SparseBooleanArray;
    .end local v11           #checkedPositionListSize:I
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #lv:Landroid/widget/ListView;
    .end local v16           #sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/SecDownloadItem;>;"
    :pswitch_90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->shareDownloadedFiles()Z

    goto :goto_1e

    .line 441
    :pswitch_data_98
    .packed-switch 0x7f0b0030
        :pswitch_90
        :pswitch_20
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 414
    const-string v3, "SecDownloadList"

    const-string v4, "onCreateActionMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v3, "SecDownloadList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDownloadList.mSelectedIds.size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_38

    .line 431
    :goto_37
    return v1

    .line 423
    :cond_38
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z
    invoke-static {v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1500(Lcom/android/providers/downloads/ui/SecDownloadList;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 424
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 425
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 426
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f08001e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 427
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f080022

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 430
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_5f
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1402(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move v1, v2

    .line 431
    goto :goto_37
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 396
    invoke-static {}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1200()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 397
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 398
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mCheckStates:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1300(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 399
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1402(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 400
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->haveCursors()Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1500(Lcom/android/providers/downloads/ui/SecDownloadList;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 401
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->refresh()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1600(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 405
    :cond_2b
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 10
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 473
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->isCurrentViewExpandableListView()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 474
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/SecDownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 475
    .local v0, ev:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 476
    .local v1, pos:J
    if-eqz p5, :cond_1f

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1f

    .line 479
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 484
    .end local v0           #ev:Landroid/widget/ExpandableListView;
    .end local v1           #pos:J
    :goto_1e
    return-void

    .line 483
    :cond_1f
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v3, p1}, Lcom/android/providers/downloads/ui/SecDownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    goto :goto_1e
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method
