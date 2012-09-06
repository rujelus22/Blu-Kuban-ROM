.class Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;
.super Ljava/lang/Object;
.source "AndroidLockManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/AndroidLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockWrapperImpl"
.end annotation


# instance fields
.field private acquiredAt:J

.field private final backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private releaser:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager;Landroid/os/PowerManager$WakeLock;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/BackgroundThread;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .end parameter
    .parameter "wakeLock"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "fileLog"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "backgroundThread"
    .end parameter
    .parameter "handler"
    .end parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->releaser:Ljava/lang/Runnable;

    .line 107
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 108
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 109
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->handler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    return-object v0
.end method

.method private getHeldFor()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 180
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 183
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method private log(Ljava/lang/String;)V
    .registers 13
    .parameter "event"

    .prologue
    .line 154
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    if-nez v6, :cond_9

    .line 177
    :cond_8
    :goto_8
    return-void

    .line 158
    :cond_9
    :try_start_9
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_f

    .line 159
    :catch_f
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "%s @ %s (was held %b for %dms)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->getHeldFor()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, message:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    invoke-interface {v6, v5}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4b
    if-ge v3, v4, :cond_6d

    aget-object v2, v0, v3

    .line 166
    .local v2, frame:Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    invoke-interface {v6, v5}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 170
    .end local v2           #frame:Ljava/lang/StackTraceElement;
    :cond_6d
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    new-instance v7, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$2;

    invoke-direct {v7, p0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$2;-><init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)V

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 5

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    const-string v0, "WakeLock.acquire()"

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->log(Ljava/lang/String;)V

    .line 135
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    .line 138
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 139
    monitor-exit p0

    return-void

    .line 134
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acquire(J)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock.acquire("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->log(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    .line 127
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->releaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->releaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 130
    monitor-exit p0

    return-void

    .line 115
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 3

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    const-string v0, "WakeLock.release().1"

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->acquiredAt:J

    .line 150
    :cond_1f
    const-string v0, "WakeLock.release().2"

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->log(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 151
    monitor-exit p0

    return-void

    .line 143
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
