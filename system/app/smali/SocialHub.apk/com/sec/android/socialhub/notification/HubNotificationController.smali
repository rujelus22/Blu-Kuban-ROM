.class public Lcom/sec/android/socialhub/notification/HubNotificationController;
.super Ljava/lang/Object;
.source "HubNotificationController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public createCommonNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;
    .registers 13
    .parameter "context"
    .parameter "title"
    .parameter "state"
    .parameter "indicator_msg"
    .parameter "visiblePrgoress"
    .parameter "isDone"

    .prologue
    .line 66
    new-instance v1, Landroid/app/Notification;

    if-eqz p6, :cond_4b

    const v2, 0x1080089

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, p4, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 72
    .local v1, notification:Landroid/app/Notification;
    new-instance v0, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;

    if-nez p5, :cond_4f

    const/4 v2, 0x1

    :goto_13
    invoke-direct {v0, p1, v2}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, hubRemoteView:Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 74
    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;->setState(Ljava/lang/String;)V

    .line 78
    if-nez p6, :cond_51

    .line 80
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 87
    :goto_26
    const-string v2, "HubNotificationController"

    const-string v3, "createCommonNotification()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visiblePrgoress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v1

    .line 66
    .end local v0           #hubRemoteView:Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;
    .end local v1           #notification:Landroid/app/Notification;
    :cond_4b
    const v2, 0x1080088

    goto :goto_7

    .line 72
    .restart local v1       #notification:Landroid/app/Notification;
    :cond_4f
    const/4 v2, 0x2

    goto :goto_13

    .line 84
    .restart local v0       #hubRemoteView:Lcom/sec/android/socialhub/notification/HubNotificationRemoteView;
    :cond_51
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    goto :goto_26
.end method

.method public getNotiManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 105
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public registerNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/Notification;)V
    .registers 11
    .parameter "context"
    .parameter "id"
    .parameter "title"
    .parameter "content"
    .parameter "page"
    .parameter "notification"

    .prologue
    .line 40
    if-eqz p6, :cond_4

    .line 42
    iput-object p5, p6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 45
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/notification/HubNotificationController;->getNotiManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/notification/HubNotificationController;->getNotiManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1, p6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 48
    const-string v0, "HubNotificationController"

    const-string v1, "registerNotification()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p2, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
