.class Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;
.super Ljava/lang/Object;
.source "DataBrowseDialogFavoritesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;

.field final synthetic val$setAsDefaultCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    :goto_e
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->mChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;->access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment;Z)Z

    .line 129
    return-void

    .line 126
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFavoritesFragment$2;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e
.end method
