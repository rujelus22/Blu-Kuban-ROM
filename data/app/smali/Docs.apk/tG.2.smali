.class public LtG;
.super Ljava/lang/Object;
.source "ServiceHelperImpl.java"

# interfaces
.implements LtF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LXy;)Landroid/content/ServiceConnection;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LXy",
            "<",
            "Lcom/google/android/apps/docs/docsuploader/UploadQueueService;",
            ">;)",
            "Landroid/content/ServiceConnection;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Landroid/content/Context;LXy;)Landroid/content/ServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Service;ILandroid/app/Notification;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 23
    return-void
.end method

.method public a(Landroid/app/Service;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    .line 28
    return-void
.end method
