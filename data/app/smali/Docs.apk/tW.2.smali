.class public final LtW;
.super Ldd;
.source "UploadQueueService.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    .line 70
    const-string v0, "UploadQueueService thread"

    invoke-direct {p0, v0}, Ldd;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public c()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 80
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080088

    iget-object v2, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    sget v3, LcY;->upload_notification_started_ticker_drivev2:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 84
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 85
    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    const-string v2, ""

    invoke-static {v1, v2}, LtM;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 86
    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v2, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    const-class v5, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 88
    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v1, v1, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v1, v1, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtF;

    iget-object v2, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-interface {v1, v2, v6, v0}, LtF;->a(Landroid/app/Service;ILandroid/app/Notification;)V

    .line 93
    iget-object v0, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v0, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LZC;

    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    const-string v2, "UploadQueueService"

    new-instance v3, LtX;

    invoke-direct {v3, p0}, LtX;-><init>(LtW;)V

    invoke-interface {v0, v1, v2, v3}, LZC;->a(Landroid/content/Context;Ljava/lang/String;LcI;)V

    .line 100
    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    monitor-enter v1

    .line 101
    :try_start_5b
    iget-object v0, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtW;

    .line 102
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_77

    .line 103
    iget-object v0, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v0, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:LtF;

    iget-object v1, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-interface {v0, v1, v6}, LtF;->a(Landroid/app/Service;Z)V

    .line 104
    const-string v0, "UploadQueueService"

    const-string v1, "stopping service"

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->stopSelf()V

    .line 106
    return-void

    .line 102
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method
