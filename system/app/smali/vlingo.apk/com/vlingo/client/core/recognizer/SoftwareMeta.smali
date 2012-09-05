.class public Lcom/vlingo/client/core/recognizer/SoftwareMeta;
.super Ljava/lang/Object;
.source "SoftwareMeta.java"


# static fields
.field private static volatile SoftwareMetaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    .line 18
    sput-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    if-nez v0, :cond_12

    .line 52
    const-class v1, Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    if-nez v0, :cond_11

    .line 54
    invoke-static {}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->newInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 55
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 57
    :cond_12
    sget-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->instance:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    return-object v0

    .line 55
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static newInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;
    .registers 4

    .prologue
    .line 36
    sget-object v1, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    if-eqz v1, :cond_73

    .line 38
    :try_start_4
    sget-object v1, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/SoftwareMeta;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_3c

    .line 47
    :goto_c
    return-object v1

    .line 39
    :catch_d
    move-exception v0

    .line 40
    .local v0, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantiationException creating new instance: Class must contain empty constructor to avoid this exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3c
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException creating new instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_73
    new-instance v1, Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;-><init>()V

    goto :goto_c
.end method

.method public static setSoftwareMetaClass(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, contextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoftwareMetaClass has already been set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_c
    if-nez p0, :cond_16

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contextClass must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_16
    const-class v0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27
    sput-object p0, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->SoftwareMetaClass:Ljava/lang/Class;

    .line 30
    return-void

    .line 29
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assignment of contextClass failed. contextClass must be to be subclass of SoftwareMeta."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, ""

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, ""

    return-object v0
.end method
