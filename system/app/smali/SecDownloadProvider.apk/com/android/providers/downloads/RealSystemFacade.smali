.class Lcom/android/providers/downloads/RealSystemFacade;
.super Ljava/lang/Object;
.source "RealSystemFacade.java"

# interfaces
.implements Lcom/android/providers/downloads/SystemFacade;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 104
    return-void
.end method

.method public cancelNotification(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 99
    return-void
.end method

.method public currentTimeMillis()J
    .registers 3

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 7
    .parameter "uid"

    .prologue
    .line 31
    iget-object v3, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 33
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_15

    .line 34
    const-string v3, "DownloadManager"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v2, 0x0

    .line 47
    :cond_14
    :goto_14
    return-object v2

    .line 38
    :cond_15
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2f

    .line 41
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 42
    .local v2, wifiDirectInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_14

    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_14

    .line 43
    const-string v3, "DownloadManager"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v2           #wifiDirectInfo:Landroid/net/NetworkInfo;
    :cond_2f
    move-object v2, v0

    .line 47
    goto :goto_14
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    iget-object v5, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_16

    .line 54
    const-string v5, "DownloadManager"

    const-string v6, "couldn\'t get connectivity manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_15
    return v4

    .line 58
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_3e

    move v2, v3

    .line 60
    .local v2, isMobile:Z
    :goto_23
    if-eqz v2, :cond_40

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 61
    .local v3, isRoaming:Z
    :goto_2f
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_3c

    if-eqz v3, :cond_3c

    .line 62
    const-string v4, "DownloadManager"

    const-string v5, "network is roaming"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move v4, v3

    .line 64
    goto :goto_15

    .end local v2           #isMobile:Z
    .end local v3           #isRoaming:Z
    :cond_3e
    move v2, v4

    .line 59
    goto :goto_23

    .restart local v2       #isMobile:Z
    :cond_40
    move v3, v4

    .line 60
    goto :goto_2f
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .registers 6
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 94
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .registers 5
    .parameter "uid"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method
