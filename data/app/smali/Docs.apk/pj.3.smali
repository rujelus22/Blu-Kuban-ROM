.class public Lpj;
.super Ljava/lang/Object;
.source "OperationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lpj;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    iput-object p2, p0, Lpj;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lpj;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lpj;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lpj;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->p()V

    .line 128
    return-void
.end method
