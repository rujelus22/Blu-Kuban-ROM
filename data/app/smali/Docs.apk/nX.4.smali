.class public LnX;
.super Ljava/lang/Object;
.source "CreateDocumentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, LnX;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iput-object p2, p0, LnX;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, LnX;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->b(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LnX;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, LnX;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)V

    .line 162
    return-void
.end method
