.class Lcom/android/email/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->updateMailbox(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$3;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 419
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$3;->val$mailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 421
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    iget v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_23

    .line 426
    :cond_22
    :goto_22
    return-void

    .line 425
    :cond_23
    iget-object v2, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v2}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Controller$3;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v3}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V

    goto :goto_22
.end method
