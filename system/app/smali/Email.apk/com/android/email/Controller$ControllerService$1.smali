.class Lcom/android/email/Controller$ControllerService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller$ControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller$ControllerService;


# direct methods
.method constructor <init>(Lcom/android/email/Controller$ControllerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 1790
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"

    .prologue
    .line 1855
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 1871
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"

    .prologue
    .line 1859
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 1880
    const/4 v0, 0x2

    return v0
.end method

.method public hostChanged(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 1842
    return-void
.end method

.method public loadAttachment(JZ)V
    .registers 20
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v13

    .line 1803
    .local v13, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v13, :cond_77

    .line 1804
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_36

    .line 1805
    const-string v3, "Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 1809
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v15, :cond_96

    .line 1813
    iget v3, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_78

    .line 1814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/Controller;->access$1000()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1817
    .local v14, cols:[Ljava/lang/String;
    if-eqz v14, :cond_78

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 1820
    if-nez v15, :cond_78

    .line 1836
    .end local v14           #cols:[Ljava/lang/String;
    .end local v15           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_77
    :goto_77
    return-void

    .line 1826
    .restart local v15       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_78
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v3}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v2

    .line 1827
    .local v2, legacyController:Lcom/android/email/MessagingController;
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v3}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v11

    .line 1828
    .local v11, legacyListener:Lcom/android/email/Controller$LegacyListener;
    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-wide v7, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v9, p1

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V

    goto :goto_77

    .line 1832
    .end local v2           #legacyController:Lcom/android/email/MessagingController;
    .end local v11           #legacyListener:Lcom/android/email/Controller$LegacyListener;
    :cond_96
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Lcom/android/email/Controller;

    move-result-object v3

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v3

    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    goto :goto_77
.end method

.method public loadMore(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 1851
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 1863
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 7
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 1875
    const/4 v0, 0x0

    return v0
.end method

.method public sendMeetingResponse(JI)V
    .registers 4
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 1848
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 1867
    invoke-static {}, Lcom/android/email/Controller;->access$900()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1868
    return-void
.end method

.method public setLogging(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 1845
    return-void
.end method

.method public startSync(JZ)V
    .registers 4
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 1794
    return-void
.end method

.method public stopSync(J)V
    .registers 3
    .parameter "mailboxId"

    .prologue
    .line 1797
    return-void
.end method

.method public updateFolderList(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 1839
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .registers 3
    .parameter "hostAuth"

    .prologue
    .line 1786
    const/4 v0, 0x0

    return-object v0
.end method
