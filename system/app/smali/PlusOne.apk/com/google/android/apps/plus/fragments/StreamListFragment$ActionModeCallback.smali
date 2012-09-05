.class Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "StreamListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mPreventReentrants:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 390
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 394
    :goto_12
    return-void

    .line 392
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method

.method private getCheckedItemPosition()I
    .registers 5

    .prologue
    .line 537
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 538
    .local v1, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 539
    .local v0, checkItemsArrayCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 540
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 541
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 545
    :goto_1b
    return v3

    .line 539
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 545
    :cond_1f
    const/4 v3, -0x1

    goto :goto_1b
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->getCheckedItemPosition()I

    move-result v0

    .line 478
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isFooterIndex(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 479
    :cond_13
    const/4 v1, 0x0

    .line 487
    :goto_14
    return v1

    .line 481
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    .line 483
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/StreamAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleContextItemSelected(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V
    invoke-static {v2, v1, p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->access$300(Lcom/google/android/apps/plus/fragments/StreamListFragment;Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V

    .line 485
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 487
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iput-object p1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 410
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 411
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100020

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 413
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 496
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 13
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    const/4 v6, 0x0

    .line 504
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mPreventReentrants:Z

    if-eqz v5, :cond_6

    .line 531
    :goto_5
    return-void

    .line 510
    :cond_6
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v5, v5, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 511
    .local v2, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 512
    .local v0, checkItemsArrayCount:I
    const/4 v1, 0x0

    .line 513
    .local v1, checkedCount:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mPreventReentrants:Z

    .line 514
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_36

    .line 515
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 516
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 517
    .local v4, key:I
    if-eq v4, p2, :cond_33

    .line 518
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v5, v5, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 514
    .end local v4           #key:I
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 520
    .restart local v4       #key:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 524
    .end local v4           #key:I
    :cond_36
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->mPreventReentrants:Z

    .line 526
    if-nez v1, :cond_3e

    .line 527
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_5

    .line 529
    :cond_3e
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_5
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 13
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v4

    .line 467
    :goto_f
    return v3

    .line 426
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->getCheckedItemPosition()I

    move-result v2

    .line 427
    .local v2, position:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isFooterIndex(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 428
    :cond_23
    if-eqz p1, :cond_28

    .line 429
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    :cond_28
    move v3, v4

    .line 431
    goto :goto_f

    .line 433
    :cond_2a
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    .line 435
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const v7, 0x7f0700d6

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getAuthorName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    const v3, 0x7f0d01be

    :try_start_50
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    const v3, 0x7f0d01bf

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 440
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isPostPlusOnePending(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 441
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    .line 442
    .local v1, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v1, :cond_f3

    .line 443
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 444
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 445
    const v3, 0x7f0d01bf

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    .end local v1           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getAuthorId()J

    move-result-wide v6

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_ff

    move v0, v5

    .line 456
    .local v0, byMe:Z
    :goto_ad
    const v3, 0x7f0d01c5

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    const v3, 0x7f0d01c0

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isLocked()Z

    move-result v3

    if-nez v3, :cond_101

    move v3, v5

    :goto_cb
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    const v3, 0x7f0d01c3

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v0, :cond_103

    move v3, v5

    :goto_d8
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setupMenu(Landroid/view/Menu;)V

    move v3, v5

    .line 463
    goto/16 :goto_f

    .line 448
    .end local v0           #byMe:Z
    .restart local v1       #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_e3
    const v3, 0x7f0d01be

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_96

    .line 464
    .end local v1           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :catch_ef
    move-exception v3

    move v3, v4

    .line 467
    goto/16 :goto_f

    .line 451
    .restart local v1       #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_f3
    const v3, 0x7f0d01be

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_fe
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_50 .. :try_end_fe} :catch_ef

    goto :goto_96

    .end local v1           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_ff
    move v0, v4

    .line 455
    goto :goto_ad

    .restart local v0       #byMe:Z
    :cond_101
    move v3, v4

    .line 458
    goto :goto_cb

    :cond_103
    move v3, v4

    .line 459
    goto :goto_d8
.end method
