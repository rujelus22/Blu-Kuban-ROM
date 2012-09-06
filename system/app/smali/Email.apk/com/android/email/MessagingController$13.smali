.class Lcom/android/email/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$13;->val$tag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v6, -0x1

    .line 2134
    const-wide/16 v4, -0x1

    .line 2135
    .local v4, inboxId:J
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 2136
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v8, :cond_4a

    .line 2137
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v10

    .line 2139
    .local v10, sentboxId:J
    cmp-long v0, v10, v6

    if-eqz v0, :cond_28

    .line 2140
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/Account;J)V

    .line 2144
    :cond_28
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 2145
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4a

    .line 2146
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 2148
    .local v9, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_4a

    .line 2149
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    invoke-static {v0, v8, v9}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 2153
    .end local v9           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v10           #sentboxId:J
    :cond_4a
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$13;->val$tag:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 2154
    return-void
.end method
