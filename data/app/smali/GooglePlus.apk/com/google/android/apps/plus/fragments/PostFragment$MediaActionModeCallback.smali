.class Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 274
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 278
    :goto_12
    return-void

    .line 276
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 317
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 330
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 319
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1200(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$800(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 321
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_7

    .line 317
    nop

    :pswitch_data_1e
    .packed-switch 0x7f090306
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 6
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1002(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 295
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100029

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const v2, 0x7f0801ec

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;I)V

    .line 299
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 7
    .parameter "actionMode"

    .prologue
    .line 338
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1002(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 339
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 340
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 341
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_10

    .line 342
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_10

    .line 345
    .end local v1           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v2           #v:Landroid/view/View;
    :cond_2f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 346
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 354
    return-void
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 4
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method
