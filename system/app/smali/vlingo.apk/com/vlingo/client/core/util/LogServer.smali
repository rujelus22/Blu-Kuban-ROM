.class public Lcom/vlingo/client/core/util/LogServer;
.super Ljava/lang/Object;
.source "LogServer.java"


# static fields
.field public static final LOGGING_SERVER_URL:Ljava/lang/String; = "http://vv.vlingo.com/voicepad/log"

.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private m_StringToLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/vlingo/client/core/util/LogServer;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/util/LogServer;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToLogString(Ljava/lang/String;)V
    .registers 5
    .parameter "newString"

    .prologue
    .line 18
    sget-object v0, Lcom/vlingo/client/core/util/LogServer;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    .line 25
    :goto_37
    return-void

    .line 23
    :cond_38
    iput-object p1, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    goto :goto_37
.end method

.method public sendToServer()V
    .registers 6

    .prologue
    .line 28
    sget-object v1, Lcom/vlingo/client/core/util/LogServer;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending to log server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 31
    :try_start_1e
    const-string v1, "log"

    new-instance v2, Lcom/vlingo/client/core/http/BaseHttpCallback;

    invoke-direct {v2}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    const-string v3, "http://vv.vlingo.com/voicepad/log"

    iget-object v4, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    .line 33
    .local v0, request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setMaxRetry(I)V

    .line 34
    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_3e

    .line 43
    .end local v0           #request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    :goto_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/util/LogServer;->m_StringToLog:Ljava/lang/String;

    .line 45
    :cond_3b
    return-void

    .line 39
    :catchall_3c
    move-exception v1

    throw v1

    .line 36
    :catch_3e
    move-exception v1

    goto :goto_38
.end method
