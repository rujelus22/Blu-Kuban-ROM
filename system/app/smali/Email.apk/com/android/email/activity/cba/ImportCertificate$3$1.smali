.class Lcom/android/email/activity/cba/ImportCertificate$3$1;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate$3;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$renameData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate$3;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iput-object p2, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->val$renameData:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->val$data:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->val$id:I

    packed-switch v0, :pswitch_data_44

    .line 354
    :goto_8
    return-void

    .line 329
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->val$renameData:Ljava/lang/String;

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->renameCertificate(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->access$700(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/cba/ImportCertificate;->removeDialog(I)V

    .line 331
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$3$1$1;-><init>(Lcom/android/email/activity/cba/ImportCertificate$3$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 341
    :pswitch_26
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->val$data:Ljava/lang/String;

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->importCertificate(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->access$800(Lcom/android/email/activity/cba/ImportCertificate;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/cba/ImportCertificate;->removeDialog(I)V

    .line 344
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    new-instance v1, Lcom/android/email/activity/cba/ImportCertificate$3$1$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/cba/ImportCertificate$3$1$2;-><init>(Lcom/android/email/activity/cba/ImportCertificate$3$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 326
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_9
    .end packed-switch
.end method
