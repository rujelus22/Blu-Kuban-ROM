.class Lcom/android/email/Controller$14;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:Z

.field final synthetic val$currentAccountId:J

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JLjava/lang/String;ZJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3297
    iput-object p1, p0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$14;->val$messageIds:[J

    iput-object p3, p0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/Controller$14;->val$columnValue:Z

    iput-wide p5, p0, Lcom/android/email/Controller$14;->val$currentAccountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 3302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 3303
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v16, :cond_16

    .line 3407
    :cond_15
    :goto_15
    return-void

    .line 3306
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 3307
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v8, :cond_8b

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8b

    .line 3312
    :cond_35
    const-wide/16 v9, -0x1

    .line 3313
    .local v9, accountIdHash:J
    :try_start_37
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3314
    .local v12, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/Controller$14;->val$columnValue:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    .local v11, arr$:[J
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_51
    if-ge v14, v15, :cond_8b

    aget-wide v17, v11, v14

    .line 3316
    .local v17, messageId:J
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 3318
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J
    :try_end_7d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_37 .. :try_end_7d} :catch_87

    move-result-wide v9

    .line 3325
    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_15

    .line 3315
    add-int/lit8 v14, v14, 0x1

    goto :goto_51

    .line 3347
    .end local v11           #arr$:[J
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v17           #messageId:J
    .end local v19           #uri:Landroid/net/Uri;
    :catch_87
    move-exception v13

    .line 3348
    .local v13, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v13}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 3405
    .end local v9           #accountIdHash:J
    .end local v13           #e:Ljava/util/ConcurrentModificationException;
    :cond_8b
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/email/Controller$14;->val$columnValue:Z

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/Controller$14;->val$currentAccountId:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->setMessageBoolean([JLjava/lang/String;ZJ)V

    goto/16 :goto_15
.end method
