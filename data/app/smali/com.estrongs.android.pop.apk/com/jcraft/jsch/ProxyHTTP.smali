.class public Lcom/jcraft/jsch/ProxyHTTP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/io/InputStream;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/net/Socket;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x50

    sput v0, Lcom/jcraft/jsch/ProxyHTTP;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 15

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/4 v2, 0x0

    if-nez p1, :cond_c9

    :try_start_7
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->b:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:I

    invoke-static {v0, v1, p4}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    :goto_21
    if-lez p4, :cond_28

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_28
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " HTTP/1.0\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->g:Ljava/lang/String;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->h:Ljava/lang/String;

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lcom/jcraft/jsch/Util;->b([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    const-string v3, "Proxy-Authorization: Basic "

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_a2
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :cond_b8
    :goto_b8
    if-ltz v1, :cond_118

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v8, :cond_110

    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_c6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c6} :catch_e5

    goto :goto_b8

    :catch_c7
    move-exception v0

    throw v0

    :cond_c9
    :try_start_c9
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->b:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->c:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;
    :try_end_e3
    .catch Ljava/lang/RuntimeException; {:try_start_c9 .. :try_end_e3} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e3} :catch_e5

    goto/16 :goto_21

    :catch_e5
    move-exception v0

    :try_start_e6
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ef} :catch_193

    :cond_ef
    :goto_ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyHTTP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_18d

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_110
    :try_start_110
    iget-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_b8

    :cond_118
    if-gez v1, :cond_120

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "Unknow reason"
    :try_end_126
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_126} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_126} :catch_e5

    const/4 v0, -0x1

    const/16 v5, 0x20

    :try_start_129
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v5, 0x20

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_144} :catch_165
    .catch Ljava/lang/RuntimeException; {:try_start_129 .. :try_end_144} :catch_c7

    move-result-object v3

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_148
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_16a

    :try_start_14c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_165
    move-exception v4

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_148

    :cond_16a
    move v1, v2

    :cond_16b
    :goto_16b
    if-ltz v0, :cond_182

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_17a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_16b

    :cond_17a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_16b

    :cond_182
    if-gez v0, :cond_18a

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_14c .. :try_end_18a} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_18a} :catch_e5

    :cond_18a
    if-nez v1, :cond_16a

    return-void

    :cond_18d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_193
    move-exception v1

    goto/16 :goto_ef
.end method

.method public b()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    return-object v0
.end method

.method public c()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    return-object v0
.end method

.method public d()V
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_23

    :cond_1c
    :goto_1c
    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->d:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->e:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->f:Ljava/net/Socket;

    return-void

    :catch_23
    move-exception v0

    goto :goto_1c
.end method
