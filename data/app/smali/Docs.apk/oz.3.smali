.class public Loz;
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
    .line 104
    iput-object p1, p0, Loz;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    iput-object p2, p0, Loz;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Loz;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->d(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Loz;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Loz;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lor;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Loz;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lor;

    move-result-object v0

    invoke-interface {v0}, Lor;->a()V

    .line 111
    :cond_1c
    return-void
.end method
