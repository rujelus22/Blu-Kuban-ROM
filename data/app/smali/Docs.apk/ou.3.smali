.class public Lou;
.super Ljava/lang/Object;
.source "DocumentOpenerErrorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lou;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    iput-object p2, p0, Lou;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lou;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lou;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lou;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 133
    return-void
.end method
