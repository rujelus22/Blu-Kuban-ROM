.class Lcom/android/contacts/detail/ContactDetailFragment$5;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$numbers:Ljava/util/ArrayList;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1019
    :goto_8
    return-void

    .line 1016
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    const v3, 0x7f0a02ad

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$numbers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_8
.end method
