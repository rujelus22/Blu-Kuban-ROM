.class Lcom/android/email/Controller$17;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 5868
    iput-object p1, p0, Lcom/android/email/Controller$17;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V
    .registers 5
    .parameter "wrapper"

    .prologue
    .line 5876
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Landroid/os/RemoteCallbackList;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 5879
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    move-result v0

    .line 5880
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 5882
    :try_start_12
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v2}, Lcom/android/email/Controller$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_2e

    .line 5880
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 5886
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/android/email/Controller;->access$1200()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    .line 5888
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_29
    monitor-exit p0

    return-void

    .line 5876
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5883
    .restart local v0       #count:I
    .restart local v1       #i:I
    :catch_2e
    move-exception v2

    goto :goto_1f
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
    .line 5957
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
    .line 5932
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
    .line 5927
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .registers 15
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 5892
    new-instance v0, Lcom/android/email/Controller$17$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$17$1;-><init>(Lcom/android/email/Controller$17;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/Controller$17;->broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V

    .line 5898
    return-void
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
    .line 5937
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
    .line 5942
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
    .line 5917
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
    .line 5922
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
    .line 5964
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
    .line 5974
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
    .line 5903
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
    .line 5947
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
    .line 5908
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
    .line 5913
    return-void
.end method
