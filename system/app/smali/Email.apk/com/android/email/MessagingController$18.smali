.class Lcom/android/email/MessagingController$18;
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
    .line 4792
    iput-object p1, p0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$18;->val$accountId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$18;->val$messageId:J

    iput-boolean p8, p0, Lcom/android/email/MessagingController$18;->val$background:Z

    iput-wide p9, p0, Lcom/android/email/MessagingController$18;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 4797
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v13

    .line 4799
    .local v13, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v13, :cond_35

    .line 4800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "The attachment is null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 4937
    .end local v13           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_34
    :goto_34
    return-void

    .line 4804
    .restart local v13       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 4805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iget-object v9, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v9, :cond_86

    const/4 v9, 0x1

    :goto_5c
    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_34

    .line 4931
    .end local v13           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_60
    move-exception v14

    .line 4934
    .local v14, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_34

    .line 4805
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v13       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_86
    const/4 v9, 0x0

    goto :goto_5c

    .line 4812
    :cond_88
    :try_start_88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    .line 4814
    .local v12, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$mailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 4816
    .local v16, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 4819
    .local v17, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_be

    if-eqz v16, :cond_be

    if-nez v17, :cond_e2

    .line 4820
    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto/16 :goto_34

    .line 4827
    :cond_e2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v20

    .line 4829
    .local v20, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_104} :catch_60

    move-result-object v19

    .line 4832
    .local v19, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    :try_start_105
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4839
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v21

    .line 4840
    .local v21, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v22, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v22 .. v22}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 4841
    .local v22, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-wide v3, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 4842
    const-string v3, "X-Android-Attachment-StoreData"

    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4844
    const-string v3, "Content-Type"

    const-string v4, "%s;\n name=\"%s\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4858
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    new-instance v18, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 4861
    .local v18, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v3, "mixed"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 4862
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 4864
    const-string v3, "Content-Type"

    const-string v4, "multipart/mixed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 4868
    new-instance v15, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v15}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4869
    .local v15, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4870
    new-instance v2, Lcom/android/email/Controller$MessageRetrievalListenerBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    invoke-direct/range {v2 .. v7}, Lcom/android/email/Controller$MessageRetrievalListenerBridge;-><init>(Lcom/android/email/Controller;JJ)V

    .line 4872
    .local v2, retListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v15, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4880
    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    if-nez v3, :cond_229

    .line 4881
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v3

    if-eqz v3, :cond_211

    .line 4882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    if-eqz v3, :cond_229

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_229

    .line 4883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Controller;->IsAttachdownAllStop()Z

    move-result v3

    if-nez v3, :cond_1df

    .line 4884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 4886
    :cond_1df
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_201
    .catchall {:try_start_105 .. :try_end_201} :catchall_219

    .line 4927
    if-eqz v19, :cond_34

    :try_start_203
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4928
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_20f} :catch_60

    goto/16 :goto_34

    .line 4892
    :cond_211
    :try_start_211
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Attachment not loaded."

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_219
    .catchall {:try_start_211 .. :try_end_219} :catchall_219

    .line 4927
    .end local v2           #retListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    .end local v15           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v18           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v21           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v22           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catchall_219
    move-exception v3

    if-eqz v19, :cond_228

    :try_start_21c
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_228

    .line 4928
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_228
    throw v3
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_229} :catch_60

    .line 4897
    .restart local v2       #retListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;
    .restart local v15       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v18       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v21       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v22       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_229
    :try_start_229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v3, v12}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_265

    .line 4898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_255
    .catchall {:try_start_229 .. :try_end_255} :catchall_219

    .line 4927
    if-eqz v19, :cond_34

    :try_start_257
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4928
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_263} :catch_60

    goto/16 :goto_34

    .line 4909
    :cond_265
    :try_start_265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, v22

    invoke-static {v3, v0, v13, v4, v5}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 4911
    const/16 v3, 0x64

    sget-object v4, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    .line 4914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v3, v12}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_2b9

    .line 4915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_2a9
    .catchall {:try_start_265 .. :try_end_2a9} :catchall_219

    .line 4927
    if-eqz v19, :cond_34

    :try_start_2ab
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4928
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2b7} :catch_60

    goto/16 :goto_34

    .line 4924
    :cond_2b9
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iget-object v10, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_2e5

    const/4 v10, 0x1

    :goto_2d2
    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_2d5
    .catchall {:try_start_2b9 .. :try_end_2d5} :catchall_219

    .line 4927
    if-eqz v19, :cond_34

    :try_start_2d7
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4928
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2e3} :catch_60

    goto/16 :goto_34

    .line 4924
    :cond_2e5
    const/4 v10, 0x0

    goto :goto_2d2
.end method
