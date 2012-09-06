.class public Lcom/jcraft/jsch/ProxySOCKS4;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x438

    sput v0, Lcom/jcraft/jsch/ProxySOCKS4;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 12

    const/4 v1, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_5a

    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->b:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:I

    invoke-static {v2, v3, p4}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    :goto_1e
    if-lez p4, :cond_25

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_25
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0x400

    new-array v4, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x4

    aput-byte v5, v4, v2

    const/4 v2, 0x2

    const/4 v5, 0x1

    aput-byte v5, v4, v3

    const/4 v3, 0x3

    ushr-int/lit8 v5, p3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v3
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_43} :catch_75
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_95

    :try_start_43
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    move v2, v0

    :goto_4c
    array-length v3, v5

    if-ge v2, v3, :cond_bc

    add-int/lit8 v3, v1, 0x1

    aget-byte v6, v5, v2

    aput-byte v6, v4, v1
    :try_end_55
    .catch Ljava/net/UnknownHostException; {:try_start_43 .. :try_end_55} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_55} :catch_75
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_55} :catch_95

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4c

    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->b:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->c:I

    invoke-interface {p1, v2, v3}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_74} :catch_75
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_74} :catch_95

    goto :goto_1e

    :catch_75
    move-exception v0

    throw v0

    :catch_77
    move-exception v0

    :try_start_78
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxySOCKS4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_95} :catch_75
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_95} :catch_95

    :catch_95
    move-exception v0

    :try_start_96
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9f} :catch_144

    :cond_9f
    :goto_9f
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxySOCKS4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bc
    :try_start_bc
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->g:Ljava/lang/String;

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS4;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    :cond_d7
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    aput-byte v3, v4, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const/16 v1, 0x8

    :goto_e4
    if-ge v0, v1, :cond_fa

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_f8

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ProxySOCKS4: stream is closed"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    add-int/2addr v0, v2

    goto :goto_e4

    :cond_fa
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    if-eqz v0, :cond_11b

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxySOCKS4: server returns VN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11b
    const/4 v0, 0x1

    aget-byte v0, v4, v0
    :try_end_11e
    .catch Ljava/lang/RuntimeException; {:try_start_bc .. :try_end_11e} :catch_75
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_11e} :catch_95

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_143

    :try_start_122
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_127} :catch_147
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_127} :catch_75

    :goto_127
    :try_start_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxySOCKS4: server returns CD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_143
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_143} :catch_75
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_143} :catch_95

    :cond_143
    return-void

    :catch_144
    move-exception v1

    goto/16 :goto_9f

    :catch_147
    move-exception v0

    goto :goto_127
.end method

.method public b()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    return-object v0
.end method

.method public c()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    return-object v0
.end method

.method public d()V
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_23

    :cond_1c
    :goto_1c
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->d:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->e:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->f:Ljava/net/Socket;

    return-void

    :catch_23
    move-exception v0

    goto :goto_1c
.end method
