.class public LnZ;
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
    .line 224
    iput-object p1, p0, LnZ;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iput-object p2, p0, LnZ;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 238
    sget v0, LcY;->create_new_from_upload:I

    return v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, LnZ;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:LdE;

    const-string v1, "/createNewFromUpload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, LnZ;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Z)Z

    .line 233
    iget-object v1, p0, LnZ;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method
