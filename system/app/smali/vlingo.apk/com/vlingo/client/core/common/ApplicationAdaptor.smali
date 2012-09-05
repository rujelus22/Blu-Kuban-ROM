.class public abstract Lcom/vlingo/client/core/common/ApplicationAdaptor;
.super Ljava/lang/Object;
.source "ApplicationAdaptor.java"


# static fields
.field public static final APP_DISTRIBUTION_CHANNEL:Ljava/lang/String; = "Preinstall Free"

.field private static ApplicationAdaptorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/vlingo/client/AndroidApplicationAdaptor;",
            ">;"
        }
    .end annotation
.end field

.field protected static instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;

    .line 28
    sput-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->ApplicationAdaptorClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;

    if-nez v0, :cond_12

    .line 40
    const-class v1, Lcom/vlingo/client/core/common/ApplicationAdaptor;

    monitor-enter v1

    .line 41
    :try_start_7
    sget-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;

    if-nez v0, :cond_11

    .line 42
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->newInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;

    .line 44
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 46
    :cond_12
    sget-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->instance:Lcom/vlingo/client/core/common/ApplicationAdaptor;

    return-object v0

    .line 44
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private static newInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;
    .registers 4

    .prologue
    .line 65
    sget-object v1, Lcom/vlingo/client/core/common/ApplicationAdaptor;->ApplicationAdaptorClass:Ljava/lang/Class;

    if-eqz v1, :cond_34

    .line 67
    :try_start_4
    sget-object v1, Lcom/vlingo/client/core/common/ApplicationAdaptor;->ApplicationAdaptorClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/common/ApplicationAdaptor;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_c} :catch_16

    return-object v1

    .line 68
    :catch_d
    move-exception v0

    .line 71
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "InstantiationException creating new instance: Class must contain empty constructor to avoid this exception."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_16
    move-exception v0

    .line 75
    .local v0, ex:Ljava/lang/IllegalAccessException;
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_34
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AppAdaptorBase class is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setApplicationAdaptorClass(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/vlingo/client/AndroidApplicationAdaptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, adaptorClass:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/vlingo/client/AndroidApplicationAdaptor;>;"
    sget-object v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->ApplicationAdaptorClass:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ApplicationAdaptorClass has already been set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_c
    if-nez p0, :cond_16

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ApplicationAdaptorClass must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_16
    const-class v0, Lcom/vlingo/client/core/common/ApplicationAdaptor;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 59
    sput-object p0, Lcom/vlingo/client/core/common/ApplicationAdaptor;->ApplicationAdaptorClass:Ljava/lang/Class;

    .line 62
    return-void

    .line 61
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Assignment of ApplicationAdaptorClass failed. contextClass must be to be subclass of SRContext."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract DEBUG_asrStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
.end method

.method public abstract DEBUG_errorLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract DEBUG_openSuccess(Lcom/vlingo/client/core/net/ConnectionResult;)V
.end method

.method public abstract DEBUG_openURL(Ljava/lang/String;)V
.end method

.method public getApplication()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getDefeaultApplicationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConnectionTestFieldID()Ljava/lang/String;
.end method

.method public abstract getConnectionTestServerDetails()Lcom/vlingo/client/core/recognizer/SRServerDetails;
.end method

.method public getDefeaultApplicationChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, "Preinstall Free"

    return-object v0
.end method

.method public isAudioStreamingEnabled()Z
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public abstract showFatalDialog(Ljava/lang/String;)V
.end method
