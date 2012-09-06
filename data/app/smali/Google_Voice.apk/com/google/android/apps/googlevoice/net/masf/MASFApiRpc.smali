.class public abstract Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.super Lcom/googlex/common/async/AbstractRequest;
.source "MASFApiRpc.java"

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# instance fields
.field protected method:Ljava/lang/String;

.field protected runner:Lcom/googlex/common/task/TaskRunner;

.field protected service:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V
    .registers 5
    .parameter "service"
    .parameter "runner"
    .parameter "method"

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_API2_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "service"
    .parameter "runner"
    .parameter "masfServiceUri"
    .parameter "method"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/googlex/common/async/AbstractRequest;-><init>()V

    .line 61
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-static {p4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->runner:Lcom/googlex/common/task/TaskRunner;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private static logCheckinMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private declared-synchronized requestSubmit()V
    .registers 6

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_a

    .line 148
    const-string v3, "MASFApiRpc.requestSubmit()"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 154
    :cond_a
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    instance-of v3, v3, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;

    if-nez v3, :cond_1b

    .line 155
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t submit without a real MASFVoiceService"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_18

    .line 147
    :catchall_18
    move-exception v3

    monitor-exit p0

    throw v3

    .line 157
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    check-cast v1, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_18

    .line 159
    .local v1, masfVoiceService:Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->createMASFRequest(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;

    move-result-object v2

    .line 160
    .local v2, request:Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->createRequestPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;->setPayload([B)V

    .line 161
    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;->setListener(Lcom/googlex/masf/protocol/Request$Listener;)V

    .line 162
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;->submit()V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyRunning()V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_18
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_35} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_35} :catch_3f

    .line 171
    .end local v2           #request:Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;
    :goto_35
    monitor-exit p0

    return-void

    .line 164
    :catch_37
    move-exception v0

    .line 165
    .local v0, exception:Ljava/io/IOException;
    :try_start_38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyException(Ljava/lang/Exception;)V

    goto :goto_35

    .line 167
    .end local v0           #exception:Ljava/io/IOException;
    :catch_3f
    move-exception v0

    .line 168
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyException(Ljava/lang/Exception;)V
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_18

    goto :goto_35
.end method


# virtual methods
.method protected abstract createRequestPayload()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "status"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    .line 75
    .local v0, apiStatus:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    if-eqz v0, :cond_7

    .line 78
    .end local v0           #apiStatus:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :goto_6
    return-object v0

    .restart local v0       #apiStatus:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :cond_7
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_6
.end method

.method protected abstract parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_a

    .line 176
    const-string v3, "MASFApiRpc.requestCompleted()"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_9d

    .line 180
    :cond_a
    :try_start_a
    invoke-virtual {p2}, Lcom/googlex/masf/protocol/Response;->getStatusCode()I

    move-result v2

    .line 181
    .local v2, statusCode:I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_52

    .line 182
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_2c

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MASFApiRpc.requestCompleted(): response status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 185
    :cond_2c
    new-instance v3, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;

    invoke-direct {v3, v2}, Lcom/google/android/apps/googlevoice/net/masf/MASFServiceException;-><init>(I)V

    throw v3
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_32} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_32} :catch_7e

    .line 197
    .end local v2           #statusCode:I
    :catch_32
    move-exception v0

    .line 198
    .local v0, exception:Ljava/io/IOException;
    :try_start_33
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_4d

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MASFApiRpc.requestCompleted(): exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 201
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyException(Ljava/lang/Exception;)V
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_9d

    .line 208
    .end local v0           #exception:Ljava/io/IOException;
    :goto_50
    monitor-exit p0

    return-void

    .line 188
    .restart local v2       #statusCode:I
    :cond_52
    :try_start_52
    invoke-virtual {p2}, Lcom/googlex/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v1

    .line 189
    .local v1, status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->OK:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-eq v1, v3, :cond_a0

    .line 190
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_78

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MASFApiRpc.requestCompleted(): response status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 193
    :cond_78
    new-instance v3, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    invoke-direct {v3, v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;-><init>(Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V

    throw v3
    :try_end_7e
    .catchall {:try_start_52 .. :try_end_7e} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_7e} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_7e} :catch_7e

    .line 202
    .end local v1           #status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .end local v2           #statusCode:I
    :catch_7e
    move-exception v0

    .line 203
    .local v0, exception:Ljava/lang/RuntimeException;
    :try_start_7f
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_99

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MASFApiRpc.requestCompleted(): exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 206
    :cond_99
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyException(Ljava/lang/Exception;)V
    :try_end_9c
    .catchall {:try_start_7f .. :try_end_9c} :catchall_9d

    goto :goto_50

    .line 175
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :catchall_9d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 196
    .restart local v1       #status:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .restart local v2       #statusCode:I
    :cond_a0
    :try_start_a0
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyCompleted()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a3} :catch_7e

    goto :goto_50
.end method

.method public declared-synchronized requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1b

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MASFApiRpc.requestFailed(): exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 215
    :cond_1b
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->notifyException(Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 216
    monitor-exit p0

    return-void

    .line 212
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->getState()I

    move-result v0

    if-nez v0, :cond_a

    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->requestSubmit()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 143
    :cond_a
    monitor-exit p0

    return-void

    .line 140
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleTask()V
    .registers 6

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    const-string v1, "MASF: %s.scheduleTask (%s). State: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->logCheckinMessage(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MASF: Exception (%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->logCheckinMessage(Ljava/lang/String;)V

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    :cond_50
    invoke-super {p0}, Lcom/googlex/common/async/AbstractRequest;->scheduleTask()V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    .line 132
    monitor-exit p0

    return-void

    .line 124
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submit(Landroid/os/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 99
    const-string v0, "%s.submit(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 102
    :cond_21
    new-instance v0, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->runner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 103
    monitor-exit p0

    return-void

    .line 98
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Lcom/googlex/common/task/AbstractTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 109
    const-string v0, "%s.submit(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 111
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->getState()I

    move-result v0

    if-eqz v0, :cond_32

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state != STATE_INIT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2f

    .line 108
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_32
    if-nez p1, :cond_3c

    .line 115
    :try_start_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->setTask(Lcom/googlex/common/task/AbstractTask;)V

    .line 119
    new-instance v0, Lcom/googlex/common/task/Task;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->runner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, v1, p0}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/googlex/common/task/Task;->schedule()V
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_2f

    .line 120
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized submit(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "runnable"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 90
    const-string v0, "%s.submit(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->method:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 93
    :cond_21
    new-instance v0, Lcom/googlex/common/task/Task;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->runner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, v1, p1}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 94
    monitor-exit p0

    return-void

    .line 89
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
