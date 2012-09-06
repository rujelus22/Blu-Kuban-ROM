.class public Lpl;
.super Ljava/lang/Object;
.source "OperationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;Landroid/support/v4/app/FragmentActivity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lpl;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    iput-object p2, p0, Lpl;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lpl;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lpl;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lpl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lpl;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_17

    .line 146
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 148
    :cond_17
    return-void
.end method
