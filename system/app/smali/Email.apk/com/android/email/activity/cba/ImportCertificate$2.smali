.class Lcom/android/email/activity/cba/ImportCertificate$2;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate;->createOnClickListener(I)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    iput p2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x3

    .line 266
    const/4 v2, -0x2

    if-ne p2, v2, :cond_a

    .line 267
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/cba/ImportCertificate;->onCancel(Landroid/content/DialogInterface;)V

    .line 302
    :goto_9
    return-void

    .line 270
    :cond_a
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f100292

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->getViewText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f100293

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->getViewText(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$300(Lcom/android/email/activity/cba/ImportCertificate;I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, renameData:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->hideError()V
    invoke-static {v2}, Lcom/android/email/activity/cba/ImportCertificate;->access$400(Lcom/android/email/activity/cba/ImportCertificate;)V

    .line 277
    iget v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->val$id:I

    packed-switch v2, :pswitch_data_58

    .line 297
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid Dialog Id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :pswitch_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 280
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f0804e6

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->showError(I)Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$500(Lcom/android/email/activity/cba/ImportCertificate;I)Landroid/widget/TextView;

    goto :goto_9

    .line 282
    :cond_3d
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #setter for: Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I
    invoke-static {v2, v4}, Lcom/android/email/activity/cba/ImportCertificate;->access$602(Lcom/android/email/activity/cba/ImportCertificate;I)I

    goto :goto_9

    .line 289
    :pswitch_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 290
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const v3, 0x7f0804e4

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->showError(I)Landroid/widget/TextView;
    invoke-static {v2, v3}, Lcom/android/email/activity/cba/ImportCertificate;->access$500(Lcom/android/email/activity/cba/ImportCertificate;I)Landroid/widget/TextView;

    goto :goto_9

    .line 292
    :cond_52
    iget-object v2, p0, Lcom/android/email/activity/cba/ImportCertificate$2;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #setter for: Lcom/android/email/activity/cba/ImportCertificate;->mDialogResult:I
    invoke-static {v2, v4}, Lcom/android/email/activity/cba/ImportCertificate;->access$602(Lcom/android/email/activity/cba/ImportCertificate;I)I

    goto :goto_9

    .line 277
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2e
    .end packed-switch
.end method
