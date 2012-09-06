.class Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;
.super Ljava/lang/Object;
.source "HostedPhotosFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showContextualActionBarV11()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 945
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 958
    const/4 v0, 0x0

    .line 962
    :goto_8
    return v0

    .line 947
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->shareSelectedPhotos()V

    .line 950
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 962
    :goto_23
    const/4 v0, 0x1

    goto :goto_8

    .line 954
    :sswitch_25
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showDeleteConfirmationDialog()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    goto :goto_23

    .line 945
    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f0902f1 -> :sswitch_25
        0x7f090301 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 915
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 916
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100024

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 917
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$702(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 968
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;I)V

    .line 969
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 922
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 924
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 925
    .local v0, count:I
    const v4, 0x7f0e0001

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 928
    const v4, 0x7f090301

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 929
    .local v3, shareMenu:Landroid/view/MenuItem;
    const v4, 0x7f0902f1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 930
    .local v1, deleteMenu:Landroid/view/MenuItem;
    if-nez v0, :cond_3f

    .line 931
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    :goto_3e
    return v7

    .line 934
    :cond_3f
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 935
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 936
    const v4, 0x7f0e0014

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3e
.end method
