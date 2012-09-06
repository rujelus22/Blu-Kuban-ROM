.class public final Lcom/google/android/apps/plus/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public static cancelInstantShareEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 26
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 28
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const-string v1, "InstantShare"

    const v2, 0x7f090040

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method public static notifyInstantShareEnabled(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4
    .parameter "context"
    .parameter "eventName"
    .parameter "intent"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/util/NotificationUtils;->notifyInstantShareEnabled(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Z)V

    .line 41
    return-void
.end method

.method public static notifyInstantShareEnabled(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Z)V
    .registers 11
    .parameter "context"
    .parameter "eventName"
    .parameter "intent"
    .parameter "showTicker"

    .prologue
    .line 54
    const v4, 0x7f0803f1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, subtitle:Ljava/lang/String;
    if-eqz p3, :cond_2e

    move-object v3, v2

    .line 58
    .local v3, ticker:Ljava/lang/String;
    :goto_a
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020182

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v4, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 60
    .local v0, notification:Landroid/app/Notification;
    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 61
    const/16 v4, 0x22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 63
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 65
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const-string v4, "InstantShare"

    const v5, 0x7f090040

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 67
    return-void

    .line 56
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #ticker:Ljava/lang/String;
    :cond_2e
    const/4 v3, 0x0

    goto :goto_a
.end method
