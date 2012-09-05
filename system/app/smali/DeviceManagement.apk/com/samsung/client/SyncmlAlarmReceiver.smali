.class public Lcom/samsung/client/SyncmlAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncmlAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setAlarmWithOffset(JLandroid/content/Intent;Landroid/content/Context;)V
    .registers 10
    .parameter "offset"
    .parameter "i"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string v2, "alarm"

    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 77
    .local v0, am:Landroid/app/AlarmManager;
    const/high16 v2, 0x800

    invoke-static {p4, v4, p3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/32 v8, 0x493e0

    .line 18
    const-string v4, "SyncmlAlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.samsung.client.PRL_ALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 23
    const-string v4, "SyncmlAlarmReceiver"

    const-string v5, "Resetting PRL ALARM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    const-string v5, "prl_interval"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v2

    .line 28
    .local v2, interval:J
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    const-string v5, "prl_next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 31
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.sprint.START_PRL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.client.PRL_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "prl_interval"

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    .line 71
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #interval:J
    :cond_6a
    :goto_6a
    return-void

    .line 40
    .restart local v2       #interval:J
    :cond_6b
    const-string v4, "SyncmlAlarmReceiver"

    const-string v5, "Rescheduling PRL ALARM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.client.PRL_ALARM"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8, v9, v4, p1}, Lcom/samsung/client/SyncmlAlarmReceiver;->setAlarmWithOffset(JLandroid/content/Intent;Landroid/content/Context;)V

    goto :goto_6a

    .line 46
    .end local v2           #interval:J
    :cond_7d
    const-string v4, "com.samsung.client.FUMO_ALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 47
    const-string v4, "SyncmlAlarmReceiver"

    const-string v5, "Resetting FUMO ALARM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    const-string v5, "fumo_interval"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v2

    .line 52
    .restart local v2       #interval:J
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    const-string v5, "fumo_next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 55
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.sprint.START_FUMO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "fumo_interval"

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6a

    .line 64
    .end local v1           #i:Landroid/content/Intent;
    :cond_c9
    const-string v4, "SyncmlAlarmReceiver"

    const-string v5, "Rescheduling FUMO ALARM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8, v9, v4, p1}, Lcom/samsung/client/SyncmlAlarmReceiver;->setAlarmWithOffset(JLandroid/content/Intent;Landroid/content/Context;)V

    goto :goto_6a
.end method
