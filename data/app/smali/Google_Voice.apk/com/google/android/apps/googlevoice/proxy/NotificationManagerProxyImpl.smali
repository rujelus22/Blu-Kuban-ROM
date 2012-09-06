.class public Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;
.super Ljava/lang/Object;
.source "NotificationManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;


# instance fields
.field private final delegate:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .registers 2
    .parameter "notificationManager"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;->delegate:Landroid/app/NotificationManager;

    .line 19
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;->delegate:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 24
    return-void
.end method

.method public cancelAll()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;->delegate:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 29
    return-void
.end method

.method public getDelegate()Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;->delegate:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;->delegate:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 39
    return-void
.end method
