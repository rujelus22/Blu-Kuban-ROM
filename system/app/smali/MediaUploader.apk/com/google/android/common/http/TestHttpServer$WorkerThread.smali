.class Lcom/google/android/common/http/TestHttpServer$WorkerThread;
.super Ljava/lang/Thread;
.source "TestHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/TestHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerThread"
.end annotation


# instance fields
.field private final conn:Lorg/apache/http/HttpServerConnection;

.field private final httpservice:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    .line 192
    iput-object p2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 196
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 198
    :goto_6
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 199
    iget-object v1, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_6b
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_6 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_23
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_1b} :catch_48

    goto :goto_6

    .line 201
    :catch_1c
    move-exception v0

    .line 208
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_46

    .line 211
    :goto_22
    return-void

    .line 202
    :catch_23
    move-exception v0

    .line 203
    :try_start_24
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_6b

    .line 208
    :try_start_40
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_22

    .line 209
    :catch_46
    move-exception v0

    goto :goto_22

    .line 204
    :catch_48
    move-exception v0

    .line 205
    :try_start_49
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecoverable HTTP protocol violation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_6b

    .line 208
    :try_start_65
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_46

    goto :goto_22

    .line 207
    :catchall_6b
    move-exception v0

    .line 208
    :try_start_6c
    iget-object v1, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_78

    .line 207
    :goto_71
    throw v0

    .line 208
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_46

    goto :goto_22

    .line 209
    :catch_78
    move-exception v1

    goto :goto_71
.end method
