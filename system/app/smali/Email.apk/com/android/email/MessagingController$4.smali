.class Lcom/android/email/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->downloadFlagAndEnvelope(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic val$unseenMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$4;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p4, p0, Lcom/android/email/MessagingController$4;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p5, p0, Lcom/android/email/MessagingController$4;->val$unseenMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 586
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .registers 11
    .parameter "message"

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 552
    .local v7, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    const/4 v0, 0x0

    .line 553
    .local v0, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v7, :cond_45

    .line 554
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_6c

    .line 560
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_14
    if-eqz v0, :cond_44

    .line 563
    :try_start_16
    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 566
    iget-object v1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    invoke-static {v1, v0, v2}, Lcom/android/email/MessagingController;->access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 568
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$unseenMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_44

    .line 569
    iget-object v1, p0, Lcom/android/email/MessagingController$4;->val$unseenMessages:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_44} :catch_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_6c

    .line 582
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_44
    :goto_44
    return-void

    .line 556
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v7       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v7, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    goto :goto_14

    .line 571
    :catch_52
    move-exception v8

    .line 572
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_6c

    goto :goto_44

    .line 578
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_6c
    move-exception v6

    .line 579
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
