.class Lcom/android/email/MessagingController$6;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->searchMailboxImpl(JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$destMailboxId:J

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/email/MessagingController$6;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$6;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-wide p4, p0, Lcom/android/email/MessagingController$6;->val$destMailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 713
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .registers 11
    .parameter "message"

    .prologue
    .line 683
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_57

    .line 686
    .local v0, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_5
    iget-object v1, p0, Lcom/android/email/MessagingController$6;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v1, p0, Lcom/android/email/MessagingController$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 689
    iget-object v1, p0, Lcom/android/email/MessagingController$6;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$6;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    invoke-static {v1, v0, v2}, Lcom/android/email/MessagingController;->access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 690
    iget-wide v1, p0, Lcom/android/email/MessagingController$6;->val$destMailboxId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 692
    const/4 v7, 0x1

    .line 696
    .local v7, flag:I
    iget-object v1, p0, Lcom/android/email/MessagingController$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v1

    const v2, 0xc800

    if-le v1, v2, :cond_31

    .line 698
    const/4 v7, 0x2

    .line 700
    :cond_31
    iget-object v1, p0, Lcom/android/email/MessagingController$6;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$6;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v7, v2}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V
    :try_end_3c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_57

    .line 709
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #flag:I
    :goto_3c
    return-void

    .line 701
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_3d
    move-exception v8

    .line 702
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_3e
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
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_3c

    .line 705
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_57
    move-exception v6

    .line 706
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

    goto :goto_3c
.end method
