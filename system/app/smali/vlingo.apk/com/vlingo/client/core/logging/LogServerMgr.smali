.class public Lcom/vlingo/client/core/logging/LogServerMgr;
.super Ljava/lang/Object;
.source "LogServerMgr.java"


# static fields
.field private static s_LogServer:Lcom/vlingo/client/core/util/LogServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToLogString(Ljava/lang/String;)V
    .registers 2
    .parameter "newString"

    .prologue
    .line 40
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    if-eqz v0, :cond_9

    .line 41
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/LogServer;->addToLogString(Ljava/lang/String;)V

    .line 42
    :cond_9
    return-void
.end method

.method public static initLogServer()V
    .registers 4

    .prologue
    .line 26
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "serverlog_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, logServer:Z
    invoke-static {v0}, Lcom/vlingo/client/core/logging/LogServerMgr;->setLogServer(Z)V

    .line 29
    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static sendToServer()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    if-eqz v0, :cond_9

    .line 46
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/LogServer;->sendToServer()V

    .line 47
    :cond_9
    return-void
.end method

.method public static declared-synchronized setLogServer(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 32
    const-class v1, Lcom/vlingo/client/core/logging/LogServerMgr;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 33
    :try_start_5
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->startLogServer()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 37
    :goto_8
    monitor-exit v1

    return-void

    .line 36
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    sput-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_8

    .line 32
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static startLogServer()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/vlingo/client/core/util/LogServer;

    invoke-direct {v0}, Lcom/vlingo/client/core/util/LogServer;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/logging/LogServerMgr;->s_LogServer:Lcom/vlingo/client/core/util/LogServer;

    .line 21
    :cond_b
    return-void
.end method
