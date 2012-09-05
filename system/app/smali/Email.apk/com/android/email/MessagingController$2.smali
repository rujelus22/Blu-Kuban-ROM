.class Lcom/android/email/MessagingController$2;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountKey:J

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$mailboxName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$2;->val$accountKey:J

    iput-object p4, p0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 50

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$2;->val$accountKey:J

    .line 606
    .local v3, accountId:J
    const/16 v19, 0x0

    .line 607
    .local v19, folderpath:Ljava/lang/String;
    const-string v17, ""

    .line 608
    .local v17, delimiter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_29

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_97

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v17

    .line 617
    :cond_29
    :goto_29
    if-eqz v19, :cond_9a

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, newMailboxName:Ljava/lang/String;
    :goto_48
    const/16 v24, 0x0

    .line 623
    .local v24, localFolderCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 625
    .local v15, createSuccess:Z
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v42

    .line 626
    .local v42, store:Lcom/android/email/mail/Store;
    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v36

    .line 627
    .local v36, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    const/16 v39, 0x0

    .line 628
    .local v39, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v27, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 630
    .local v26, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v46, 0x0

    .line 631
    .local v46, uri:Landroid/net/Uri;
    if-nez v36, :cond_9f

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_91
    .catchall {:try_start_4b .. :try_end_91} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_91} :catch_158

    .line 823
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 827
    .end local v26           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v36           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v39           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v42           #store:Lcom/android/email/mail/Store;
    .end local v46           #uri:Landroid/net/Uri;
    :cond_96
    :goto_96
    return-void

    .line 613
    .end local v6           #newMailboxName:Ljava/lang/String;
    .end local v15           #createSuccess:Z
    .end local v24           #localFolderCursor:Landroid/database/Cursor;
    :cond_97
    const-string v17, "/"

    goto :goto_29

    .line 620
    :cond_9a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    .restart local v6       #newMailboxName:Ljava/lang/String;
    goto :goto_48

    .line 641
    .restart local v15       #createSuccess:Z
    .restart local v24       #localFolderCursor:Landroid/database/Cursor;
    .restart local v26       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v36       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v39       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v42       #store:Lcom/android/email/mail/Store;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_9f
    :try_start_9f
    invoke-virtual/range {v36 .. v36}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_350

    .line 642
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_c2
    .catchall {:try_start_9f .. :try_end_c2} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c2} :catch_158

    .line 823
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_96

    .line 649
    :cond_c8
    :try_start_c8
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_e5
    .catchall {:try_start_c8 .. :try_end_e5} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_e5} :catch_158

    .line 823
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_96

    .line 658
    :cond_eb
    :try_start_eb
    invoke-virtual/range {v42 .. v42}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v39

    .line 660
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v37, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, i:I
    move-object/from16 v0, v39

    array-length v14, v0

    .local v14, count:I
    :goto_f9
    move/from16 v0, v20

    if-ge v0, v14, :cond_10b

    .line 662
    aget-object v2, v39, v20

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v20, v20, 0x1

    goto :goto_f9

    .line 664
    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v10, "accountKey=?"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 669
    :goto_134
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 670
    new-instance v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 671
    .local v22, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_157
    .catchall {:try_start_eb .. :try_end_157} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_157} :catch_158

    goto :goto_134

    .line 814
    .end local v14           #count:I
    .end local v20           #i:I
    .end local v22           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v26           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v36           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v37           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v39           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v42           #store:Lcom/android/email/mail/Store;
    .end local v46           #uri:Landroid/net/Uri;
    :catch_158
    move-exception v18

    .line 818
    .local v18, e:Ljava/lang/Exception;
    :try_start_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_16c
    .catchall {:try_start_159 .. :try_end_16c} :catchall_1db

    .line 823
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_96

    .line 677
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v14       #count:I
    .restart local v20       #i:I
    .restart local v26       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v36       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v37       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v39       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v42       #store:Lcom/android/email/mail/Store;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_173
    :try_start_173
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31b

    .line 685
    new-instance v30, Ljava/util/HashSet;

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 686
    .local v30, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 687
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_191
    :pswitch_191
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 688
    .local v29, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 692
    .local v28, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_36a

    .line 703
    :pswitch_1ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 710
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v46

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v2, v0, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1da
    .catchall {:try_start_173 .. :try_end_1da} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1da} :catch_158

    goto :goto_191

    .line 823
    .end local v14           #count:I
    .end local v20           #i:I
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v26           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v28           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v29           #localNameToDrop:Ljava/lang/String;
    .end local v30           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v36           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v37           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v39           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v42           #store:Lcom/android/email/mail/Store;
    .end local v46           #uri:Landroid/net/Uri;
    :catchall_1db
    move-exception v2

    if-eqz v24, :cond_1e1

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1e1
    throw v2

    .line 717
    .restart local v14       #count:I
    .restart local v20       #i:I
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v26       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v30       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v36       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v37       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v39       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v42       #store:Lcom/android/email/mail/Store;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_1e2
    :try_start_1e2
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v31, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 721
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1f2
    :goto_1f2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_258

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 722
    .local v40, remoteNameToAdd:Ljava/lang/String;
    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 723
    .local v13, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    .line 724
    .local v38, remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v40

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 727
    const-wide/16 v7, -0x1

    iput-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 731
    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v2

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 737
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 739
    const/16 v2, 0x19

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 740
    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v2

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 742
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 744
    const/4 v15, 0x1

    goto :goto_1f2

    .line 750
    .end local v13           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v38           #remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    .end local v40           #remoteNameToAdd:Ljava/lang/String;
    :cond_258
    const/16 v20, 0x0

    :goto_25a
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_318

    .line 751
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 752
    .restart local v13       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 753
    .local v45, tempdisplayName:Ljava/lang/String;
    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v44

    .line 754
    .local v44, tempDelimiter:Ljava/lang/String;
    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_2e6

    .line 755
    invoke-static/range {v44 .. v44}, Lcom/android/emailcommon/utility/Utility;->makeVaildRegularExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 757
    .local v41, splitDelimiter:Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 758
    .local v32, nameArray:[Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuffer;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuffer;-><init>()V

    .line 759
    .local v43, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v32

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_2e6

    .line 761
    const-wide/16 v33, -0x1

    .line 762
    .local v33, parentKey:J
    move-object/from16 v0, v32

    array-length v2, v0

    add-int/lit8 v14, v2, -0x1

    .line 763
    const/16 v23, 0x0

    .local v23, j:I
    :goto_29b
    move/from16 v0, v23

    if-ge v0, v14, :cond_2b2

    .line 764
    aget-object v2, v32, v23

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_2af

    .line 766
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    :cond_2af
    add-int/lit8 v23, v23, 0x1

    goto :goto_29b

    .line 769
    :cond_2b2
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    .line 770
    .local v35, parentName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2ba
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 771
    .local v25, localFolderName:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 773
    .restart local v28       #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 774
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v33, v0

    .line 778
    .end local v25           #localFolderName:Ljava/lang/String;
    .end local v28           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_2e2
    move-wide/from16 v0, v33

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 781
    .end local v23           #j:I
    .end local v32           #nameArray:[Ljava/lang/String;
    .end local v33           #parentKey:J
    .end local v35           #parentName:Ljava/lang/String;
    .end local v41           #splitDelimiter:Ljava/lang/String;
    .end local v43           #strBuf:Ljava/lang/StringBuffer;
    :cond_2e6
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v16, cv:Landroid/content/ContentValues;
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 783
    const-string v2, "flagVisible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    const-string v2, "parentKey"

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 750
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_25a

    .line 787
    .end local v13           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v44           #tempDelimiter:Ljava/lang/String;
    .end local v45           #tempdisplayName:Ljava/lang/String;
    :cond_318
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 790
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v30           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v31           #mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_31b
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    .line 791
    const/16 v27, 0x0

    .line 792
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->clear()V

    .line 793
    const/16 v26, 0x0

    .line 796
    const/4 v2, 0x1

    if-ne v15, v2, :cond_33c

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_335
    .catchall {:try_start_1e2 .. :try_end_335} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_335} :catch_158

    .line 823
    :goto_335
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_96

    .line 800
    :cond_33c
    :try_start_33c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_335

    .line 808
    .end local v14           #count:I
    .end local v20           #i:I
    .end local v37           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x6a

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_363
    .catchall {:try_start_33c .. :try_end_363} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_363} :catch_158

    .line 823
    if-eqz v24, :cond_96

    .line 824
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_96

    .line 692
    :pswitch_data_36a
    .packed-switch 0x0
        :pswitch_191
        :pswitch_1ae
        :pswitch_1ae
        :pswitch_191
        :pswitch_191
        :pswitch_191
        :pswitch_191
    .end packed-switch
.end method
