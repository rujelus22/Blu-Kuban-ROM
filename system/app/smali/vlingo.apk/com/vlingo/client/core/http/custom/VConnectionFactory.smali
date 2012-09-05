.class public abstract Lcom/vlingo/client/core/http/custom/VConnectionFactory;
.super Ljava/lang/Object;
.source "VConnectionFactory.java"


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newInstance(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/http/custom/VConnectionFactory;
    .registers 7
    .parameter "connectionProvider"

    .prologue
    .line 37
    const-class v3, Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->ImplClass:Ljava/lang/Class;

    if-nez v2, :cond_12

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "VConnectionFactory implementation class is not set"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 37
    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 40
    :cond_12
    :try_start_12
    sget-object v2, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    .line 41
    .local v1, vCon:Lcom/vlingo/client/core/http/custom/VConnectionFactory;
    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->init(Lcom/vlingo/client/core/net/ConnectionProvider;)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_1d} :catch_39

    .line 42
    monitor-exit v3

    return-object v1

    .line 43
    .end local v1           #vCon:Lcom/vlingo/client/core/http/custom/VConnectionFactory;
    :catch_1f
    move-exception v0

    .line 46
    .local v0, ex:Ljava/lang/InstantiationException;
    :try_start_20
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VConnectionFactory InstantiationException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_39
    move-exception v0

    .line 50
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VConnectionFactory IllegalAccessException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_f
.end method

.method public static declared-synchronized setVConnectionFactoryImpl(Ljava/lang/Class;)V
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
    .line 29
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 30
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "VConnectionFactory clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 29
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 31
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VConnectionFactory invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 34
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public init(Lcom/vlingo/client/core/net/ConnectionProvider;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 58
    return-void
.end method

.method public abstract newConnection(Lcom/vlingo/client/core/http/URL;)Lcom/vlingo/client/core/http/custom/VStreamConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
