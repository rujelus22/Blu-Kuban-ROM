.class public Lcom/android/calendar/alerts/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    sget-object v2, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_3
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1e

    .line 101
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 105
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 107
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1e
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    monitor-exit v2

    .line 110
    return-void

    .line 109
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .registers 4
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 117
    sget-object v1, Lcom/android/calendar/alerts/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_12

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 120
    sget-object v0, Lcom/android/calendar/alerts/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 123
    :cond_12
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZJZ)Landroid/app/Notification;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 138
    const-class v4, Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 143
    const-class v5, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v5, "delete"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_31

    .line 147
    :cond_2a
    const v5, 0x7f0c0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_31
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v8, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    const v2, 0x7f020052

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 154
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 156
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 157
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 158
    if-eqz p4, :cond_57

    .line 159
    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 162
    :cond_57
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_61

    .line 163
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 173
    :cond_61
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 174
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 177
    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 181
    if-nez p7, :cond_106

    .line 182
    const v7, 0x80001

    .line 183
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 184
    const v7, 0x80081

    .line 190
    :cond_97
    :goto_97
    add-int/lit8 v2, v11, 0x1

    if-le v12, v2, :cond_9d

    .line 191
    or-int/lit8 v7, v7, 0x10

    .line 194
    :cond_9d
    new-instance v13, Ljava/lang/StringBuilder;

    move-object v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p5

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    if-nez p7, :cond_d3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    if-eq v9, v2, :cond_d3

    .line 199
    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 200
    iget v2, v10, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_10a

    const/4 v2, 0x1

    .line 201
    :goto_bd
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_d3
    add-int/lit8 v2, v11, 0x1

    if-ne v12, v2, :cond_e6

    .line 207
    const-string v2, ", "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_e6
    if-eqz p2, :cond_fa

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fa

    .line 213
    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_fa
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 218
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 187
    :cond_106
    const v7, 0x82000

    goto :goto_97

    .line 200
    :cond_10a
    const/4 v2, 0x0

    goto :goto_bd
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/DismissAllAlarmsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    :goto_16
    return-void

    .line 80
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    const-class v1, Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 83
    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3c

    .line 88
    const-string v2, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_3c
    invoke-static {p1, v0}, Lcom/android/calendar/alerts/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16
.end method
