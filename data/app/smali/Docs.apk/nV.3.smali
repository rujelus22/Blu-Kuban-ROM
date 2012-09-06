.class public LnV;
.super Ljava/lang/Object;
.source "ContentSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, LnV;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    iput-object p2, p0, LnV;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, LnV;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->b(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LnV;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, LnV;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    sget v1, LcS;->dont_show_again:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 66
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 67
    iget-object v0, p0, LnV;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LZJ;

    invoke-interface {v0}, LZJ;->b()V

    .line 70
    :cond_26
    iget-object v0, p0, LnV;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Z)V

    .line 71
    return-void
.end method
