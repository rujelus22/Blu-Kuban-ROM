.class public Lcom/sprint/dsa/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# instance fields
.field final mInterval:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const v0, 0x1d4c0

    iput v0, p0, Lcom/sprint/dsa/BootCompleteReceiver;->mInterval:I

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 23
    new-instance v4, Lcom/sprint/dsa/Prefs;

    invoke-direct {v4, p1}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 24
    .local v4, prefs:Lcom/sprint/dsa/Prefs;
    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sprint/dsa/data/Device;->onlyActivition()Z

    move-result v7

    if-nez v7, :cond_54

    invoke-virtual {v4}, Lcom/sprint/dsa/Prefs;->getPollInterval()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_54

    .line 26
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 27
    .local v5, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x1d4c0

    add-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 28
    invoke-virtual {v5, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 30
    .local v1, nextUpdate:J
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v6, updateIntent:Landroid/content/Intent;
    const-class v7, Lcom/sprint/dsa/UpdateService;

    invoke-virtual {v6, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    invoke-static {p1, v11, v6, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 35
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/AlarmManager;

    .line 36
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 44
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #nextUpdate:J
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #prefs:Lcom/sprint/dsa/Prefs;
    .end local v5           #time:Landroid/text/format/Time;
    .end local v6           #updateIntent:Landroid/content/Intent;
    :cond_54
    return-void
.end method
