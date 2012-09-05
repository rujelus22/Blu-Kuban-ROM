.class Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "CircleListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CircleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 157
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 161
    :goto_12
    return-void

    .line 159
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 6

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, checkedCount:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$100(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 261
    .local v2, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 262
    .local v0, checkItemsArrayCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1d

    .line 263
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 262
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 267
    :cond_1d
    return v1
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    .line 200
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$100(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 201
    .local v1, checkedItems:Landroid/util/SparseBooleanArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 203
    .local v0, checkItemsArrayCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    if-ge v4, v0, :cond_37

    .line 204
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 205
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$200(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 206
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3           #cursor:Landroid/database/Cursor;
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 210
    :cond_37
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0d01bd

    if-ne v5, v6, :cond_45

    .line 211
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->onDeleteCirclesAction(Ljava/util/ArrayList;)V

    .line 214
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 216
    return v7
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$002(Lcom/google/android/apps/plus/fragments/CircleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 177
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 178
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$002(Lcom/google/android/apps/plus/fragments/CircleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 225
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 14
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    const/4 v7, 0x0

    .line 235
    if-eqz p5, :cond_25

    .line 236
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$200(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 237
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 238
    .local v2, type:I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_25

    .line 239
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->access$100(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 240
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 253
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #type:I
    :goto_24
    return-void

    .line 245
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 246
    .local v0, checkedCount:I
    if-nez v0, :cond_2f

    .line 247
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_24

    .line 249
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0014

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_24
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 189
    .local v0, checkedCount:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0014

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    return v6
.end method
