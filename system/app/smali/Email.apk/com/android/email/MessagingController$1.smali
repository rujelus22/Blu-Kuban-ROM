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

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 42

    .prologue
    .line 430
    const/16 v18, 0x0

    .line 436
    .local v18, localFolderCursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v36

    .line 438
    .local v36, store:Lcom/android/email/mail/Store;
    invoke-virtual/range {v36 .. v36}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v33

    .line 440
    .local v33, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v31, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, v33

    array-length v9, v0

    .local v9, count:I
    :goto_2c
    if-ge v14, v9, :cond_3c

    .line 442
    aget-object v2, v33, v14

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v14, v14, 0x1

    goto :goto_2c

    .line 445
    :cond_3c
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v21, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v20, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 452
    :goto_73
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 453
    new-instance v16, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 454
    .local v16, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catchall {:try_start_2 .. :try_end_96} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_96} :catch_97

    goto :goto_73

    .line 581
    .end local v9           #count:I
    .end local v14           #i:I
    .end local v16           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v20           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v31           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v33           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v36           #store:Lcom/android/email/mail/Store;
    :catch_97
    move-exception v13

    .line 583
    .local v13, e:Ljava/lang/Exception;
    :try_start_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_11b

    .line 585
    if-eqz v18, :cond_ae

    .line 586
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 589
    .end local v13           #e:Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    return-void

    .line 460
    .restart local v9       #count:I
    .restart local v14       #i:I
    .restart local v20       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v31       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v33       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #store:Lcom/android/email/mail/Store;
    :cond_af
    :try_start_af
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_275

    .line 467
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v24, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 469
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_cd
    :pswitch_cd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_122

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 470
    .local v23, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 474
    .local v22, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_296

    .line 484
    :pswitch_ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 490
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 492
    .local v38, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_af .. :try_end_11a} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_11a} :catch_97

    goto :goto_cd

    .line 585
    .end local v9           #count:I
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v22           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v23           #localNameToDrop:Ljava/lang/String;
    .end local v24           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v31           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v33           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v36           #store:Lcom/android/email/mail/Store;
    .end local v38           #uri:Landroid/net/Uri;
    :catchall_11b
    move-exception v2

    if-eqz v18, :cond_121

    .line 586
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_121
    throw v2

    .line 498
    .restart local v9       #count:I
    .restart local v14       #i:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v24       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v31       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v33       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #store:Lcom/android/email/mail/Store;
    :cond_122
    :try_start_122
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v25, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 502
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_132
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 503
    .local v34, remoteNameToAdd:Ljava/lang/String;
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 504
    .local v8, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v32

    .line 505
    .local v32, remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 508
    const-wide/16 v2, -0x1

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 512
    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 520
    const/16 v2, 0x19

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 521
    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v2

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 523
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 528
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v32           #remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    .end local v34           #remoteNameToAdd:Ljava/lang/String;
    :cond_18f
    const/4 v14, 0x0

    :goto_190
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_272

    .line 529
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 530
    .restart local v8       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 531
    .local v12, displayName:Ljava/lang/String;
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    .line 532
    .local v11, delimiter:Ljava/lang/String;
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_21c

    .line 533
    invoke-static {v11}, Lcom/android/emailcommon/utility/Utility;->makeVaildRegularExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 534
    .local v35, splitDelimiter:Ljava/lang/String;
    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 535
    .local v26, nameArray:[Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    .line 536
    .local v37, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_21c

    .line 537
    const-wide/16 v27, -0x1

    .line 538
    .local v27, parentKey:J
    move-object/from16 v0, v26

    array-length v2, v0

    add-int/lit8 v9, v2, -0x1

    .line 539
    const/16 v17, 0x0

    .local v17, j:I
    :goto_1c9
    move/from16 v0, v17

    if-ge v0, v9, :cond_1e2

    .line 540
    aget-object v2, v26, v17

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    add-int/lit8 v2, v9, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_1df

    .line 542
    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    :cond_1df
    add-int/lit8 v17, v17, 0x1

    goto :goto_1c9

    .line 545
    :cond_1e2
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    .line 546
    .local v30, parentName:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_248

    .line 547
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1f0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_218

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 548
    .local v19, localFolderName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 550
    .restart local v22       #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 551
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v27, v0

    .line 564
    .end local v19           #localFolderName:Ljava/lang/String;
    .end local v22           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_218
    :goto_218
    move-wide/from16 v0, v27

    iput-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 567
    .end local v17           #j:I
    .end local v26           #nameArray:[Ljava/lang/String;
    .end local v27           #parentKey:J
    .end local v30           #parentName:Ljava/lang/String;
    .end local v35           #splitDelimiter:Ljava/lang/String;
    .end local v37           #strBuf:Ljava/lang/StringBuffer;
    :cond_21c
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 569
    const-string v2, "flagVisible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 570
    const-string v2, "parentKey"

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 528
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_190

    .line 556
    .end local v10           #cv:Landroid/content/ContentValues;
    .restart local v17       #j:I
    .restart local v26       #nameArray:[Ljava/lang/String;
    .restart local v27       #parentKey:J
    .restart local v30       #parentName:Ljava/lang/String;
    .restart local v35       #splitDelimiter:Ljava/lang/String;
    .restart local v37       #strBuf:Ljava/lang/StringBuffer;
    :cond_248
    const/16 v17, 0x0

    :goto_24a
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_218

    .line 557
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 558
    .local v29, parentMailBox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 559
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v27, v0

    .line 560
    goto :goto_218

    .line 556
    :cond_26f
    add-int/lit8 v17, v17, 0x1

    goto :goto_24a

    .line 573
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #delimiter:Ljava/lang/String;
    .end local v12           #displayName:Ljava/lang/String;
    .end local v17           #j:I
    .end local v26           #nameArray:[Ljava/lang/String;
    .end local v27           #parentKey:J
    .end local v29           #parentMailBox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v30           #parentName:Ljava/lang/String;
    .end local v35           #splitDelimiter:Ljava/lang/String;
    .end local v37           #strBuf:Ljava/lang/StringBuffer;
    :cond_272
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 576
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v24           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25           #mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_275
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 577
    const/16 v21, 0x0

    .line 578
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    .line 579
    const/16 v20, 0x0

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->listFoldersFinished(J)V
    :try_end_28e
    .catchall {:try_start_122 .. :try_end_28e} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_28e} :catch_97

    .line 585
    if-eqz v18, :cond_ae

    .line 586
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_ae

    .line 474
    nop

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_ea
        :pswitch_ea
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
    .end packed-switch
.end method
