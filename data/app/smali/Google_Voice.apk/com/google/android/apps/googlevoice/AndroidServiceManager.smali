.class public Lcom/google/android/apps/googlevoice/AndroidServiceManager;
.super Ljava/lang/Object;
.source "AndroidServiceManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ServiceManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private final foregroundManager:Lcom/google/android/apps/googlevoice/ForegroundManager;

.field private final intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory;Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;Z)V
    .registers 6
    .parameter "context"
    .parameter "intentFactory"
    .parameter "notificationManager"
    .parameter "buildIsDonutOrEarlier"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    .line 37
    if-eqz p4, :cond_11

    new-instance v0, Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;

    invoke-direct {v0, p3}, Lcom/google/android/apps/googlevoice/PreEclairForegroundManager;-><init>(Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;)V

    :goto_e
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->foregroundManager:Lcom/google/android/apps/googlevoice/ForegroundManager;

    .line 40
    return-void

    .line 37
    :cond_11
    new-instance v0, Lcom/google/android/apps/googlevoice/EclairAndLaterForegroundManager;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/EclairAndLaterForegroundManager;-><init>()V

    goto :goto_e
.end method


# virtual methods
.method public bindCallLogService(Landroid/content/ServiceConnection;)V
    .registers 6
    .parameter "connection"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 76
    return-void
.end method

.method public cancelInboxNotificationRegistrationAlarm()V
    .registers 5

    .prologue
    .line 108
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    return-void
.end method

.method public cancelShadowNumberRefreshAlarm()V
    .registers 5

    .prologue
    .line 169
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_9

    .line 170
    const-string v2, "AndroidServiceManager.cancelShadowNumberRefreshAlarm()"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 172
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 173
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 174
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 175
    return-void
.end method

.method public cancelUpdateAlarm()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelUpdateAlarm(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public listenToCallLogService(Landroid/os/IBinder;Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V
    .registers 6
    .parameter "binder"
    .parameter "listener"

    .prologue
    .line 86
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1a

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting CalLogService listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 89
    :cond_1a
    check-cast p1, Lcom/google/android/apps/googlevoice/LocalBinder;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/LocalBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CallLogService;

    .line 90
    .local v0, service:Lcom/google/android/apps/googlevoice/CallLogService;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/CallLogService;->setListener(Lcom/google/android/apps/googlevoice/CallLogService$Listener;)V

    .line 91
    return-void
.end method

.method public refreshShadowNumberMappings()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->refreshShadowNumberMappings(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public refreshShadowNumberMappings(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "onDone"

    .prologue
    .line 135
    if-eqz p1, :cond_13

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/googlevoice/AndroidServiceManager$1;-><init>(Lcom/google/android/apps/googlevoice/AndroidServiceManager;Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.googlevoice.SHADOW_NUMBERS_REFRESHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->requestRefresh(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public requestBackgroundUpdate()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForPeriodicUpdate(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public requestForegroundUpdate()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestForegroundUpdate(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public requestInboxNotificationRegistration()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->requestRegistration(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public requestUpdateServiceStart()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestServiceStart(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public requestUpdateServiceStop()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestServiceStop(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public scheduleInboxNotificationRegistrationAlarm(JJ)V
    .registers 12
    .parameter "timeMillis"
    .parameter "repeatIntervalMillis"

    .prologue
    const/4 v1, 0x0

    .line 96
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_1e

    .line 97
    const-string v2, "AndroidServiceManager.scheduleInboxNotificationRegistrationAlarm(%d, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 100
    :cond_1e
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 101
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, pendingIntent:Landroid/app/PendingIntent;
    move-wide v2, p1

    move-wide v4, p3

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 104
    return-void
.end method

.method public scheduleShadowNumberRefreshAlarm(JJ)V
    .registers 12
    .parameter "systemTimeMillis"
    .parameter "repeatIntervalMillis"

    .prologue
    const/4 v1, 0x1

    .line 156
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_1e

    .line 157
    const-string v2, "AndroidServiceManager.scheduleShadowNumberRefreshAlarm(%d, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 160
    :cond_1e
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 161
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 162
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-wide v2, p1

    move-wide v4, p3

    .line 163
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 165
    return-void
.end method

.method public startCallLogService(Lcom/google/android/apps/googlevoice/CallLogService$StatusType;Ljava/lang/String;)V
    .registers 6
    .parameter "type"
    .parameter "originalNumber"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.CallLogService.STATUS_MARKER"

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    if-eqz p2, :cond_19

    .line 67
    const-string v1, "com.google.android.apps.googlevoice.CallLogService.NUMBER_TO_CALL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method public startForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;ILandroid/app/Notification;)V
    .registers 5
    .parameter "service"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->foregroundManager:Lcom/google/android/apps/googlevoice/ForegroundManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/ForegroundManager;->startForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;ILandroid/app/Notification;)V

    .line 126
    return-void
.end method

.method public stopForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;I)V
    .registers 4
    .parameter "service"
    .parameter "id"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->foregroundManager:Lcom/google/android/apps/googlevoice/ForegroundManager;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/ForegroundManager;->stopForeground(Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;I)V

    .line 131
    return-void
.end method

.method public unbindCallLogService(Landroid/content/ServiceConnection;)V
    .registers 3
    .parameter "connection"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    return-void
.end method

.method public updateWidget()V
    .registers 4

    .prologue
    .line 179
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 180
    const-string v0, "AndroidServiceManager.updateWidget()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 182
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidServiceManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newUpdateWidgetIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    return-void
.end method
