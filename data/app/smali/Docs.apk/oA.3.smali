.class public LoA;
.super Ljava/lang/Object;
.source "EditTitleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, LoA;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    iput-object p2, p0, LoA;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iput-object p3, p0, LoA;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, LoA;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->e(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LoA;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, LoA;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_17

    .line 123
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    :cond_17
    return-void
.end method
