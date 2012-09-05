.class public Lcom/sprint/id/updater/UpdaterService;
.super Landroid/app/Service;
.source "UpdaterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;
    }
.end annotation


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;

.field private static props:Ljava/util/Properties;

.field private static scheduled:Z


# instance fields
.field private startId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/sprint/id/updater/UpdaterService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/id/updater/UpdaterService;->scheduled:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/id/updater/UpdaterService;->startId:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/id/updater/UpdaterService;)I
    .registers 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/sprint/id/updater/UpdaterService;->startId:I

    return v0
.end method

.method private static getScheduledIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/id/updater/UpdaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, updateServiceIntent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private handleCommand()V
    .registers 3

    .prologue
    .line 55
    invoke-static {p0}, Lcom/sprint/id/updater/Util;->checkForUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 56
    new-instance v0, Lcom/sprint/id/updater/CheckForUpdateThread;

    new-instance v1, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;

    invoke-direct {v1, p0}, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;-><init>(Lcom/sprint/id/updater/UpdaterService;)V

    invoke-direct {v0, v1, p0}, Lcom/sprint/id/updater/CheckForUpdateThread;-><init>(Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sprint/id/updater/CheckForUpdateThread;->start()V

    .line 58
    :cond_13
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    .line 134
    sget-object v4, Lcom/sprint/id/updater/UpdaterService;->props:Ljava/util/Properties;

    if-nez v4, :cond_36

    .line 136
    :try_start_4
    invoke-virtual {p0}, Lcom/sprint/id/updater/UpdaterService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 138
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v4, "updater.properties"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 139
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lcom/sprint/id/updater/UpdaterService;->props:Ljava/util/Properties;

    .line 140
    sget-object v4, Lcom/sprint/id/updater/UpdaterService;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 141
    sget-object v4, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loaded the updater properties for package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/UpdaterService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_36} :catch_37

    .line 146
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_36
    :goto_36
    return-void

    .line 142
    :catch_37
    move-exception v1

    .line 143
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to load the updater properties for package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/UpdaterService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method public static schedule(Landroid/content/Context;Z)V
    .registers 12
    .parameter "context"
    .parameter "runNow"

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 67
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v2, "update_interval"

    const-wide/32 v8, 0x5265c00

    invoke-interface {v7, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 69
    .local v4, interval:J
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 71
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/sprint/id/updater/UpdaterService;->getScheduledIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 73
    .local v6, scheduleIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_4c

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 75
    sput-boolean v1, Lcom/sprint/id/updater/UpdaterService;->scheduled:Z

    .line 76
    sget-object v1, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Scheduled the UpdateService alarm, with RUN_NOW"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 83
    :cond_2c
    :goto_2c
    sget-object v1, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduled the updater for every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v8, 0xea60

    div-long v8, v4, v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mins."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 84
    return-void

    .line 77
    :cond_4c
    sget-boolean v2, Lcom/sprint/id/updater/UpdaterService;->scheduled:Z

    if-nez v2, :cond_2c

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 79
    sput-boolean v1, Lcom/sprint/id/updater/UpdaterService;->scheduled:Z

    .line 80
    sget-object v1, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Scheduled the UpdateService alarm"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public static unschedule(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/sprint/id/updater/UpdaterService;->getScheduledIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    .local v1, scheduleIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 90
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 91
    sget-object v2, Lcom/sprint/id/updater/UpdaterService;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Unscheduled the UpdateService alarm"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-direct {p0}, Lcom/sprint/id/updater/UpdaterService;->init()V

    .line 45
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 50
    iput p2, p0, Lcom/sprint/id/updater/UpdaterService;->startId:I

    .line 51
    invoke-direct {p0}, Lcom/sprint/id/updater/UpdaterService;->handleCommand()V

    .line 52
    return-void
.end method
