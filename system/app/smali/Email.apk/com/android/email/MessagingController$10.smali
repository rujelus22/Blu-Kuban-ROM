.class Lcom/android/email/MessagingController$10;
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
    .line 1847
    iput-object p1, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 1852
    :try_start_1
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 1854
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_1d

    .line 1855
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    const-string v13, "Unknown message"

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 1902
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_1c
    return-void

    .line 1858
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1d
    iget v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v10, v13, :cond_49

    .line 1859
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-virtual {v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_2c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2c} :catch_73

    goto :goto_1c

    .line 1896
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_2d
    move-exception v3

    .line 1897
    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v10, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v10, :cond_39

    const-string v10, "Email"

    const-string v11, ""

    invoke-static {v10, v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1898
    :cond_39
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_1c

    .line 1865
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_49
    :try_start_49
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1866
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    iget-wide v11, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 1867
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_65

    if-nez v2, :cond_84

    .line 1868
    :cond_65
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    const-string v13, "null account or mailbox"

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_72
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_49 .. :try_end_72} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_72} :catch_73

    goto :goto_1c

    .line 1899
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_73
    move-exception v9

    .line 1900
    .local v9, rte:Ljava/lang/RuntimeException;
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_1c

    .line 1871
    .end local v9           #rte:Ljava/lang/RuntimeException;
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_84
    :try_start_84
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v10

    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1873
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 1874
    .local v8, remoteStore:Lcom/android/email/mail/Store;
    iget-object v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 1877
    .local v7, remoteServerId:Ljava/lang/String;
    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a7

    .line 1878
    iget-object v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1880
    :cond_a7
    invoke-virtual {v8, v7}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 1881
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v10, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v5, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1884
    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 1885
    .local v6, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1886
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v10}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1887
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/emailcommon/mail/Message;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v1, v11}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1890
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v0, v2, v11}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 1894
    iget-object v10, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v10}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/email/MessagingController$10;->val$messageId:J

    invoke-virtual {v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_db
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_84 .. :try_end_db} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_db} :catch_73

    goto/16 :goto_1c
.end method
