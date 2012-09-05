.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetUnreadNotificationsCountRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getCoalesceCircleNotifications()Z
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

.method public abstract hasCoalesceCircleNotifications()Z
.end method
