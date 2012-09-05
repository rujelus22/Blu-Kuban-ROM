.class Lcom/android/email/activity/cba/ImportCertificate$4;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate;->createSingleEditLineDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;

.field final synthetic val$dialogEditTextRename:Landroid/widget/EditText;

.field final synthetic val$id:I

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;ILandroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    iput p2, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$id:I

    iput-object p3, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$text:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 413
    iget v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$id:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 415
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 435
    :cond_17
    :goto_17
    return-void

    .line 421
    :cond_18
    iget v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$id:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 423
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 429
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 431
    .local v0, length:I
    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$4;->val$dialogEditTextRename:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_17
.end method
