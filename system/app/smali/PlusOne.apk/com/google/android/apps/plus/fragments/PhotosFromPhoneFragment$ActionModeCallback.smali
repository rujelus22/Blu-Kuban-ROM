.class Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "PhotosFromPhoneFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 117
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 121
    :goto_12
    return-void

    .line 119
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "actionModeStub"
    .parameter "menuItem"

    .prologue
    .line 167
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_54

    .line 185
    :goto_7
    const/4 v3, 0x1

    return v3

    .line 169
    :pswitch_9
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->initiateSharing()V
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V

    goto :goto_7

    .line 172
    :pswitch_f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 173
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 174
    .local v0, count:I
    const v3, 0x7f0e0002

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e0004

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e000e

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const v7, 0x7f070169

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 180
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 181
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "delete_dialog"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_7

    .line 167
    nop

    :pswitch_data_54
    .packed-switch 0x7f0d01e9
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 5
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$002(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 138
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100015

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 5
    .parameter "actionModeStub"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 195
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 196
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 201
    .end local v0           #activity:Landroid/app/Activity;
    :goto_15
    return-void

    .line 198
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$002(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-static {}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$400()I

    move-result v2

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;I)V

    goto :goto_15
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 210
    return-void
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 13
    .parameter "actionModeStub"
    .parameter "menu"

    .prologue
    const v9, 0x7f0d01ea

    const v8, 0x7f0d01e9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 148
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 150
    .local v0, quantity:I
    if-nez v0, :cond_39

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, title:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    :goto_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    return v6

    .line 155
    .end local v1           #title:Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0001

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #title:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2f
.end method
