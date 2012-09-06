.class public Lcom/jcraft/jsch/ProxySOCKS5;
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

    const/16 v0, 0x438

    sput v0, Lcom/jcraft/jsch/ProxySOCKS5;->a:I

    return-void
.end method

.method private a(Ljava/io/InputStream;[BI)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_15

    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_13

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "ProxySOCKS5: stream is closed"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    goto :goto_1

    :cond_15
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_66

    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->b:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:I

    invoke-static {v2, v3, p4}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    :goto_1e
    if-lez p4, :cond_25

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_25
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x2

    aput-byte v5, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x2

    aput-byte v5, v2, v4

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    const/4 v3, 0x1

    aget-byte v3, v2, v3
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4f} :catch_64
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4f} :catch_81

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_1ac

    :cond_54
    :pswitch_54
    move v0, v1

    :goto_55
    :pswitch_55
    if-nez v0, :cond_112

    :try_start_57
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_1a8
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_5c} :catch_64

    :goto_5c
    :try_start_5c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "fail in SOCKS5 proxy"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_64} :catch_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_81

    :catch_64
    move-exception v0

    throw v0

    :cond_66
    :try_start_66
    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->b:Ljava/lang/String;

    iget v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->c:I

    invoke-interface {p1, v2, v3}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_80} :catch_64
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_80} :catch_81

    goto :goto_1e

    :catch_81
    move-exception v0

    :try_start_82
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_1a3

    :cond_8b
    :goto_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxySOCKS5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_19d

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_ac
    :try_start_ac
    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->h:Ljava/lang/String;

    if-nez v3, :cond_b6

    move v0, v1

    goto :goto_55

    :cond_b6
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_54

    goto/16 :goto_55

    :cond_112
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x5

    aput-byte v3, v2, v0

    const/4 v0, 0x2

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    aput-byte v5, v2, v1

    const/4 v1, 0x5

    int-to-byte v5, v3

    aput-byte v5, v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, 0x5

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    const/4 v0, 0x1

    aget-byte v0, v2, v0
    :try_end_14f
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_14f} :catch_64
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_14f} :catch_81

    if-eqz v0, :cond_172

    :try_start_151
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_156} :catch_1a6
    .catch Ljava/lang/RuntimeException; {:try_start_151 .. :try_end_156} :catch_64

    :goto_156
    :try_start_156
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxySOCKS5: server returns "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_172
    const/4 v0, 0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_1b6

    :goto_17a
    :pswitch_17a
    return-void

    :pswitch_17b
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    goto :goto_17a

    :pswitch_182
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V

    goto :goto_17a

    :pswitch_195
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    const/16 v1, 0x12

    invoke-direct {p0, v0, v2, v1}, Lcom/jcraft/jsch/ProxySOCKS5;->a(Ljava/io/InputStream;[BI)V
    :try_end_19c
    .catch Ljava/lang/RuntimeException; {:try_start_156 .. :try_end_19c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_19c} :catch_81

    goto :goto_17a

    :cond_19d
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1a3
    move-exception v1

    goto/16 :goto_8b

    :catch_1a6
    move-exception v0

    goto :goto_156

    :catch_1a8
    move-exception v0

    goto/16 :goto_5c

    nop

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_55
        :pswitch_54
        :pswitch_ac
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_17a
        :pswitch_182
        :pswitch_195
    .end packed-switch
.end method

.method public b()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    return-object v0
.end method

.method public c()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    return-object v0
.end method

.method public d()V
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_23

    :cond_1c
    :goto_1c
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->d:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->e:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->f:Ljava/net/Socket;

    return-void

    :catch_23
    move-exception v0

    goto :goto_1c
.end method
