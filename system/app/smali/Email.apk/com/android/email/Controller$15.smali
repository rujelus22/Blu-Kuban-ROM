.class Lcom/android/email/Controller$15;
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
    .line 1733
    iput-object p1, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V
    .registers 5
    .parameter "wrapper"

    .prologue
    .line 1741
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/email/Controller;->access$900()Landroid/os/RemoteCallbackList;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1744
    invoke-static {}, Lcom/android/email/Controller;->access$900()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    move-result v0

    .line 1745
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1747
    :try_start_12
    invoke-static {}, Lcom/android/email/Controller;->access$900()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v2}, Lcom/android/email/Controller$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_2e

    .line 1745
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1751
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/android/email/Controller;->access$900()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    .line 1753
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_29
    monitor-exit p0

    return-void

    .line 1741
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1748
    .restart local v0       #count:I
    .restart local v1       #i:I
    :catch_2e
    move-exception v2

    goto :goto_1f
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .registers 15
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 1757
    new-instance v0, Lcom/android/email/Controller$15$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$15$1;-><init>(Lcom/android/email/Controller$15;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/Controller$15;->broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V

    .line 1763
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .registers 6
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1767
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .registers 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1771
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .registers 5
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1775
    return-void
.end method
