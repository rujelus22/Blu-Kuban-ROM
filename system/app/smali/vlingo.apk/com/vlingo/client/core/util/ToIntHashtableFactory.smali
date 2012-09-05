.class public abstract Lcom/vlingo/client/core/util/ToIntHashtableFactory;
.super Ljava/lang/Object;
.source "ToIntHashtableFactory.java"


# static fields
.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/util/ToIntHashtableFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->instance:Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    .line 23
    sput-object v0, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->getInstance()Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->create()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    return-object v0
.end method

.method public static createNewHashtable(I)Lcom/vlingo/client/core/util/ToIntHashtable;
    .registers 2
    .parameter "initialCapacity"

    .prologue
    .line 55
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->getInstance()Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->create(I)Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/vlingo/client/core/util/ToIntHashtableFactory;
    .registers 5

    .prologue
    .line 34
    const-class v2, Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->instance:Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    if-nez v1, :cond_20

    .line 35
    sget-object v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "ToIntHashtableFactory implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 34
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 38
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    sput-object v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->instance:Lcom/vlingo/client/core/util/ToIntHashtableFactory;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_41

    .line 47
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->instance:Lcom/vlingo/client/core/util/ToIntHashtableFactory;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 39
    :catch_24
    move-exception v0

    .line 40
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToIntHashtableFactory InstantiationException: "

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
    :catch_41
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToIntHashtableFactory IllegalAccessException: "

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

.method public static declared-synchronized setToIntHashtableFactoryImpl(Ljava/lang/Class;)V
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
    .line 26
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 27
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ToIntHashtableFactory clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 26
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 28
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/util/ToIntHashtableFactory;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToIntHashtableFactory invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 31
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public abstract create()Lcom/vlingo/client/core/util/ToIntHashtable;
.end method

.method public abstract create(I)Lcom/vlingo/client/core/util/ToIntHashtable;
.end method
