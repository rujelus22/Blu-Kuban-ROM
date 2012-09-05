.class public abstract Lcom/vlingo/client/core/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/location/LocationUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/vlingo/client/core/location/LocationUtils;->instance:Lcom/vlingo/client/core/location/LocationUtils;

    .line 22
    sput-object v0, Lcom/vlingo/client/core/location/LocationUtils;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellTowerInfo()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getInstance()Lcom/vlingo/client/core/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/location/LocationUtils;->_getCellTowerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/vlingo/client/core/location/LocationUtils;
    .registers 5

    .prologue
    .line 33
    const-class v2, Lcom/vlingo/client/core/location/LocationUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/location/LocationUtils;->instance:Lcom/vlingo/client/core/location/LocationUtils;

    if-nez v1, :cond_20

    .line 34
    sget-object v1, Lcom/vlingo/client/core/location/LocationUtils;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "LocationUtils implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 33
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 37
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/location/LocationUtils;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/location/LocationUtils;

    sput-object v1, Lcom/vlingo/client/core/location/LocationUtils;->instance:Lcom/vlingo/client/core/location/LocationUtils;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_3e

    .line 48
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/location/LocationUtils;->instance:Lcom/vlingo/client/core/location/LocationUtils;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 38
    :catch_24
    move-exception v0

    .line 41
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationUtils InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3e
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationUtils IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_13
.end method

.method public static getLastLat()D
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getInstance()Lcom/vlingo/client/core/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/location/LocationUtils;->_getLastLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastLong()D
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getInstance()Lcom/vlingo/client/core/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/location/LocationUtils;->_getLastLong()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getMCC()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/vlingo/client/core/location/LocationUtils;->getInstance()Lcom/vlingo/client/core/location/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/location/LocationUtils;->_getMCC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setLocationUtilsImpl(Ljava/lang/Class;)V
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
    .line 25
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/location/LocationUtils;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 26
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "LocationUtils clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 25
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 27
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/location/LocationUtils;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationUtils invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/location/LocationUtils;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 30
    monitor-exit v1

    return-void
.end method


# virtual methods
.method protected _getCellTowerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public _getLastLat()D
    .registers 3

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public _getLastLong()D
    .registers 3

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected _getMCC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, ""

    return-object v0
.end method