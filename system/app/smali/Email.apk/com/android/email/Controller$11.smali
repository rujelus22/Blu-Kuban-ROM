.class Lcom/android/email/Controller$11;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->moveMessage(J[JJ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$messageIds:[J

.field final synthetic val$targetAccountId:J

.field final synthetic val$targetMailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JJJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2382
    iput-object p1, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$11;->val$messageIds:[J

    iput-wide p3, p0, Lcom/android/email/Controller$11;->val$targetMailboxId:J

    iput-wide p5, p0, Lcom/android/email/Controller$11;->val$targetAccountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 2384
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 2385
    .local v14, fromAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v15}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 2387
    .local v15, fromBox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    .local v13, arr$:[J
    array-length v0, v13

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_13
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3b

    aget-wide v17, v13, v16

    .line 2388
    .local v17, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v14

    .line 2389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 2390
    if-eqz v14, :cond_c8

    if-eqz v15, :cond_c8

    .line 2393
    .end local v17           #id:J
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/Controller$11;->val$targetMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v20

    .line 2397
    .local v20, toBoxType:I
    if-eqz v15, :cond_a4

    if-ltz v20, :cond_a4

    .line 2398
    const-string v2, "Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMessage() fromBoxType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toBoxType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_cc

    if-eqz v20, :cond_cc

    .line 2402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    invoke-static {v5}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 2414
    :cond_a4
    :goto_a4
    if-eqz v14, :cond_c7

    if-eqz v15, :cond_c7

    .line 2415
    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/Controller$11;->val$targetAccountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_ed

    .line 2421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/Controller$11;->val$targetMailboxId:J

    iget-wide v9, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v11, 0x0

    move-object v4, v14

    #calls: Lcom/android/email/Controller;->moveMessageToSameAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    invoke-static/range {v2 .. v11}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V

    .line 2430
    :cond_c7
    :goto_c7
    return-void

    .line 2387
    .end local v20           #toBoxType:I
    .restart local v17       #id:J
    :cond_c8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_13

    .line 2406
    .end local v17           #id:J
    .restart local v20       #toBoxType:I
    :cond_cc
    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v2, :cond_a4

    if-nez v20, :cond_a4

    .line 2408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    invoke-static {v5}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_a4

    .line 2426
    :cond_ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$11;->val$messageIds:[J

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/Controller$11;->val$targetAccountId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/email/Controller$11;->val$targetMailboxId:J

    iget-wide v11, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v4, v14

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/Controller;->moveMessageToOtherAccount([JLcom/android/emailcommon/provider/EmailContent$Account;JJJJ)V

    goto :goto_c7
.end method
