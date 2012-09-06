.class Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/AttachmentDownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;)V

    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .registers 12
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 651
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    #calls: Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-static {v2, p3, p4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v1

    .line 652
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v1, :cond_44

    .line 653
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 655
    packed-switch p5, :pswitch_data_84

    .line 658
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, code:Ljava/lang/String;
    :goto_15
    const/4 v2, 0x1

    if-eq p5, v2, :cond_55

    .line 661
    const-string v2, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0           #code:Ljava/lang/String;
    :cond_3a
    :goto_3a
    iput p5, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 667
    iput p6, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 670
    :cond_44
    packed-switch p5, :pswitch_data_8c

    .line 674
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 677
    :pswitch_4e
    return-void

    .line 656
    :pswitch_4f
    const-string v0, "Success"

    .restart local v0       #code:Ljava/lang/String;
    goto :goto_15

    .line 657
    .end local v0           #code:Ljava/lang/String;
    :pswitch_52
    const-string v0, "In progress"

    .restart local v0       #code:Ljava/lang/String;
    goto :goto_15

    .line 662
    :cond_55
    iget v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    add-int/lit8 v2, v2, 0xf

    if-lt p6, v2, :cond_3a

    .line 663
    const-string v2, "AttachmentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 655
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_52
    .end packed-switch

    .line 670
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_4e
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .registers 6
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .registers 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .registers 5
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 692
    return-void
.end method
