.class public Lcom/vlingo/client/core/http/cookies/CookieJarFactory;
.super Ljava/lang/Object;
.source "CookieJarFactory.java"


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newInstance()Lcom/vlingo/client/core/http/cookies/CookieJar;
    .registers 5

    .prologue
    .line 31
    const-class v2, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "CookieJar implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 31
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 34
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_12
    :try_start_12
    sget-object v1, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/http/cookies/CookieJar;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_1a} :catch_36

    monitor-exit v2

    return-object v1

    .line 35
    :catch_1c
    move-exception v0

    .line 38
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CookieJar InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_36
    move-exception v0

    .line 42
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CookieJar IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_50
    .catchall {:try_start_1d .. :try_end_50} :catchall_f
.end method

.method public static declared-synchronized setCookieJarImpl(Ljava/lang/Class;)V
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
    .line 23
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 24
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "CookieJar clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 23
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 25
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/http/cookies/CookieJar;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CookieJar invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/http/cookies/CookieJarFactory;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 28
    monitor-exit v1

    return-void
.end method
