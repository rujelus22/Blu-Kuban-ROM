.class Lcom/android/email/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v3}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 262
    const/4 v11, 0x0

    .line 265
    .local v11, localFolderCursor:Landroid/database/Cursor;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v18

    .line 266
    .local v18, store:Lcom/android/email/mail/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Store;->updateFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v17

    .line 267
    .local v17, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 268
    .local v16, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, v17

    array-length v8, v0

    .local v8, count:I
    :goto_31
    if-ge v10, v8, :cond_41

    .line 269
    aget-object v2, v17, v10

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    .line 273
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController;->access$200()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 281
    :cond_70
    :goto_70
    :pswitch_70
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 282
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 284
    .local v14, mailboxPath:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 288
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 289
    .local v15, mailboxType:I
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 290
    .local v12, mailboxId:J
    packed-switch v15, :pswitch_data_f0

    .line 301
    :pswitch_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-static {v2, v3, v4, v12, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 305
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 307
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_14 .. :try_end_b8} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_b8} :catch_b9

    goto :goto_70

    .line 312
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v12           #mailboxId:J
    .end local v14           #mailboxPath:Ljava/lang/String;
    .end local v15           #mailboxType:I
    .end local v16           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v18           #store:Lcom/android/email/mail/Store;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_b9
    move-exception v9

    .line 313
    .local v9, e:Ljava/lang/Exception;
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_ba .. :try_end_cd} :catchall_e8

    .line 315
    if-eqz v11, :cond_d2

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 319
    .end local v9           #e:Ljava/lang/Exception;
    :cond_d2
    :goto_d2
    return-void

    .line 311
    .restart local v8       #count:I
    .restart local v10       #i:I
    .restart local v16       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v18       #store:Lcom/android/email/mail/Store;
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->listFoldersFinished(J)V
    :try_end_e2
    .catchall {:try_start_d3 .. :try_end_e2} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e2} :catch_b9

    .line 315
    if-eqz v11, :cond_d2

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_d2

    .line 315
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v16           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v18           #store:Lcom/android/email/mail/Store;
    :catchall_e8
    move-exception v2

    if-eqz v11, :cond_ee

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_ee
    throw v2

    .line 290
    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_70
        :pswitch_90
        :pswitch_90
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_90
        :pswitch_70
    .end packed-switch
.end method
