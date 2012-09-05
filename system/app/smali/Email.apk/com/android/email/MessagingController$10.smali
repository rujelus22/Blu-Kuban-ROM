.class Lcom/android/email/MessagingController$10;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$newMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2229
    iput-object p1, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$10;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/MessagingController$10;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p4, p0, Lcom/android/email/MessagingController$10;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/MessagingController$10;->val$newMessages:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .registers 3
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 2279
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .registers 13
    .parameter "message"

    .prologue
    .line 2236
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController$10;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2238
    .local v9, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    const/4 v1, 0x0

    .line 2239
    .local v1, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v9, :cond_45

    .line 2240
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v1           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_6c

    .line 2246
    .restart local v1       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_14
    if-eqz v1, :cond_44

    .line 2253
    :try_start_16
    iget-object v0, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/MessagingController$10;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/MessagingController$10;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/MessagingController$10;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 2258
    iget-object v0, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/MessagingController;->access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 2261
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2262
    iget-object v0, p0, Lcom/android/email/MessagingController$10;->val$newMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_44} :catch_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_6c

    .line 2275
    .end local v1           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v9           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_44
    :goto_44
    return-void

    .line 2242
    .restart local v1       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v9       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/email/MessagingController$10;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v9, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto :goto_14

    .line 2264
    :catch_52
    move-exception v10

    .line 2265
    .local v10, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_6c

    goto :goto_44

    .line 2270
    .end local v1           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v9           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v10           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_6c
    move-exception v8

    .line 2271
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
