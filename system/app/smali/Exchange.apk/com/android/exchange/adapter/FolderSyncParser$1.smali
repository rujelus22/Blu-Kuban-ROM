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
    .line 741
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iput-object p2, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    iput-object p4, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 748
    :try_start_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v15, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v14, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v12, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 754
    .local v10, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v1, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 816
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v12           #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .end local v14           #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .end local v15           #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :catchall_30
    move-exception v1

    monitor-exit v16
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1

    .line 757
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .restart local v14       #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .restart local v15       #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_33
    const/4 v11, 0x0

    .line 758
    .local v11, mailboxCommitCount:I
    :try_start_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3c
    :goto_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 760
    .restart local v10       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget v1, v1, Lcom/android/exchange/adapter/Parser;->type:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget v1, v1, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_83

    .line 761
    :cond_5b
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :goto_5e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    if-eqz v1, :cond_3c

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x14

    if-ne v11, v1, :cond_3c

    .line 768
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v15, v14, v12, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$500(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 770
    monitor-exit v16

    .line 817
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_82
    return-void

    .line 763
    .restart local v10       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_83
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 773
    :cond_87
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 774
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 776
    const/4 v11, 0x0

    goto :goto_3c

    .line 780
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_96
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "syncKey"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v15, v14, v12, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$500(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 788
    monitor-exit v16

    goto :goto_82

    .line 791
    :cond_e2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$600(Lcom/android/exchange/adapter/FolderSyncParser;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    :cond_110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$700(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 799
    .local v13, parentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "parentServerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13e
    .catchall {:try_start_34 .. :try_end_13e} :catchall_30

    move-result-object v7

    .line 805
    .local v7, c:Landroid/database/Cursor;
    :try_start_13f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_14e
    .catchall {:try_start_13f .. :try_end_14e} :catchall_152

    .line 809
    :cond_14e
    :try_start_14e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_11c

    :catchall_152
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 815
    .end local v7           #c:Landroid/database/Cursor;
    .end local v13           #parentServerId:Ljava/lang/String;
    :cond_157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 816
    monitor-exit v16
    :try_end_169
    .catchall {:try_start_14e .. :try_end_169} :catchall_30

    goto/16 :goto_82
.end method
