.class public Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;
.super Lcom/google/android/apps/docs/GuiceBroadcastReceiver;
.source "OverallSyncStatusReceiver.java"


# instance fields
.field public a:LLh;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;IIJJ)Landroid/app/Notification;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    if-nez p2, :cond_24

    .line 97
    sget v1, LcY;->pin_notification_sync_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_e
    new-instance v1, Landroid/app/Notification;

    sget v2, LcR;->ic_offline_notification:I

    invoke-direct {v1, v2, v0, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 109
    invoke-static {p4, p5}, LXR;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 111
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 112
    return-object v1

    .line 98
    :cond_24
    if-ne p2, p3, :cond_35

    .line 99
    sget v1, LcW;->pin_notification_sync_completed_all:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 102
    :cond_35
    sget v1, LcW;->pin_notification_sync_queued_files:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget v2, LcW;->pin_notification_sync_completed:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private a(Landroid/content/Context;IJJ)Landroid/app/Notification;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcW;->pin_notification_sync_progress:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/app/Notification;

    sget v2, LcR;->ic_offline_notification:I

    invoke-direct {v1, v2, v0, p5, p6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 76
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, LcU;->progress_notification:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    sget v3, LcS;->notification_icon:I

    sget v4, LcR;->ic_offline_notification:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 80
    sget v3, LcS;->notification_title:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    sget v0, LcS;->notification_text:I

    invoke-static {p3, p4}, LXR;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    sget v0, LcS;->notification_progressbar:I

    invoke-virtual {v2, v0, v5, v6, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 86
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 87
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0xa

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 89
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lnk;->d:Lnk;

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x0

    .line 35
    const-string v0, "accountName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    const-string v0, "total_bytes_loaded"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 37
    const-string v0, "tasks_active"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    const-string v1, "tasks_completed"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 39
    const-string v1, "tasks_failed"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    const-string v3, "tasks_canceled"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 41
    const-string v6, "service_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 44
    add-int v9, v0, v2

    add-int/2addr v9, v1

    if-gtz v9, :cond_3f

    .line 45
    if-lez v3, :cond_3e

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a:LLh;

    invoke-interface {v0, v11}, LLh;->a(I)V

    .line 68
    :cond_3e
    :goto_3e
    return-void

    .line 55
    :cond_3f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "taskActive: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " taskCompleted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " taskFailed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " taskCanceled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int v3, v2, v1

    .line 60
    if-nez v0, :cond_89

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a(Landroid/content/Context;IIJJ)Landroid/app/Notification;

    move-result-object v0

    .line 65
    :goto_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a:LLh;

    invoke-interface {v1, v11, v0}, LLh;->a(ILandroid/app/Notification;)V

    goto :goto_3e

    .line 60
    :cond_89
    add-int/2addr v3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a(Landroid/content/Context;IJJ)Landroid/app/Notification;

    move-result-object v0

    goto :goto_7d
.end method
