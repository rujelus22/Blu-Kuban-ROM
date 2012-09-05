.class public Lcom/samsung/http/HTTPServerThread;
.super Ljava/lang/Thread;
.source "HTTPServerThread.java"


# static fields
.field static usedServerSocket:I


# instance fields
.field private httpServer:Lcom/samsung/http/HTTPServer;

.field private sock:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPServer;Ljava/net/Socket;)V
    .registers 5
    .parameter "httpServer"
    .parameter "sock"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/http/HTTPServerThread;->httpServer:Lcom/samsung/http/HTTPServer;

    .line 56
    iput-object p2, p0, Lcom/samsung/http/HTTPServerThread;->sock:Ljava/net/Socket;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Thread for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPServerThread;->setName(Ljava/lang/String;)V

    .line 58
    const-string v0, "HTTPServerThread Start"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 69
    new-instance v2, Lcom/samsung/http/HTTPSocket;

    iget-object v4, p0, Lcom/samsung/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-direct {v2, v4}, Lcom/samsung/http/HTTPSocket;-><init>(Ljava/net/Socket;)V

    .line 70
    .local v2, httpSock:Lcom/samsung/http/HTTPSocket;
    new-instance v1, Lcom/samsung/http/HTTPRequest;

    invoke-direct {v1}, Lcom/samsung/http/HTTPRequest;-><init>()V

    .line 71
    .local v1, httpReq:Lcom/samsung/http/HTTPRequest;
    invoke-virtual {v1, v2}, Lcom/samsung/http/HTTPRequest;->setSocket(Lcom/samsung/http/HTTPSocket;)V

    .line 72
    iget-object v4, p0, Lcom/samsung/http/HTTPServerThread;->httpServer:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v1, v4}, Lcom/samsung/http/HTTPRequest;->setHttpServer(Lcom/samsung/http/HTTPServer;)V

    .line 75
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Lcom/samsung/http/HTTPRequest;->read()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_43
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_17} :catch_48

    move-result v4

    if-nez v4, :cond_37

    .line 87
    :goto_1a
    invoke-virtual {v1}, Lcom/samsung/http/HTTPRequest;->hasFileContent()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 88
    invoke-virtual {v1}, Lcom/samsung/http/HTTPRequest;->getFileContent()Ljava/io/File;

    move-result-object v3

    .line 89
    .local v3, tempFile:Ljava/io/File;
    if-eqz v3, :cond_29

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    .end local v3           #tempFile:Ljava/io/File;
    :cond_29
    invoke-virtual {v2}, Lcom/samsung/http/HTTPSocket;->close()Z

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/http/HTTPServerThread;->sock:Ljava/net/Socket;

    .line 104
    sget v4, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    .line 105
    return-void

    .line 76
    :cond_37
    :try_start_37
    iget-object v4, p0, Lcom/samsung/http/HTTPServerThread;->httpServer:Lcom/samsung/http/HTTPServer;

    invoke-virtual {v4, v1}, Lcom/samsung/http/HTTPServer;->performRequestListener(Lcom/samsung/http/HTTPRequest;)V

    .line 77
    invoke-virtual {v1}, Lcom/samsung/http/HTTPRequest;->isKeepAlive()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3f} :catch_43
    .catch Ljava/lang/Error; {:try_start_37 .. :try_end_3f} :catch_48

    move-result v4

    if-nez v4, :cond_14

    goto :goto_1a

    .line 80
    :catch_43
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    goto :goto_1a

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :catch_48
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1a
.end method
