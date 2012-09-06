.class Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "SuggestedPeopleFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 129
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 133
    :goto_12
    return-void

    .line 131
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 6

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, checkedCount:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 222
    .local v2, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 223
    .local v0, checkItemsArrayCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v0, :cond_1b

    .line 224
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 223
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 228
    :cond_1b
    return v1
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    const/4 v8, 0x1

    .line 172
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    iget-object v6, v6, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 173
    .local v1, checkedItems:Landroid/util/SparseBooleanArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 175
    .local v0, checkItemsArrayCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v0, :cond_37

    .line 176
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 177
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 178
    .local v5, position:I
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->access$100(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;)Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$SuggestedPeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 179
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v5           #position:I
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 183
    :cond_37
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f090309

    if-ne v6, v7, :cond_45

    .line 184
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {v6, v4}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->onDismissSuggestedPeople(Ljava/util/ArrayList;)V

    .line 187
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 189
    return v8
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->access$002(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 150
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100032

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->access$002(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 198
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 207
    .local v0, checkedCount:I
    if-nez v0, :cond_a

    .line 208
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 214
    :goto_9
    return-void

    .line 210
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_9
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->getCheckedItemCount()I

    move-result v0

    .line 161
    .local v0, checkedCount:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    return v6
.end method
