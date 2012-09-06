.class public interface abstract Lcom/google/android/apps/googlevoice/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# virtual methods
.method public abstract cancelAuthenticationNotification()V
.end method

.method public abstract cancelInboxNotificationRegistrationExpiredNotification()V
.end method

.method public abstract cancelSmsFailedNotification()V
.end method

.method public abstract cancelUnreadNotification()V
.end method

.method public abstract notifyAccountTypeChange(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
.end method

.method public abstract notifyAuthentication()V
.end method

.method public abstract notifyInboxNotificationRegistrationExpired()V
.end method

.method public abstract notifySmsFailed(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyUnread([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V
.end method

.method public abstract sendBroadcastReceivedSms(Ljava/lang/String;Ljava/lang/String;)V
.end method
