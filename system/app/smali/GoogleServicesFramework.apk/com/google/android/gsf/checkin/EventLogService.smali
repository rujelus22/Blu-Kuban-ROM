.class public Lcom/google/android/gsf/checkin/EventLogService;
.super Landroid/app/Service;
.source "EventLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/EventLogService$Receiver;
    }
.end annotation


# static fields
.field private static final sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

.field private static sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorkerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gsf/checkin/EventLogAggregator;

    invoke-direct {v0}, Lcom/google/android/gsf/checkin/EventLogAggregator;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogService;->scheduleAggregation(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/checkin/EventLogService;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static captureLogs(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    .line 68
    const-string v0, "EventLogService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 70
    .local v10, sp:Landroid/content/SharedPreferences;
    sget-object v11, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    monitor-enter v11

    .line 71
    :try_start_a
    const-string v0, "lastLog"

    const-wide/16 v4, 0x0

    invoke-interface {v10, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 72
    .local v2, lastLog:J
    const-string v0, "EventLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accumulating logs since "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_56

    .line 75
    :try_start_2a
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v4, -0x1

    const-string v6, "dropbox"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/checkin/EventLogAggregator;->aggregate(Landroid/content/ContentResolver;JJLandroid/os/DropBoxManager;)J

    move-result-wide v7

    .line 77
    .local v7, bookmark:J
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastLog"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_56
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4b} :catch_4d

    .line 81
    .end local v7           #bookmark:J
    :goto_4b
    :try_start_4b
    monitor-exit v11

    .line 82
    return-void

    .line 78
    :catch_4d
    move-exception v9

    .line 79
    .local v9, e:Ljava/io/IOException;
    const-string v0, "EventLogService"

    const-string v1, "Can\'t capture logs"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 81
    .end local v2           #lastLog:J
    .end local v9           #e:Ljava/io/IOException;
    :catchall_56
    move-exception v0

    monitor-exit v11
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v0
.end method

.method private static scheduleAggregation(Landroid/content/Context;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    const-string v0, "EventLogService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    new-instance v2, Lcom/android/common/OperationScheduler;

    invoke-direct {v2, v0}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    new-instance v4, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v4}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 166
    const-string v3, "aggregation_interval_seconds"

    const/16 v5, 0x708

    invoke-static {v0, v3, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    iput-wide v5, v4, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 171
    invoke-virtual {v2, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v2

    .line 173
    cmp-long v0, v2, v5

    if-gtz v0, :cond_5a

    .line 174
    const-class v1, Lcom/google/android/gsf/checkin/EventLogService;

    monitor-enter v1

    .line 175
    :try_start_31
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4b

    .line 176
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 177
    const/4 v2, 0x1

    const-string v3, "Event Log Handoff"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 180
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_31 .. :try_end_4c} :catchall_57

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/checkin/EventLogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    :cond_56
    :goto_56
    return-void

    .line 180
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0

    .line 182
    :cond_5a
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v2, v5

    if-gez v0, :cond_56

    .line 183
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 184
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/checkin/EventLogService$Receiver;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-static {p0, v1, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 186
    iget-wide v7, v4, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_84

    .line 187
    iget-wide v4, v4, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_56

    .line 189
    :cond_84
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_56
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    :cond_c
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1a

    .line 95
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    const-string v1, "Event Log Service"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    :cond_1a
    const-class v1, Lcom/google/android/gsf/checkin/EventLogService;

    monitor-enter v1

    .line 101
    :try_start_1d
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    .line 102
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2f

    .line 108
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_32

    .line 150
    :goto_2e
    return v2

    .line 105
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0

    .line 110
    :cond_32
    new-instance v0, Lcom/google/android/gsf/checkin/EventLogService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/checkin/EventLogService$1;-><init>(Lcom/google/android/gsf/checkin/EventLogService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/EventLogService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    goto :goto_2e
.end method
