.class Lcom/android/email/activity/MessageListXL$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 551
    const-string v0, "Email"

    const-string v7, "MessageOpenReceiver()"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :try_start_7
    const-string v9, "ACCOUNT_ID"

    .line 554
    .local v9, EXTRA_ACCOUNT_ID:Ljava/lang/String;
    const-string v10, "MAILBOX_ID"

    .line 555
    .local v10, EXTRA_MAILBOX_ID:Ljava/lang/String;
    const-string v11, "MESSAGE_ID"

    .line 557
    .local v11, EXTRA_MESSAGE_ID:Ljava/lang/String;
    const-string v0, "ACCOUNT_ID"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 558
    .local v1, accountId:J
    const-string v0, "MAILBOX_ID"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 559
    .local v3, mailboxId:J
    const-string v0, "MESSAGE_ID"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 561
    .local v5, messageId:J
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v7

    cmp-long v0, v1, v7

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$400(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-nez v0, :cond_59

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_59

    .line 562
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$500(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_48

    .line 574
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    .end local v9           #EXTRA_ACCOUNT_ID:Ljava/lang/String;
    .end local v10           #EXTRA_MAILBOX_ID:Ljava/lang/String;
    .end local v11           #EXTRA_MESSAGE_ID:Ljava/lang/String;
    :cond_47
    :goto_47
    return-void

    .line 565
    .restart local v1       #accountId:J
    .restart local v3       #mailboxId:J
    .restart local v5       #messageId:J
    .restart local v9       #EXTRA_ACCOUNT_ID:Ljava/lang/String;
    .restart local v10       #EXTRA_MAILBOX_ID:Ljava/lang/String;
    .restart local v11       #EXTRA_MESSAGE_ID:Ljava/lang/String;
    :cond_48
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget v7, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_47

    .line 571
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    .end local v9           #EXTRA_ACCOUNT_ID:Ljava/lang/String;
    .end local v10           #EXTRA_MAILBOX_ID:Ljava/lang/String;
    .end local v11           #EXTRA_MESSAGE_ID:Ljava/lang/String;
    :catch_54
    move-exception v12

    .line 572
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 568
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v1       #accountId:J
    .restart local v3       #mailboxId:J
    .restart local v5       #messageId:J
    .restart local v9       #EXTRA_ACCOUNT_ID:Ljava/lang/String;
    .restart local v10       #EXTRA_MAILBOX_ID:Ljava/lang/String;
    .restart local v11       #EXTRA_MESSAGE_ID:Ljava/lang/String;
    :cond_59
    const-wide/16 v7, -0x1

    cmp-long v0, v1, v7

    if-eqz v0, :cond_47

    .line 569
    :try_start_5f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$1;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_54

    goto :goto_47
.end method
