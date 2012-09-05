.class public abstract Lcom/google/android/location/os/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static loggerImplementation:Lcom/google/android/location/os/LoggerInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_9

    .line 42
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/os/LoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_9

    .line 60
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/os/LoggerInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_9

    .line 66
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/location/os/LoggerInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_9

    .line 48
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/os/LoggerInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_9
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_b

    .line 72
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/os/LoggerInterface;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 74
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static declared-synchronized registerLogger(Lcom/google/android/location/os/LoggerInterface;)V
    .registers 3
    .parameter "loggerImplementation"

    .prologue
    .line 37
    const-class v0, Lcom/google/android/location/os/Logger;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 38
    monitor-exit v0

    return-void

    .line 37
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v0, :cond_9

    .line 54
    sget-object v0, Lcom/google/android/location/os/Logger;->loggerImplementation:Lcom/google/android/location/os/LoggerInterface;

    invoke-interface {v0, p0, p1}, Lcom/google/android/location/os/LoggerInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_9
    return-void
.end method
