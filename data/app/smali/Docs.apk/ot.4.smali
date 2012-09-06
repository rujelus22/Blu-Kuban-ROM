.class public Lot;
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
    .line 120
    iput-object p1, p0, Lot;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    iput-object p2, p0, Lot;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lot;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lot;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lot;->a:Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a:Low;

    invoke-interface {v0}, Low;->e()V

    .line 125
    return-void
.end method
