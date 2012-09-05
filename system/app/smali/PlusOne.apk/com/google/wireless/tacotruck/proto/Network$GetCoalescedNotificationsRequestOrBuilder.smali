.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetCoalescedNotificationsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
.end method

.method public abstract getCoalesceCircleNotifications()Z
.end method

.method public abstract getContinuationToken()Ljava/lang/String;
.end method

.method public abstract getEarliestNotificationTime()D
.end method

.method public abstract getFilter()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
.end method

.method public abstract getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
.end method

.method public abstract getIncludedNotificationTypeCount()I
.end method

.method public abstract getIncludedNotificationTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCount()I
.end method

.method public abstract hasChannel()Z
.end method

.method public abstract hasCoalesceCircleNotifications()Z
.end method

.method public abstract hasContinuationToken()Z
.end method

.method public abstract hasEarliestNotificationTime()Z
.end method

.method public abstract hasFilter()Z
.end method

.method public abstract hasMaxCount()Z
.end method
