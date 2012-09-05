.class public Lcom/google/android/finsky/receivers/UpdateCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateCheckReceiver.java"


# static fields
.field private static sSetAutoUpdateAlarm:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    .line 31
    sget-boolean v0, Lcom/google/android/finsky/receivers/UpdateCheckReceiver;->sSetAutoUpdateAlarm:Z

    if-eqz v0, :cond_5

    .line 48
    :goto_4
    return-void

    .line 34
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/receivers/UpdateCheckReceiver;->sSetAutoUpdateAlarm:Z

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.FORCE_UPDATE_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    const-class v1, Lcom/google/android/finsky/receivers/UpdateCheckReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 40
    const-wide/32 v2, 0x927c0

    .line 41
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingUpdateCheckFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 43
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 46
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method private static updateCheckIfNecessary(Landroid/content/Context;)V
    .registers 13
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 56
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingUpdateCheckFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 59
    sub-long v7, v3, v1

    .line 61
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gez v0, :cond_44

    .line 62
    const-string v0, "Wall clock changed by user / system. Current time: %d Last check %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 79
    :cond_43
    :goto_43
    return-void

    .line 68
    :cond_44
    cmp-long v0, v7, v5

    if-ltz v0, :cond_43

    .line 72
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.UPDATES_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-class v1, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const-string v1, "UPDATES_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "Force checking for available updates."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_43
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-static {p1}, Lcom/google/android/finsky/receivers/UpdateCheckReceiver;->updateCheckIfNecessary(Landroid/content/Context;)V

    .line 53
    return-void
.end method
