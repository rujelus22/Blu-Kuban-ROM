.class Lcom/android/email/activity/MessageCompose$40;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 11545
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$40;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 8
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 11548
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$40;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$40;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 11550
    .local v0, ps:Lcom/android/emailcommon/service/PolicySet;
    packed-switch p2, :pswitch_data_36

    .line 11564
    :cond_1d
    :goto_1d
    return-void

    .line 11552
    :pswitch_1e
    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-nez v1, :cond_1d

    .line 11553
    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$40;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z
    invoke-static {v1, p3}, Lcom/android/email/activity/MessageCompose;->access$12202(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_1d

    .line 11557
    :pswitch_2a
    if-eqz v0, :cond_30

    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-nez v1, :cond_1d

    .line 11558
    :cond_30
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$40;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z
    invoke-static {v1, p3}, Lcom/android/email/activity/MessageCompose;->access$12302(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_1d

    .line 11550
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method
