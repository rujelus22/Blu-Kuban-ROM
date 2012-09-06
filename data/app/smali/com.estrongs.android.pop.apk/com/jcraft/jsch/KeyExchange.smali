.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;


# static fields
.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;


# instance fields
.field protected q:Lcom/jcraft/jsch/Session;

.field protected r:Lcom/jcraft/jsch/HASH;

.field protected s:[B

.field protected t:[B

.field protected u:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "diffie-hellman-group1-sha1"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->i:Ljava/lang/String;

    const-string v0, "ssh-rsa,ssh-dss"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->j:Ljava/lang/String;

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->k:Ljava/lang/String;

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->l:Ljava/lang/String;

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->m:Ljava/lang/String;

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->q:Lcom/jcraft/jsch/Session;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->r:Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->s:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->t:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->u:[B

    return-void
.end method

.method protected static a([B[B)[Ljava/lang/String;
    .registers 14

    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    new-instance v5, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v5, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->c(I)V

    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->c(I)V

    const/4 v0, 0x0

    move v4, v0

    :goto_1a
    const/16 v0, 0xa

    if-ge v4, v0, :cond_7c

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v7

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_28
    array-length v2, v8

    if-ge v1, v2, :cond_64

    :goto_2b
    array-length v2, v8

    if-ge v1, v2, :cond_37

    aget-byte v2, v8, v1

    const/16 v9, 0x2c

    if-eq v2, v9, :cond_37

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_37
    if-ne v0, v1, :cond_3b

    const/4 v0, 0x0

    :goto_3a
    return-object v0

    :cond_3b
    sub-int v2, v1, v0

    invoke-static {v8, v0, v2}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_43
    array-length v10, v7

    if-ge v2, v10, :cond_72

    :goto_46
    array-length v10, v7

    if-ge v2, v10, :cond_52

    aget-byte v10, v7, v2

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_52

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_52
    if-ne v0, v2, :cond_56

    const/4 v0, 0x0

    goto :goto_3a

    :cond_56
    sub-int v10, v2, v0

    invoke-static {v7, v0, v10}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    aput-object v9, v3, v4

    :cond_64
    if-nez v1, :cond_76

    const-string v0, ""

    aput-object v0, v3, v4

    :cond_6a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1a

    :cond_6e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_43

    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_76
    aget-object v0, v3, v4

    if-nez v0, :cond_6a

    const/4 v0, 0x0

    goto :goto_3a

    :cond_7c
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kex: server->client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kex: client->server "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_f7
    move-object v0, v3

    goto/16 :goto_3a
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/jcraft/jsch/Session;[B[B[B[B)V
.end method

.method public abstract a(Lcom/jcraft/jsch/Buffer;)Z
.end method

.method public abstract b()I
.end method

.method public c()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->q:Lcom/jcraft/jsch/Session;

    const-string v2, "md5"

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1e

    :goto_15
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->g()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->a(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1e
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFingerPrint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_15
.end method

.method d()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->s:[B

    return-object v0
.end method

.method e()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->t:[B

    return-object v0
.end method

.method f()Lcom/jcraft/jsch/HASH;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->r:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method g()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->u:[B

    return-object v0
.end method
