.class final Lcom/android/emailcommon/utility/Utility$7;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method private updateLastSeenMessageKeyForAccount(J)V
    .registers 25
    .parameter "accountId"

    .prologue
    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailcommon/utility/Utility$7;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 905
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/high16 v3, 0x1000

    cmp-long v3, p1, v3

    if-nez v3, :cond_3b

    .line 906
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 908
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_21

    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 910
    :cond_21
    :goto_21
    :try_start_21
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 911
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 912
    .local v12, id:J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/emailcommon/utility/Utility$7;->updateLastSeenMessageKeyForAccount(J)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_32

    goto :goto_21

    .line 915
    .end local v12           #id:J
    :catchall_32
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 953
    .end local v11           #c:Landroid/database/Cursor;
    :cond_3a
    :goto_3a
    return-void

    .line 917
    :cond_3b
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_3a

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailcommon/utility/Utility$7;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 922
    .local v14, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_3a

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailcommon/utility/Utility$7;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "_id DESC"

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 938
    .local v15, messageId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/emailcommon/utility/Utility$7;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "lastSeenMessageKey"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 943
    .local v17, oldLastSeenMessageId:J
    cmp-long v3, v15, v17

    if-eqz v3, :cond_3a

    .line 944
    invoke-virtual {v14}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 945
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "lastSeenMessageKey"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 946
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3a
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 957
    iget-wide v0, p0, Lcom/android/emailcommon/utility/Utility$7;->val$accountId:J

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/utility/Utility$7;->updateLastSeenMessageKeyForAccount(J)V

    .line 958
    return-void
.end method
