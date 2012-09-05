.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetCoalescedNotificationsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getContinuationToken()Ljava/lang/String;
.end method

.method public abstract getLastReadTime()D
.end method

.method public abstract getLatestNotificationTime()D
.end method

.method public abstract getLatestPushNotificationTime()D
.end method

.method public abstract getNotification(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
.end method

.method public abstract getNotificationCount()I
.end method

.method public abstract getNotificationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalPush()I
.end method

.method public abstract getTotalUnread()I
.end method

.method public abstract hasContinuationToken()Z
.end method

.method public abstract hasLastReadTime()Z
.end method

.method public abstract hasLatestNotificationTime()Z
.end method

.method public abstract hasLatestPushNotificationTime()Z
.end method

.method public abstract hasTotalPush()Z
.end method

.method public abstract hasTotalUnread()Z
.end method
