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
    .line 744
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;)V

    return-void
.end method


# virtual methods
.method public deviceInfoStatus(I)V
    .registers 2
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    return-void
.end method

.method public emptyTrashStatus(JII)V
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
    .line 820
    return-void
.end method

.method public folderCommandStatus(IJI)V
    .registers 5
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 814
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .registers 13
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 748
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v3, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    monitor-enter v3

    .line 749
    :try_start_5
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    #calls: Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-static {v2, p3, p4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$700(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v1

    .line 750
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v1, :cond_49

    .line 751
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 753
    packed-switch p5, :pswitch_data_8e

    .line 761
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, code:Ljava/lang/String;
    :goto_1a
    const/4 v2, 0x1

    if-eq p5, v2, :cond_5b

    .line 765
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v0           #code:Ljava/lang/String;
    :cond_3f
    :goto_3f
    iput p5, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 771
    iput p6, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 774
    :cond_49
    packed-switch p5, :pswitch_data_96

    .line 778
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 781
    :pswitch_53
    monitor-exit v3

    .line 782
    return-void

    .line 755
    :pswitch_55
    const-string v0, "Success"

    .line 756
    .restart local v0       #code:Ljava/lang/String;
    goto :goto_1a

    .line 758
    .end local v0           #code:Ljava/lang/String;
    :pswitch_58
    const-string v0, "In progress"

    .line 759
    .restart local v0       #code:Ljava/lang/String;
    goto :goto_1a

    .line 766
    :cond_5b
    iget v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    add-int/lit8 v2, v2, 0xf

    if-lt p6, v2, :cond_3f

    .line 767
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 781
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_8a
    move-exception v2

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_5 .. :try_end_8c} :catchall_8a

    throw v2

    .line 753
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_58
    .end packed-switch

    .line 774
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_53
    .end packed-switch
.end method

.method public loadMoreStatus(JII)V
    .registers 5
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    return-void
.end method

.method public moveConvAlwaysStatus([BIII)V
    .registers 5
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    return-void
.end method

.method public moveItemStatus(JI)V
    .registers 4
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 802
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .registers 6
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 808
    return-void
.end method

.method public refreshIRMTemplatesStatus(JII)V
    .registers 5
    .parameter "accountId"
    .parameter "Status"
    .parameter "Progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 852
    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .registers 6
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    return-void
.end method

.method public sendMessageStatus(JJLjava/lang/String;II)V
    .registers 8
    .parameter "accountId"
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
    .line 787
    return-void
.end method

.method public setDeviceInfoStatus(JII)V
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
    .line 838
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
    .line 792
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
    .line 797
    return-void
.end method
