.class Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;
.super Ljava/lang/Object;
.source "PreEclairForegroundManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ForegroundManager;


# instance fields
.field private final notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;)V
    .registers 2
    .parameter "notificationManager"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;->notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    .line 23
    return-void
.end method


# virtual methods
.method public startForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;ILandroid/app/Notification;)V
    .registers 6
    .parameter "service"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;->getDelegate()Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/SetForegroundHelper;->invokeSetForeground(Landroid/app/Service;Z)V

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;->notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    invoke-interface {v0, p2, p3}, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;->notify(ILandroid/app/Notification;)V

    .line 29
    return-void
.end method

.method public stopForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;I)V
    .registers 5
    .parameter "service"
    .parameter "id"

    .prologue
    .line 33
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;->getDelegate()Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/SetForegroundHelper;->invokeSetForeground(Landroid/app/Service;Z)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;->notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;->cancel(I)V

    .line 35
    return-void
.end method
