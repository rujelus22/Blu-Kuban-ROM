.class Lcom/android/email/MessagingController$17;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4661
    iput-object p1, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 4667
    :try_start_1
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 4669
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_1d

    .line 4670
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    const-string v12, "Unknown message"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 4774
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1c
    :goto_1c
    return-void

    .line 4673
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1d
    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v9, v12, :cond_3e

    .line 4674
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_2c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2c} :catch_68

    goto :goto_1c

    .line 4767
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_2d
    move-exception v3

    .line 4770
    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_1c

    .line 4681
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3e
    :try_start_3e
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4683
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 4685
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_5a

    if-nez v2, :cond_79

    .line 4686
    :cond_5a
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    const-string v12, "null account or mailbox"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_67
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3e .. :try_end_67} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_67} :catch_68

    goto :goto_1c

    .line 4771
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_68
    move-exception v8

    .line 4772
    .local v8, rte:Ljava/lang/RuntimeException;
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_1c

    .line 4691
    .end local v8           #rte:Ljava/lang/RuntimeException;
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_79
    :try_start_79
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v9, v0}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 4692
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    const-string v12, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_1c

    .line 4698
    :cond_8f
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    .line 4700
    .local v7, remoteStore:Lcom/android/email/mail/Store;
    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_a9
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_79 .. :try_end_a9} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_a9} :catch_68

    move-result-object v5

    .line 4703
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    :try_start_aa
    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4731
    iget-object v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 4732
    .local v6, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4733
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4734
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4739
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v9, v0}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v9

    if-nez v9, :cond_ed

    .line 4740
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    const-string v12, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_df
    .catchall {:try_start_aa .. :try_end_df} :catchall_12f

    .line 4762
    if-eqz v5, :cond_1c

    :try_start_e1
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 4763
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_eb
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_e1 .. :try_end_eb} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_eb} :catch_68

    goto/16 :goto_1c

    .line 4747
    :cond_ed
    :try_start_ed
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v0, v2, v10}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    .line 4752
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v9, v0}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v9

    if-nez v9, :cond_116

    .line 4753
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    const-string v12, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_108
    .catchall {:try_start_ed .. :try_end_108} :catchall_12f

    .line 4762
    if-eqz v5, :cond_1c

    :try_start_10a
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 4763
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_114
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_10a .. :try_end_114} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_114} :catch_68

    goto/16 :goto_1c

    .line 4759
    :cond_116
    :try_start_116
    iget-object v9, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v9}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$messageId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_121
    .catchall {:try_start_116 .. :try_end_121} :catchall_12f

    .line 4762
    if-eqz v5, :cond_1c

    :try_start_123
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 4763
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1c

    .line 4762
    .end local v1           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v6           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    :catchall_12f
    move-exception v9

    if-eqz v5, :cond_13c

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 4763
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_13c
    throw v9
    :try_end_13d
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_123 .. :try_end_13d} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_13d} :catch_68
.end method
