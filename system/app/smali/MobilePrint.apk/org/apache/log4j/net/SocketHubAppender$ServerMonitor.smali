.class Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
.super Ljava/lang/Object;
.source "SocketHubAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketHubAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerMonitor"
.end annotation


# instance fields
.field private keepRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private final this$0:Lorg/apache/log4j/net/SocketHubAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V
    .registers 6
    .parameter "this$0"
    .parameter "_port"
    .parameter "_oosList"

    .prologue
    const/4 v1, 0x1

    .line 286
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    .line 287
    iput p2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    .line 288
    iput-object p3, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    .line 289
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 290
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 291
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 292
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 322
    const/4 v3, 0x0

    .line 324
    .local v3, serverSocket:Ljava/net/ServerSocket;
    :try_start_2
    new-instance v4, Ljava/net/ServerSocket;

    iget v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-direct {v4, v6}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_1c

    .line 325
    .end local v3           #serverSocket:Ljava/net/ServerSocket;
    .local v4, serverSocket:Ljava/net/ServerSocket;
    const/16 v6, 0x3e8

    :try_start_b
    invoke-virtual {v4, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_9e

    .line 335
    const/16 v6, 0x3e8

    :try_start_10
    invoke-virtual {v4, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_7f
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_13} :catch_25

    .line 342
    :cond_13
    :goto_13
    :try_start_13
    iget-boolean v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_7f

    if-nez v6, :cond_30

    .line 380
    :try_start_17
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_9b

    :goto_1a
    move-object v3, v4

    .line 386
    .end local v4           #serverSocket:Ljava/net/ServerSocket;
    .restart local v3       #serverSocket:Ljava/net/ServerSocket;
    :goto_1b
    return-void

    .line 328
    :catch_1c
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :goto_1d
    const-string v6, "exception setting timeout, shutting down server socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iput-boolean v7, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    goto :goto_1b

    .line 338
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #serverSocket:Ljava/net/ServerSocket;
    .restart local v4       #serverSocket:Ljava/net/ServerSocket;
    :catch_25
    move-exception v0

    .local v0, e:Ljava/net/SocketException;
    :try_start_26
    const-string v6, "exception setting timeout, shutting down server socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_7f

    .line 380
    :try_start_2b
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_99

    :goto_2e
    move-object v3, v4

    .line 339
    .end local v4           #serverSocket:Ljava/net/ServerSocket;
    .restart local v3       #serverSocket:Ljava/net/ServerSocket;
    goto :goto_1b

    .line 343
    .end local v0           #e:Ljava/net/SocketException;
    .end local v3           #serverSocket:Ljava/net/ServerSocket;
    .restart local v4       #serverSocket:Ljava/net/ServerSocket;
    :cond_30
    const/4 v5, 0x0

    .line 345
    .local v5, socket:Ljava/net/Socket;
    :try_start_31
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_7f
    .catch Ljava/io/InterruptedIOException; {:try_start_31 .. :try_end_34} :catch_84
    .catch Ljava/net/SocketException; {:try_start_31 .. :try_end_34} :catch_86
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_90

    move-result-object v5

    .line 359
    :goto_35
    if-eqz v5, :cond_13

    .line 361
    :try_start_37
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 362
    .local v2, remoteAddress:Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "accepting connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 369
    .local v1, oos:Ljava/io/ObjectOutputStream;
    iget-object v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_37 .. :try_end_77} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_77} :catch_78

    goto :goto_13

    .line 372
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .end local v2           #remoteAddress:Ljava/net/InetAddress;
    :catch_78
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :try_start_79
    const-string v6, "exception creating output stream on socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    goto :goto_13

    .line 379
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #socket:Ljava/net/Socket;
    :catchall_7f
    move-exception v6

    .line 380
    :try_start_80
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_97

    .line 379
    :goto_83
    throw v6

    .line 347
    .restart local v5       #socket:Ljava/net/Socket;
    :catch_84
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/InterruptedIOException;
    goto :goto_35

    .line 351
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catch_86
    move-exception v0

    .local v0, e:Ljava/net/SocketException;
    :try_start_87
    const-string v6, "exception accepting socket, shutting down server socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    goto :goto_35

    .line 355
    .end local v0           #e:Ljava/net/SocketException;
    :catch_90
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v6, "exception accepting socket."

    invoke-static {v6, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_7f

    goto :goto_35

    .line 382
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #socket:Ljava/net/Socket;
    :catch_97
    move-exception v7

    goto :goto_83

    .local v0, e:Ljava/net/SocketException;
    :catch_99
    move-exception v6

    goto :goto_2e

    .end local v0           #e:Ljava/net/SocketException;
    :catch_9b
    move-exception v6

    goto/16 :goto_1a

    .line 328
    :catch_9e
    move-exception v0

    move-object v3, v4

    .end local v4           #serverSocket:Ljava/net/ServerSocket;
    .restart local v3       #serverSocket:Ljava/net/ServerSocket;
    goto/16 :goto_1d
.end method

.method public declared-synchronized stopMonitor()V
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    if-eqz v0, :cond_1a

    .line 302
    const-string v0, "server monitor thread shutting down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    .line 305
    :try_start_d
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1f

    .line 312
    :goto_12
    const/4 v0, 0x0

    :try_start_13
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 313
    const-string v0, "server monitor thread shut down"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 315
    :cond_1a
    monitor-exit p0

    return-void

    .line 301
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :catch_1f
    move-exception v0

    goto :goto_12
.end method
