.class Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "CirclePeopleListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 105
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 109
    :goto_12
    return-void

    .line 107
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 6

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, checkedCount:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 197
    .local v2, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 198
    .local v0, checkItemsArrayCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v0, :cond_1b

    .line 199
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 198
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 203
    :cond_1b
    return v1
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    .line 148
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    iget-object v5, v5, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 149
    .local v1, checkedItems:Landroid/util/SparseBooleanArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 151
    .local v0, checkItemsArrayCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v0, :cond_35

    .line 152
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 153
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->access$100(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;)Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    move-result-object v5

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 154
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2           #cursor:Landroid/database/Cursor;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 158
    :cond_35
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0d01e0

    if-ne v5, v6, :cond_43

    .line 159
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->removePeopleFromCircle(Ljava/util/ArrayList;)V

    .line 162
    :cond_43
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 164
    return v7
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->access$002(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 126
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100013

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->access$002(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 173
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 182
    .local v0, checkedCount:I
    if-nez v0, :cond_a

    .line 183
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 189
    :goto_9
    return-void

    .line 185
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0014

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_9
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 137
    .local v0, checkedCount:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0018

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    return v6
.end method
