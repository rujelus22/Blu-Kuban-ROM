.class public Lcom/android/email/Controller$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAttachmentId:J

.field private final mMessageId:J

.field private mProgress:I

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;JJ)V
    .registers 9
    .parameter
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 4524
    iput-object p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4525
    iput-wide p2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    .line 4526
    iput-wide p4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 4527
    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    .line 4528
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .registers 16
    .parameter "progress"
    .parameter "status"

    .prologue
    const/16 v2, 0x64

    .line 4532
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 4533
    :try_start_9
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadPercent()I

    move-result v11

    .line 4534
    .local v11, nPercent:I
    if-ge v11, v2, :cond_1a

    .line 4535
    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-ne p2, v1, :cond_22

    .line 4536
    rsub-int/lit8 v1, v11, 0x64

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int p1, v11, v1

    .line 4549
    :cond_1a
    :goto_1a
    iget v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mProgress:I

    if-eq v1, p1, :cond_20

    if-ne p1, v2, :cond_2f

    .line 4550
    :cond_20
    monitor-exit v12

    .line 4572
    :goto_21
    return-void

    .line 4537
    :cond_22
    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IMAPMEMORYLITERAL:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-eq p2, v1, :cond_2a

    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IOCOPY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-ne p2, v1, :cond_1a

    .line 4539
    :cond_2a
    mul-int v1, p1, v11

    div-int/lit8 p1, v1, 0x64

    goto :goto_1a

    .line 4553
    :cond_2f
    iput p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mProgress:I

    .line 4555
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 4556
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller:loadAttachmentProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_8a

    .line 4560
    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_8a
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_68} :catch_8d

    .line 4566
    :goto_68
    :try_start_68
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_72
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 4568
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v6, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_72

    .line 4571
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #nPercent:I
    :catchall_8a
    move-exception v1

    monitor-exit v12
    :try_end_8c
    .catchall {:try_start_68 .. :try_end_8c} :catchall_8a

    throw v1

    .line 4562
    .restart local v11       #nPercent:I
    :catch_8d
    move-exception v9

    .line 4563
    .local v9, e:Landroid/os/RemoteException;
    :try_start_8e
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_68

    .line 4571
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_92
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_8a

    goto :goto_21
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 4576
    return-void
.end method
