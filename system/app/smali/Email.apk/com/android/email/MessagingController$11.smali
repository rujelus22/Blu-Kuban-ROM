.class Lcom/android/email/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJJZJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$11;->val$accountId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$11;->val$messageId:J

    iput-boolean p8, p0, Lcom/android/email/MessagingController$11;->val$background:Z

    iput-wide p9, p0, Lcom/android/email/MessagingController$11;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 1917
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 1919
    .local v12, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v12, :cond_35

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "The attachment is null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$11;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 2000
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_34
    return-void

    .line 1925
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_5a
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_dd

    goto :goto_34

    .line 1993
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_5b
    move-exception v9

    .line 1994
    .local v9, me:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v2, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v2, :cond_67

    const-string v2, "Email"

    const-string v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$11;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_34

    .line 1932
    .end local v9           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_83
    :try_start_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 1933
    .local v11, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$mailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v15

    .line 1934
    .local v15, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 1937
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v11, :cond_b9

    if-eqz v15, :cond_b9

    if-nez v16, :cond_fc

    .line 1938
    :cond_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$11;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_db
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_83 .. :try_end_db} :catch_5b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_db} :catch_dd

    goto/16 :goto_34

    .line 1997
    .end local v11           #account:Lcom/android/emailcommon/provider/Account;
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v15           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_dd
    move-exception v14

    .line 1998
    .local v14, ioe:Ljava/io/IOException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while storing attachment."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 1944
    .end local v14           #ioe:Ljava/io/IOException;
    .restart local v11       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v15       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v19

    .line 1948
    .local v19, remoteStore:Lcom/android/email/mail/Store;
    iget-object v2, v15, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v18

    .line 1949
    .local v18, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1953
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v20

    .line 1954
    .local v20, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v21, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 1955
    .local v21, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-wide v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 1956
    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v2, "Content-Type"

    const-string v3, "%s;\n name=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    new-instance v17, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 1967
    .local v17, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v2, "mixed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1968
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 1970
    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1974
    new-instance v13, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v13}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1975
    .local v13, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1976
    const/4 v2, 0x1

    new-array v8, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v2, 0x0

    aput-object v20, v8, v2

    new-instance v2, Lcom/android/email/Controller$MessageRetrievalListenerBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    invoke-direct/range {v2 .. v7}, Lcom/android/email/Controller$MessageRetrievalListenerBridge;-><init>(Lcom/android/email/Controller;JJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v13, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1982
    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v2

    if-nez v2, :cond_1c7

    .line 1983
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Attachment not loaded."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1987
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, v21

    invoke-static {v2, v0, v12, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$11;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$11;->val$attachmentId:J

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_1ef
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_fc .. :try_end_1ef} :catch_5b
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_1ef} :catch_dd

    goto/16 :goto_34
.end method
