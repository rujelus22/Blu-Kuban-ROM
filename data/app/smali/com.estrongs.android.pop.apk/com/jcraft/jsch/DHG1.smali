.class public Lcom/jcraft/jsch/DHG1;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static final a:[B

.field static final b:[B


# instance fields
.field c:Lcom/jcraft/jsch/DH;

.field d:[B

.field e:[B

.field f:[B

.field g:[B

.field h:[B

.field private v:I

.field private w:I

.field private x:Lcom/jcraft/jsch/Buffer;

.field private y:Lcom/jcraft/jsch/Packet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/DHG1;->a:[B

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/jcraft/jsch/DHG1;->b:[B

    return-void

    nop

    :array_14
    .array-data 0x1
        0x0t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xc9t
        0xft
        0xdat
        0xa2t
        0x21t
        0x68t
        0xc2t
        0x34t
        0xc4t
        0xc6t
        0x62t
        0x8bt
        0x80t
        0xdct
        0x1ct
        0xd1t
        0x29t
        0x2t
        0x4et
        0x8t
        0x8at
        0x67t
        0xcct
        0x74t
        0x2t
        0xbt
        0xbet
        0xa6t
        0x3bt
        0x13t
        0x9bt
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        0x8et
        0x34t
        0x4t
        0xddt
        0xeft
        0x95t
        0x19t
        0xb3t
        0xcdt
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        0xf2t
        0x5ft
        0x14t
        0x37t
        0x4ft
        0xe1t
        0x35t
        0x6dt
        0x6dt
        0x51t
        0xc2t
        0x45t
        0xe4t
        0x85t
        0xb5t
        0x76t
        0x62t
        0x5et
        0x7et
        0xc6t
        0xf4t
        0x4ct
        0x42t
        0xe9t
        0xa6t
        0x37t
        0xedt
        0x6bt
        0xbt
        0xfft
        0x5ct
        0xb6t
        0xf4t
        0x6t
        0xb7t
        0xedt
        0xeet
        0x38t
        0x6bt
        0xfbt
        0x5at
        0x89t
        0x9ft
        0xa5t
        0xaet
        0x9ft
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        0xe6t
        0x49t
        0x28t
        0x66t
        0x51t
        0xect
        0xe6t
        0x53t
        0x81t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHG1;->v:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/DHG1;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "DSA"

    :goto_7
    return-object v0

    :cond_8
    const-string v0, "RSA"

    goto :goto_7
.end method

.method public a(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .registers 9

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/DHG1;->q:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/DHG1;->d:[B

    iput-object p3, p0, Lcom/jcraft/jsch/DHG1;->e:[B

    iput-object p4, p0, Lcom/jcraft/jsch/DHG1;->f:[B

    iput-object p5, p0, Lcom/jcraft/jsch/DHG1;->g:[B

    :try_start_b
    const-string v0, "sha-1"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->r:Lcom/jcraft/jsch/HASH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->a()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_9c

    :goto_24
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->y:Lcom/jcraft/jsch/Packet;

    :try_start_34
    const-string v0, "dh"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/DH;

    check-cast v0, Lcom/jcraft/jsch/DH;

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->a()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4d} :catch_a3

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG1;->b:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    sget-object v1, Lcom/jcraft/jsch/DHG1;->a:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/DH;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v0}, Lcom/jcraft/jsch/DH;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->y:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_97
    const/16 v0, 0x1f

    iput v0, p0, Lcom/jcraft/jsch/DHG1;->w:I

    return-void

    :catch_9c
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_24

    :catch_a3
    move-exception v0

    throw v0
.end method

.method public a(Lcom/jcraft/jsch/Buffer;)Z
    .registers 15

    const/4 v11, 0x1

    const/high16 v10, 0xff

    const v9, 0xff00

    const/high16 v8, -0x100

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/DHG1;->w:I

    packed-switch v0, :pswitch_data_2b2

    :goto_e
    return v1

    :pswitch_f
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_36

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: must be 31 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_36
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->g()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->c([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->c:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->c()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHG1;->s:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->e:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->d:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->g:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->f:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/DHG1;->h:[B

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->s:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->x:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->r:Lcom/jcraft/jsch/HASH;

    array-length v4, v0

    invoke-interface {v2, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->r:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHG1;->t:[B

    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v11

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    const/4 v5, 0x3

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    const/4 v4, 0x4

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    const-string v4, "ssh-rsa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18d

    iput v1, p0, Lcom/jcraft/jsch/DHG1;->v:I

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v4, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v5, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    const/4 v2, 0x0

    :try_start_137
    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->q:Lcom/jcraft/jsch/Session;

    const-string v6, "signature.rsa"

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_14b} :catch_183

    :try_start_14b
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_2af

    :goto_14e
    invoke-interface {v0, v4, v5}, Lcom/jcraft/jsch/SignatureRSA;->a([B[B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->t:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureRSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssh_rsa_verify: signature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_17e
    :goto_17e
    iput v1, p0, Lcom/jcraft/jsch/DHG1;->w:I

    move v1, v0

    goto/16 :goto_e

    :catch_183
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_187
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_14e

    :cond_18d
    const-string v4, "ssh-dss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a3

    iput v11, p0, Lcom/jcraft/jsch/DHG1;->v:I

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v4, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v5, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v5, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v6, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v2, v2, v7

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v6, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v7, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v2, v2, v7

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v7, v8, 0x1

    aget-byte v2, v2, v8

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v7, v0, [B

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->u:[B

    invoke-static {v2, v8, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v8

    const/4 v2, 0x0

    :try_start_250
    iget-object v0, p0, Lcom/jcraft/jsch/DHG1;->q:Lcom/jcraft/jsch/Session;

    const-string v8, "signature.dss"

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_264} :catch_299

    :try_start_264
    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_267} :catch_2ad

    :goto_267
    invoke-interface {v0, v7, v4, v5, v6}, Lcom/jcraft/jsch/SignatureDSA;->a([B[B[B[B)V

    iget-object v2, p0, Lcom/jcraft/jsch/DHG1;->t:[B

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/SignatureDSA;->b([B)Z

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssh_dss_verify: signature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_17e

    :catch_299
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_29d
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_267

    :cond_2a3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "unknown alg"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_17e

    :catch_2ad
    move-exception v2

    goto :goto_29d

    :catch_2af
    move-exception v2

    goto/16 :goto_187

    :pswitch_data_2b2
    .packed-switch 0x1f
        :pswitch_f
    .end packed-switch
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/DHG1;->w:I

    return v0
.end method
