.class Lcom/android/exchange/adapter/FolderSyncParser$1;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderSyncParser;

.field final synthetic val$addMailboxes:Ljava/util/ArrayList;

.field final synthetic val$initialSync:Z

.field final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iput-object p2, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    iput-object p4, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 568
    :try_start_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v16, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v15, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v13, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    const/4 v12, 0x0

    .line 574
    .local v12, mailboxCommitCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/provider/Mailbox;

    .line 576
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v1, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_64

    .line 579
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :goto_3d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    if-eqz v1, :cond_1f

    add-int/lit8 v12, v12, 0x1

    const/16 v1, 0x14

    if-ne v12, v1, :cond_1f

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v0, v15, v13, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 587
    monitor-exit v17

    .line 629
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_63
    return-void

    .line 581
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_64
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 628
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v12           #mailboxCommitCount:I
    .end local v13           #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v15           #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v16           #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :catchall_6a
    move-exception v1

    monitor-exit v17
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6a

    throw v1

    .line 590
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12       #mailboxCommitCount:I
    .restart local v13       #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v15       #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v16       #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :cond_6d
    :try_start_6d
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 591
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 593
    const/4 v12, 0x0

    goto :goto_1f

    .line 597
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_7c
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "syncKey"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v0, v15, v13, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 606
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 608
    .local v7, accountSelector:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$400(Lcom/android/exchange/adapter/FolderSyncParser;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    :cond_f6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$500(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_102
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 613
    .local v14, parentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "parentServerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_124
    .catchall {:try_start_6d .. :try_end_124} :catchall_6a

    move-result-object v8

    .line 617
    .local v8, c:Landroid/database/Cursor;
    :try_start_125
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_134

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v7}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_134
    .catchall {:try_start_125 .. :try_end_134} :catchall_138

    .line 622
    :cond_134
    :try_start_134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_102

    :catchall_138
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 627
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #parentServerId:Ljava/lang/String;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 628
    monitor-exit v17
    :try_end_14f
    .catchall {:try_start_134 .. :try_end_14f} :catchall_6a

    goto/16 :goto_63
.end method
