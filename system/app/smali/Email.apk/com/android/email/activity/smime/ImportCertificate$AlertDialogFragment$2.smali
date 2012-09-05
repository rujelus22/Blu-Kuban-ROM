.class Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    iput p2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x3

    .line 379
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    const v3, 0x7f100292

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$1000(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    const v3, 0x7f100293

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getViewText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$1000(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, renameData:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->hideError()V
    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$1100(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;)V

    .line 386
    iget v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->val$id:I

    packed-switch v2, :pswitch_data_5e

    .line 407
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid Dialog Id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :pswitch_25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 391
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    const v3, 0x7f0804e6

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->showError(I)Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$1200(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Landroid/widget/TextView;

    .line 412
    :goto_33
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    iget v3, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->val$id:I

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->onDismissDialog(I)V
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$900(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)V

    .line 413
    return-void

    .line 393
    :cond_3b
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    #setter for: Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I
    invoke-static {v2, v4}, Lcom/android/email/activity/smime/ImportCertificate;->access$802(Lcom/android/email/activity/smime/ImportCertificate;I)I

    goto :goto_33

    .line 400
    :pswitch_45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 401
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    const v3, 0x7f0804e4

    #calls: Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->showError(I)Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->access$1200(Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;I)Landroid/widget/TextView;

    goto :goto_33

    .line 403
    :cond_54
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment$2;->this$0:Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/ImportCertificate$AlertDialogFragment;->getOwner()Lcom/android/email/activity/smime/ImportCertificate;

    move-result-object v2

    #setter for: Lcom/android/email/activity/smime/ImportCertificate;->mDialogResult:I
    invoke-static {v2, v4}, Lcom/android/email/activity/smime/ImportCertificate;->access$802(Lcom/android/email/activity/smime/ImportCertificate;I)I

    goto :goto_33

    .line 386
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_25
    .end packed-switch
.end method
