.class public Lpk;
.super Ljava/lang/Object;
.source "OperationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 132
    iput-object p1, p0, Lpk;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    iput-object p2, p0, Lpk;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lpk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lpk;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lpk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lpk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 137
    return-void
.end method
