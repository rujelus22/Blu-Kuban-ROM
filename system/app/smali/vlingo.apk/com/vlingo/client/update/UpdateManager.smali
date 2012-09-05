.class public Lcom/vlingo/client/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performUpdateCheck(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 26
    const-string v1, "update_info_xml"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, updateXML:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 28
    invoke-static {v0, p0}, Lcom/vlingo/client/update/UpdateManager;->performUpdateCheck(Ljava/lang/String;Landroid/content/Context;)V

    .line 30
    :cond_13
    return-void
.end method

.method protected static performUpdateCheck(Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "updateXML"
    .parameter "context"

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Lcom/vlingo/client/update/UpdateInfo2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/update/UpdateInfo2;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, updateinfo:Lcom/vlingo/client/update/UpdateInfo2;
    invoke-virtual {v1}, Lcom/vlingo/client/update/UpdateInfo2;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 36
    invoke-virtual {v1}, Lcom/vlingo/client/update/UpdateInfo2;->getBannerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vlingo/client/update/UpdateInfo2;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vlingo/client/update/UpdateInfo2;->getButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vlingo/client/update/UpdateInfo2;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, p1}, Lcom/vlingo/client/update/UpdateManager;->showUpdateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 41
    .end local v1           #updateinfo:Lcom/vlingo/client/update/UpdateInfo2;
    :cond_1e
    :goto_1e
    return-void

    .line 38
    :catch_1f
    move-exception v0

    .line 39
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public static saveNewUpdateXML(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .parameter "updateXML"
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "update_info_xml"

    invoke-static {v0, p0}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p1}, Lcom/vlingo/client/update/UpdateManager;->performUpdateCheck(Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method protected static showUpdateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 15
    .parameter "bannerText"
    .parameter "messageText"
    .parameter "buttonText"
    .parameter "downloadURL"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 44
    const-string v6, "notification"

    invoke-virtual {p4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 45
    .local v3, nm:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const v6, 0x7f020180

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v6, p0, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 46
    .local v2, n:Landroid/app/Notification;
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, appcontext:Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .local v5, notificationIntent:Landroid/content/Intent;
    invoke-static {p4, v9, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 49
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v0, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 50
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40e3880000000000L

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 54
    .local v4, notificationId:I
    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 55
    return-void
.end method
