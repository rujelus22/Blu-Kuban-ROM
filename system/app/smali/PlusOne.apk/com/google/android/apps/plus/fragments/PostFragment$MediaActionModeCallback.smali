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

.field private final mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 5
    .parameter
    .parameter "mediaRef"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 287
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 291
    :goto_14
    return-void

    .line 289
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_14
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 297
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
    .line 330
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 343
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 332
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$700(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 334
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_7

    .line 330
    nop

    :pswitch_data_1a
    .packed-switch 0x7f0d01ed
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 6
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$902(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 307
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 308
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100018

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const v2, 0x7f070154

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$902(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 352
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 360
    return-void
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 4
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method
