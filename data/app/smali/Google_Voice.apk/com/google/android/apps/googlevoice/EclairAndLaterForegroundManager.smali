.class public Lcom/google/android/apps/googlevoice/EclairAndLaterForegroundManager;
.super Ljava/lang/Object;
.source "EclairAndLaterForegroundManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ForegroundManager;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public startForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;ILandroid/app/Notification;)V
    .registers 5
    .parameter "service"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;->getDelegate()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 25
    return-void
.end method

.method public stopForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;I)V
    .registers 5
    .parameter "service"
    .parameter "id"

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;->getDelegate()Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 30
    return-void
.end method
