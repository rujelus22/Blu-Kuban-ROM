.class Lcom/android/email/MessagingController$15;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:Ljava/util/ArrayList;

.field final synthetic val$orig_boxkey:J

.field final synthetic val$source_accountId:J

.field final synthetic val$source_server_type:I

.field final synthetic val$source_trashMailboxId:J

.field final synthetic val$target_accountId:J

.field final synthetic val$target_boxkey:J

.field final synthetic val$target_server_type:I


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Ljava/util/ArrayList;JJJJJII)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3236
    iput-object p1, p0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$15;->val$messageId:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    iput-wide p5, p0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    iput-wide p9, p0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    iput-wide p11, p0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    iput p13, p0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    iput p14, p0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 3238
    const/4 v9, 0x1

    .line 3241
    .local v9, bret:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->val$messageId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    move/from16 v28, v9

    .end local v9           #bret:Z
    .end local v30           #i$:Ljava/util/Iterator;
    .local v28, bret:Z
    :goto_b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_212

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 3243
    .local v29, cur_messageId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v33

    .line 3245
    .local v33, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v33, :cond_5a

    .line 3246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto :goto_b

    .line 3250
    :cond_5a
    move-object/from16 v0, v33

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a1

    .line 3251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #calls: Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z
    invoke-static {v2, v3, v4}, Lcom/android/email/MessagingController;->access$800(Lcom/android/email/MessagingController;J)Z

    move-result v28

    .line 3252
    if-nez v28, :cond_a1

    .line 3253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto/16 :goto_b

    .line 3261
    :cond_a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 3263
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 3265
    .local v27, attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAllAttachmentId(Landroid/content/Context;J)Ljava/util/HashSet;

    move-result-object v27

    .line 3268
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fa

    .line 3269
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_d6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 3270
    .local v26, attachId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/MessagingController;->loadAttachmentSyncronous(JJJJ)Z

    goto :goto_d6

    .line 3277
    .end local v26           #attachId:Ljava/lang/Long;
    .end local v27           #attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v31           #i$:Ljava/util/Iterator;
    :cond_fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v2

    if-nez v2, :cond_142

    .line 3279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto/16 :goto_b

    .line 3287
    :cond_142
    :try_start_142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 3289
    .local v7, target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v7, :cond_1c5

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_184
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_142 .. :try_end_184} :catch_186

    goto/16 :goto_b

    .line 3302
    .end local v7           #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_186
    move-exception v32

    move/from16 v9, v28

    .line 3306
    .end local v28           #bret:Z
    .restart local v9       #bret:Z
    .local v32, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v25, v0

    invoke-virtual/range {v10 .. v25}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    move/from16 v28, v9

    .line 3309
    .end local v9           #bret:Z
    .restart local v28       #bret:Z
    goto/16 :goto_b

    .line 3296
    .end local v32           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1c5
    :try_start_1c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    #calls: Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    invoke-static/range {v2 .. v9}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    :try_end_1d8
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1c5 .. :try_end_1d8} :catch_186

    move-result v9

    .line 3299
    .end local v28           #bret:Z
    .restart local v9       #bret:Z
    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v23, v0

    invoke-virtual/range {v8 .. v23}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_20e
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1d9 .. :try_end_20e} :catch_213

    move/from16 v28, v9

    .line 3311
    .end local v9           #bret:Z
    .restart local v28       #bret:Z
    goto/16 :goto_b

    .line 3312
    .end local v7           #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v29           #cur_messageId:Ljava/lang/Long;
    .end local v33           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_212
    return-void

    .line 3302
    .end local v28           #bret:Z
    .restart local v7       #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v9       #bret:Z
    .restart local v29       #cur_messageId:Ljava/lang/Long;
    .restart local v33       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_213
    move-exception v32

    goto/16 :goto_189
.end method
