.class public Lcom/vlingo/client/core/util/TimerSingleton;
.super Ljava/lang/Object;
.source "TimerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;
    }
.end annotation


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/util/TimerSingleton;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 45
    const-class v1, Lcom/vlingo/client/core/util/TimerSingleton;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    if-eqz v0, :cond_f

    .line 46
    sget-object v0, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;->cancelTimer()V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 49
    :cond_f
    monitor-exit v1

    return-void

    .line 45
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTimer()Ljava/util/Timer;
    .registers 5

    .prologue
    .line 28
    const-class v2, Lcom/vlingo/client/core/util/TimerSingleton;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    if-nez v1, :cond_20

    .line 29
    sget-object v1, Lcom/vlingo/client/core/util/TimerSingleton;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "TimerSingletonTimer implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 28
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 32
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/util/TimerSingleton;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    sput-object v1, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_41

    .line 41
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/util/TimerSingleton;->timer:Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 33
    :catch_24
    move-exception v0

    .line 34
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerSingletonTimer InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_41
    move-exception v0

    .line 37
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerSingletonTimer IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_13
.end method

.method public static declared-synchronized setTimerSingletonTimerImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/util/TimerSingleton;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 21
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "TimerSingletonTimer clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 20
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 22
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/util/TimerSingleton$TimerSingletonTimer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerSingletonTimer invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/util/TimerSingleton;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 25
    monitor-exit v1

    return-void
.end method
