.class Lcom/android/email/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$newMailboxName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p3, p0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 49

    .prologue
    .line 846
    const/16 v20, 0x0

    .line 848
    .local v20, localFolderCursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v33

    .line 851
    .local v33, parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 852
    .local v30, orgMailboxName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 853
    .local v29, newName:Ljava/lang/String;
    const-string v15, ""

    .line 854
    .local v15, delimiter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 856
    .local v10, accountId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_c1

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 861
    :goto_39
    if-eqz v33, :cond_c5

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_c5

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 866
    :goto_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v41

    .line 867
    .local v41, store:Lcom/android/email/mail/Store;
    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v35

    .line 868
    .local v35, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    const/16 v38, 0x0

    .line 869
    .local v38, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 870
    .local v23, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 871
    .local v22, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v45, 0x0

    .line 873
    .local v45, uri:Landroid/net/Uri;
    if-nez v35, :cond_cc

    .line 874
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_9e

    .line 875
    const-string v4, "MsgControl >>>"

    const-string v5, "renameFolder : remoteFolder is NULL"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_9e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x68

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_bb
    .catchall {:try_start_2 .. :try_end_bb} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bb} :catch_16c

    .line 1062
    if-eqz v20, :cond_c0

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1066
    .end local v10           #accountId:J
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v41           #store:Lcom/android/email/mail/Store;
    .end local v45           #uri:Landroid/net/Uri;
    :cond_c0
    :goto_c0
    return-void

    .line 859
    .restart local v10       #accountId:J
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_c1
    :try_start_c1
    const-string v15, "/"

    goto/16 :goto_39

    .line 864
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    move-object/from16 v29, v0

    goto :goto_5e

    .line 883
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v41       #store:Lcom/android/email/mail/Store;
    .restart local v45       #uri:Landroid/net/Uri;
    :cond_cc
    invoke-virtual/range {v35 .. v35}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_395

    .line 884
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->rename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36f

    .line 885
    move-object/from16 v0, v41

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Store;->renameFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_107

    .line 887
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rename Folder - mailboxId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_107
    invoke-virtual/range {v41 .. v41}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    .line 891
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 892
    .local v36, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v0, v38

    array-length v13, v0

    .local v13, count:I
    :goto_115
    move/from16 v0, v17

    if-ge v0, v13, :cond_127

    .line 893
    aget-object v4, v38, v17

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v17, v17, 0x1

    goto :goto_115

    .line 895
    :cond_127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 900
    :goto_150
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 901
    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 902
    .local v3, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_16b
    .catchall {:try_start_c1 .. :try_end_16b} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_16b} :catch_16c

    goto :goto_150

    .line 1053
    .end local v3           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v10           #accountId:J
    .end local v13           #count:I
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v17           #i:I
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v41           #store:Lcom/android/email/mail/Store;
    .end local v45           #uri:Landroid/net/Uri;
    :catch_16c
    move-exception v16

    .line 1057
    .local v16, e:Ljava/lang/Exception;
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v46, 0x68

    move/from16 v0, v46

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_18c
    .catchall {:try_start_16d .. :try_end_18c} :catchall_1fb

    .line 1062
    if-eqz v20, :cond_c0

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c0

    .line 909
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v10       #accountId:J
    .restart local v13       #count:I
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v41       #store:Lcom/android/email/mail/Store;
    .restart local v45       #uri:Landroid/net/Uri;
    :cond_193
    :try_start_193
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_347

    .line 918
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 919
    .local v26, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1b1
    :pswitch_1b1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_202

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 921
    .local v25, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 926
    .local v24, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v4, :pswitch_data_3bc

    .line 937
    :pswitch_1ce
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v10, v11, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 945
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1fa
    .catchall {:try_start_193 .. :try_end_1fa} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1fa} :catch_16c

    goto :goto_1b1

    .line 1062
    .end local v10           #accountId:J
    .end local v13           #count:I
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v24           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v25           #localNameToDrop:Ljava/lang/String;
    .end local v26           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v41           #store:Lcom/android/email/mail/Store;
    .end local v45           #uri:Landroid/net/Uri;
    :catchall_1fb
    move-exception v4

    if-eqz v20, :cond_201

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_201
    throw v4

    .line 955
    .restart local v10       #accountId:J
    .restart local v13       #count:I
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v26       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v41       #store:Lcom/android/email/mail/Store;
    .restart local v45       #uri:Landroid/net/Uri;
    :cond_202
    :try_start_202
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v27, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 959
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_212
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 960
    .local v39, remoteNameToAdd:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 962
    .local v12, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v37

    .line 963
    .local v37, remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v39

    iput-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 966
    const-wide/16 v4, -0x1

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 970
    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 976
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 978
    const/16 v4, 0x19

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 979
    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v4

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 982
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    iget-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iget-wide v7, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget v9, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-direct/range {v3 .. v9}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(JLjava/lang/String;JI)V

    .line 986
    .restart local v3       #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 987
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_212

    .line 992
    .end local v3           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v12           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v37           #remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    .end local v39           #remoteNameToAdd:Ljava/lang/String;
    :cond_28a
    const/16 v17, 0x0

    :goto_28c
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_344

    .line 993
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 994
    .restart local v12       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 995
    .local v44, tempDisplayName:Ljava/lang/String;
    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v43

    .line 997
    .local v43, tempDelimiter:Ljava/lang/String;
    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_318

    .line 998
    invoke-static/range {v43 .. v43}, Lcom/android/emailcommon/utility/Utility;->makeVaildRegularExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1000
    .local v40, splitDelimiter:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1001
    .local v28, nameArray:[Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    .line 1002
    .local v42, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_318

    .line 1004
    const-wide/16 v31, -0x1

    .line 1005
    .local v31, parentKey:J
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v13, v4, -0x1

    .line 1006
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2cd
    move/from16 v0, v19

    if-ge v0, v13, :cond_2e4

    .line 1007
    aget-object v4, v28, v19

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v19

    if-ge v0, v4, :cond_2e1

    .line 1009
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1006
    :cond_2e1
    add-int/lit8 v19, v19, 0x1

    goto :goto_2cd

    .line 1012
    :cond_2e4
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1013
    .local v34, parentName:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2ec
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_314

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1014
    .local v21, localFolderName:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 1016
    .restart local v24       #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ec

    .line 1017
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v31, v0

    .line 1021
    .end local v21           #localFolderName:Ljava/lang/String;
    .end local v24           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_314
    move-wide/from16 v0, v31

    iput-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 1024
    .end local v19           #j:I
    .end local v28           #nameArray:[Ljava/lang/String;
    .end local v31           #parentKey:J
    .end local v34           #parentName:Ljava/lang/String;
    .end local v40           #splitDelimiter:Ljava/lang/String;
    .end local v42           #strBuf:Ljava/lang/StringBuffer;
    :cond_318
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1025
    .local v14, cv:Landroid/content/ContentValues;
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1026
    const-string v4, "flagVisible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1027
    const-string v4, "parentKey"

    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 992
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_28c

    .line 1030
    .end local v12           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v43           #tempDelimiter:Ljava/lang/String;
    .end local v44           #tempDisplayName:Ljava/lang/String;
    :cond_344
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1033
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v26           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_347
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 1034
    const/16 v23, 0x0

    .line 1035
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->clear()V

    .line 1036
    const/16 v22, 0x0

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_368
    .catchall {:try_start_202 .. :try_end_368} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_368} :catch_16c

    .line 1062
    if-eqz v20, :cond_c0

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c0

    .line 1040
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_36f
    :try_start_36f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v46, 0x68

    move/from16 v0, v46

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_38e
    .catchall {:try_start_36f .. :try_end_38e} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_38e} :catch_16c

    .line 1062
    if-eqz v20, :cond_c0

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c0

    .line 1047
    :cond_395
    :try_start_395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v46, 0x68

    move/from16 v0, v46

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_3b4
    .catchall {:try_start_395 .. :try_end_3b4} :catchall_1fb
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_3b4} :catch_16c

    .line 1062
    if-eqz v20, :cond_c0

    .line 1063
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c0

    .line 926
    nop

    :pswitch_data_3bc
    .packed-switch 0x0
        :pswitch_1b1
        :pswitch_1ce
        :pswitch_1ce
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1b1
    .end packed-switch
.end method
