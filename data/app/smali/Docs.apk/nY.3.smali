.class public LnY;
.super Ljava/lang/Object;
.source "CreateDocumentDialogFragment.java"

# interfaces
.implements Loa;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, LnY;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iput-object p2, p0, LnY;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 216
    sget v0, LcY;->create_new_ocr_doc:I

    return v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, LnY;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, LnY;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    iget-object v1, p0, LnY;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()V

    .line 211
    iget-object v1, p0, LnY;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 221
    invoke-static {p1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
