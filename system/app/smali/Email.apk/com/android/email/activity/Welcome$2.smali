.class Lcom/android/email/activity/Welcome$2;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanUp()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;
    invoke-static {v0, v1}, Lcom/android/email/activity/Welcome;->access$102(Lcom/android/email/activity/Welcome;Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder;

    .line 391
    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 395
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$2;->cleanUp()V

    .line 399
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mAccountId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->access$202(Lcom/android/email/activity/Welcome;J)J

    .line 400
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mMailboxId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->access$302(Lcom/android/email/activity/Welcome;J)J

    .line 401
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mMessageId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->access$402(Lcom/android/email/activity/Welcome;J)J

    .line 402
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/Welcome;->access$502(Lcom/android/email/activity/Welcome;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->resolveAccount()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$000(Lcom/android/email/activity/Welcome;)V

    .line 406
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$2;->cleanUp()V

    .line 418
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->showSecurityHoldDialog(Landroid/app/Activity;J)V

    .line 419
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    invoke-virtual {v0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 420
    return-void
.end method

.method public onMailboxFound(JJ)V
    .registers 6
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$2;->cleanUp()V

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/Welcome$2;->this$0:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->startEmailActivity()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$600(Lcom/android/email/activity/Welcome;)V

    .line 428
    return-void
.end method

.method public onMailboxNotFound(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome$2;->onAccountNotFound()V

    .line 412
    return-void
.end method
