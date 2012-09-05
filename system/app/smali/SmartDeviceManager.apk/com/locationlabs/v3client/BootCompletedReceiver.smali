.class public Lcom/locationlabs/v3client/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "a"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartup("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 95
    :try_start_21
    invoke-static {p0}, Lal;->c(Landroid/content/Context;)Ldd;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ldd;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    const-string v5, "SINCE_BOOT_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 98
    invoke-interface {v3, v0}, Ldd;->b(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_48} :catch_49

    goto :goto_31

    .line 104
    :catch_49
    move-exception v0

    .line 109
    :goto_4a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.action.DO_STARTUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/locationlabs/v3client/BootCompletedReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 113
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 114
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 119
    return-void

    .line 102
    :cond_71
    :try_start_71
    const-string v0, "BootTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v3, v0, v4, v5}, Ldd;->a(Ljava/lang/String;J)V

    .line 103
    const-string v0, "BootCompletedReceivedTime"

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-interface {v3, v0, v1, v2}, Ldd;->a(Ljava/lang/String;J)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_87} :catch_49

    goto :goto_4a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 41
    const-string v0, "STARTUP_DELAY_BOOT_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/locationlabs/v3client/BootCompletedReceiver;->a(Landroid/content/Context;J)V

    .line 64
    :cond_15
    :goto_15
    return-void

    .line 44
    :cond_16
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 48
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_15

    .line 51
    :cond_27
    const-string v1, "com.locationlabs.action.AUTOSTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 53
    const-string v0, "STARTUP_DELAY_AUTOSTART_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/locationlabs/v3client/BootCompletedReceiver;->a(Landroid/content/Context;J)V

    goto :goto_15

    .line 55
    :cond_39
    const-string v1, "com.locationlabs.action.DO_STARTUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->B()Lac;

    move-result-object v1

    invoke-virtual {v1}, Lac;->a()V

    const-string v1, "AccountService.onStartup"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    invoke-static {p1}, Laf;->a(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;J)V

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lam;->a(J)Lcg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    :cond_6b
    invoke-static {p1}, Lcom/locationlabs/v3client/LocationService;->c(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/HeartbeatService;->b(Landroid/content/Context;)V

    sget-object v1, Ldg;->s:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/locationlabs/v3client/GpsStateService;->a(Landroid/content/Context;Z)V

    sget-object v1, Ldg;->q:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {p1}, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;->a(Landroid/content/Context;)V

    :cond_8d
    invoke-static {p1}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/drivedetect/DriveDetectHysteresis;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    invoke-static {p1}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;)V

    goto/16 :goto_15
.end method

.method public run()V
    .registers 4

    .prologue
    .line 68
    const-string v0, "STARTUP_DELAY_QUICKBOOT_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 69
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/locationlabs/v3client/BootCompletedReceiver;->a(Landroid/content/Context;J)V

    .line 74
    const-string v0, "Quickboot case"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 79
    return-void
.end method
