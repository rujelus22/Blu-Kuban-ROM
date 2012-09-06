.class public interface abstract Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;
.super Ljava/lang/Object;
.source "PushNotificationRegistrar.java"


# static fields
.field public static final CATEGORY_GOOGLE_VOICE:Ljava/lang/String; = "com.google.android.apps.googlevoice.GOOGLE_VOICE"

.field public static final INBOX_NOTIFICATION:Ljava/lang/String; = "com.google.android.apps.googlevoice.INBOX_NOTIFICATION"


# virtual methods
.method public abstract checkin(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V
.end method

.method public abstract getRoutingInfo()Ljava/lang/String;
.end method

.method public abstract registerForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V
.end method

.method public abstract shouldReregister()Z
.end method

.method public abstract unregisterForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V
.end method
