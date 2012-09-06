.class public Loy;
.super Ljava/lang/Object;
.source "EditTitleDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    iput-object p2, p0, Loy;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->c(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Loy;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Z)Z

    .line 99
    iget-object v0, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lor;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 100
    iget-object v0, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lor;

    move-result-object v0

    iget-object v1, p0, Loy;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lor;->a(Ljava/lang/String;)V

    .line 102
    :cond_30
    return-void
.end method
