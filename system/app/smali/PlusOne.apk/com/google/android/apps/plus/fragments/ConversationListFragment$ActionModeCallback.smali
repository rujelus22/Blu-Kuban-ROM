.class Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 670
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 674
    :goto_12
    return-void

    .line 672
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method

.method private getCheckedItemPosition()I
    .registers 5

    .prologue
    .line 793
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 794
    .local v1, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 795
    .local v0, checkItemsArrayCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 796
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 797
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 801
    :goto_1b
    return v3

    .line 795
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 801
    :cond_1f
    const/4 v3, -0x1

    goto :goto_1b
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    const/4 v5, 0x0

    .line 732
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->getCheckedItemPosition()I

    move-result v3

    .line 733
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_16

    :cond_14
    move v4, v5

    .line 751
    :goto_15
    return v4

    .line 737
    :cond_16
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v1

    .line 738
    .local v1, ids:[J
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 739
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 740
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_44

    .line 741
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_3f

    .line 743
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    :cond_3f
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->access$202(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .end local v2           #name:Ljava/lang/String;
    :cond_44
    array-length v4, v1

    if-lez v4, :cond_52

    .line 748
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v6, v6, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    aget-wide v7, v1, v5

    #calls: Lcom/google/android/apps/plus/fragments/ConversationListFragment;->handleContextItemSelected(Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V
    invoke-static {v4, v6, p2, v7, v8}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->access$300(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V

    .line 751
    :cond_52
    const/4 v4, 0x1

    goto :goto_15
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->access$102(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 690
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 691
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 693
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->access$102(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 760
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 770
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v5, v5, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 771
    .local v2, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 772
    .local v0, checkItemsArrayCount:I
    const/4 v1, 0x0

    .line 773
    .local v1, checkedCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_28

    .line 774
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 775
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 776
    .local v4, key:I
    if-eq v4, p2, :cond_25

    .line 777
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 773
    .end local v4           #key:I
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 779
    .restart local v4       #key:I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 783
    .end local v4           #key:I
    :cond_28
    if-nez v1, :cond_33

    .line 784
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->access$100(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 786
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 787
    return-void
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 701
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_f

    .line 723
    :cond_e
    :goto_e
    return v6

    .line 706
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->getCheckedItemPosition()I

    move-result v3

    .line 707
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 710
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v4, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 711
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 712
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6b

    move v1, v5

    .line 715
    .local v1, isGroup:Z
    :goto_38
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6d

    move v2, v5

    .line 717
    .local v2, isMuted:Z
    :goto_40
    const v4, 0x7f0d01ca

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 718
    const v4, 0x7f0d01cd

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    const v4, 0x7f0d01cb

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v2, :cond_6f

    :goto_5d
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 720
    const v4, 0x7f0d01cc

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_e

    .end local v1           #isGroup:Z
    .end local v2           #isMuted:Z
    :cond_6b
    move v1, v6

    .line 714
    goto :goto_38

    .restart local v1       #isGroup:Z
    :cond_6d
    move v2, v6

    .line 715
    goto :goto_40

    .restart local v2       #isMuted:Z
    :cond_6f
    move v5, v6

    .line 719
    goto :goto_5d
.end method
