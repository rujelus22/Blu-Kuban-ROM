.class public Lcom/samsung/client/SyncmlBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncmlBootReceiver.java"


# instance fields
.field private mApp:Lcom/samsung/client/DMApp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    return-void
.end method

.method private checkAndResetAlarm(JJLandroid/content/Intent;Landroid/content/Context;J)V
    .registers 16
    .parameter "interval"
    .parameter "next_time"
    .parameter "i"
    .parameter "context"
    .parameter "offset"

    .prologue
    .line 174
    const-wide/16 v4, -0x1

    cmp-long v4, v4, p1

    if-eqz v4, :cond_44

    .line 176
    const-string v4, "SyncmlBootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReSetting alarm for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 178
    .local v1, current_time:J
    cmp-long v4, p3, v1

    if-lez v4, :cond_45

    .line 179
    const-string v4, "SyncmlBootReceiver"

    const-string v5, "Time not yet passed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v4, "alarm"

    invoke-virtual {p6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 183
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p6, v4, p5, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 186
    .local v3, pi:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p3, p4, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 201
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #current_time:J
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_44
    :goto_44
    return-void

    .line 189
    .restart local v1       #current_time:J
    :cond_45
    const-string v4, "SyncmlBootReceiver"

    const-string v5, "Time already passed, give an offset and set alarm"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v4, "alarm"

    invoke-virtual {p6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 193
    .restart local v0       #am:Landroid/app/AlarmManager;
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p6, v4, p5, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 196
    .restart local v3       #pi:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    add-long v5, v1, p7

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_44
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_1e

    .line 29
    const-string v0, "SyncmlBootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 33
    .local v9, action:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    .line 35
    const-string v0, "com.sprint.android.SPRINTEXTENSION_STARTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 37
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "BOOT_COMPLETED "

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.client.SYNCML_SERVICE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    const-string v5, "prl_interval"

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    .line 50
    .local v1, interval:J
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    const-string v5, "prl_next_time"

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v3

    .line 53
    .local v3, next_time:J
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.samsung.client.PRL_ALARM"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v7, 0x493e0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/client/SyncmlBootReceiver;->checkAndResetAlarm(JJLandroid/content/Intent;Landroid/content/Context;J)V

    .line 57
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    const-string v5, "fumo_interval"

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    .line 59
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    const-string v5, "fumo_next_time"

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v3

    .line 62
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v7, 0x927c0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/client/SyncmlBootReceiver;->checkAndResetAlarm(JJLandroid/content/Intent;Landroid/content/Context;J)V

    .line 170
    .end local v1           #interval:J
    .end local v3           #next_time:J
    :cond_87
    :goto_87
    return-void

    .line 66
    :cond_88
    const-string v0, "com.samsung.sprint.START_PRL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 67
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 70
    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const-string v7, "prl_enable"

    invoke-virtual {v0, v7}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_87

    .line 74
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_87

    .line 78
    sget v0, Lcom/samsung/client/DMApp;->mCallState:I

    if-nez v0, :cond_87

    .line 82
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-nez v0, :cond_87

    .line 86
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "IN PRL"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->prlStartSession()V

    .line 89
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.START_CIPRL"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v10, i:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 91
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const/high16 v0, 0x80

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_87

    .line 97
    .end local v10           #i:Landroid/content/Intent;
    :cond_e4
    const-string v0, "com.samsung.sprint.START_DP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 98
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 99
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 101
    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const-string v7, "dc_enable"

    invoke-virtual {v0, v7}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_87

    .line 105
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_87

    .line 109
    sget v0, Lcom/samsung/client/DMApp;->mCallState:I

    if-nez v0, :cond_87

    .line 113
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-nez v0, :cond_87

    .line 117
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "IN DC"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->dcStartSession()V

    .line 120
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.START_CIDC"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v10       #i:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 122
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const/high16 v0, 0x80

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_87

    .line 128
    .end local v10           #i:Landroid/content/Intent;
    :cond_141
    const-string v0, "com.samsung.sprint.START_FUMO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 129
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 131
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 133
    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    const-string v7, "fumo_enable"

    invoke-virtual {v0, v7}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_87

    .line 137
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_87

    .line 141
    sget v0, Lcom/samsung/client/DMApp;->mCallState:I

    if-nez v0, :cond_87

    .line 145
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-nez v0, :cond_87

    .line 149
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v10       #i:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 151
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const/high16 v0, 0x80

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v0, "Cifumo_after_gota_update"

    const/4 v5, 0x1

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "IN FUMO"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/samsung/client/SyncmlBootReceiver;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->fumoStartSession()V

    goto/16 :goto_87

    .line 162
    .end local v10           #i:Landroid/content/Intent;
    :cond_1a9
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 163
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "SCREEN OFF"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    goto/16 :goto_87

    .line 165
    :cond_1bd
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 166
    const-string v0, "SyncmlBootReceiver"

    const-string v5, "SCREEN ON"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    goto/16 :goto_87
.end method
