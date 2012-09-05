.class public Lcom/google/android/apps/plus/api/GetNotificationsOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "GetNotificationsOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/GetNotificationsOperation$1;
    }
.end annotation


# instance fields
.field private mContinuationToken:Ljava/lang/String;

.field private mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "retry"
    .parameter "syncState"

    .prologue
    .line 48
    const-string v3, "POST"

    invoke-static {p6}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 50
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->mContinuationToken:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getNotificationList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->mNotifications:Ljava/util/List;

    .line 126
    return-void
.end method


# virtual methods
.method public getContinuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->mContinuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifications()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->mNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(DLjava/lang/String;)V
    .registers 7
    .parameter "lastNotificationTime"
    .parameter "continuationToken"

    .prologue
    .line 61
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    move-result-object v0

    .line 63
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setMaxCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 64
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setChannel(Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 66
    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->HANGOUT_INVITE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 67
    if-eqz p3, :cond_1c

    .line 68
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setContinuationToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 70
    :cond_1c
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_25

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->setEarliestNotificationTime(D)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;

    .line 74
    :cond_25
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_COALESCED_NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 75
    return-void
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 7
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 98
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 99
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- Response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/GetNotificationsOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 110
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local p2
    :goto_6a
    return-void

    .line 105
    .restart local p2
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)V

    goto :goto_6a

    .line 103
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method
