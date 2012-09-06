.class Lcom/jcraft/jsch/Util;
.super Ljava/lang/Object;


# static fields
.field static final a:[B

.field private static final b:[B

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->b:[B

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/Util;->c:[Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->a:[B

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)B
    .registers 4

    const/4 v1, 0x0

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    :goto_7
    sget-object v2, Lcom/jcraft/jsch/Util;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v2, v2, v0

    if-ne p0, v2, :cond_14

    int-to-byte v1, v0

    goto :goto_5

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static a(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->a()V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {p0, p1, v1, v2}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_12
    array-length v3, v1

    if-ge v0, v3, :cond_3a

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/jcraft/jsch/Util;->c:[Ljava/lang/String;

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->c:[Ljava/lang/String;

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_37

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3f

    move-result-object v0

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    const-string v0, "???"

    goto :goto_3e
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->a([B)[B

    move-result-object v1

    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_d

    :goto_c
    return-object p0

    :cond_d
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v2

    :goto_9
    array-length v3, v4

    if-ge v1, v3, :cond_3f

    move v3, v2

    :goto_d
    array-length v5, p1

    if-ge v3, v5, :cond_20

    aget-object v5, v4, v1

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    if-nez v0, :cond_25

    aget-object v0, v4, v1

    goto :goto_1a

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v4, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_3f
    return-object v0
.end method

.method static a([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_5
.end method

.method static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/jcraft/jsch/Util;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;II)Ljava/net/Socket;
    .registers 10

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_1f

    :try_start_4
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-array v1, v0, [Ljava/net/Socket;

    new-array v2, v0, [Ljava/lang/Exception;

    const-string v0, ""

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/jcraft/jsch/Util$1;

    invoke-direct {v4, v1, p0, p1, v2}, Lcom/jcraft/jsch/Util$1;-><init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening Socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    int-to-long v4, p2

    :try_start_49
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    const-string v0, "timeout: "
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_83

    :goto_4e
    aget-object v4, v1, v6

    if-eqz v4, :cond_5d

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5d

    aget-object v0, v1, v6

    goto :goto_9

    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "socket is not established"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v2, v6

    if-eqz v1, :cond_7a

    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_83
    move-exception v4

    goto :goto_4e
.end method

.method private static a([BI[BI)Z
    .registers 8

    const/16 v3, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p2

    if-lez v2, :cond_28

    aget-byte v2, p2, v1

    if-ne v2, v3, :cond_28

    array-length v2, p0

    if-lez v2, :cond_26

    aget-byte v2, p0, v1

    if-ne v2, v3, :cond_26

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    aget-byte v1, p0, v0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/jcraft/jsch/Util;->b([BI[BI)Z

    move-result v0

    goto :goto_1c

    :cond_26
    move v0, v1

    goto :goto_1c

    :cond_28
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->b([BI[BI)Z

    move-result v0

    goto :goto_1c
.end method

.method static a([B[B)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/jcraft/jsch/Util;->a([BI[BI)Z

    move-result v0

    return v0
.end method

.method static a([B)[B
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    move v2, v0

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_10

    aget-byte v3, p0, v0

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_22

    add-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_14

    :cond_10
    array-length v0, p0

    if-ne v2, v0, :cond_25

    :goto_13
    return-object p0

    :cond_14
    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {p0, v3, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_25
    new-array v0, v2, [B

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_13
.end method

.method static a([BII)[B
    .registers 11

    const/16 v7, 0x3d

    const/4 v2, 0x0

    new-array v4, p2, [B

    move v1, p1

    move v0, v2

    :goto_7
    add-int v3, p1, p2

    if-ge v1, v3, :cond_2b

    aget-byte v3, p0, v1

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v7, :cond_31

    add-int/lit8 v0, v0, 0x1

    :cond_2b
    :goto_2b
    new-array v1, v0, [B

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_31
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v7, :cond_58

    add-int/lit8 v0, v0, 0x2

    goto :goto_2b

    :cond_58
    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->a(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v0, v1, 0x4

    move v1, v0

    move v0, v3

    goto :goto_7
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_f
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_21

    sub-int v5, v4, v0

    invoke-static {v2, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    goto :goto_f

    :cond_21
    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v4}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_30
    array-length v0, v2

    if-ge v1, v0, :cond_40

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_40
    move-object v0, v2

    goto :goto_4
.end method

.method private static b(B)I
    .registers 4

    const/4 v0, 0x1

    and-int/lit16 v1, p0, 0x80

    int-to-byte v1, v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    and-int/lit16 v1, p0, 0xe0

    int-to-byte v1, v1

    const/16 v2, -0x40

    if-ne v1, v2, :cond_10

    const/4 v0, 0x2

    goto :goto_6

    :cond_10
    and-int/lit16 v1, p0, 0xf0

    int-to-byte v1, v1

    const/16 v2, -0x20

    if-ne v1, v2, :cond_6

    const/4 v0, 0x3

    goto :goto_6
.end method

.method static b([B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    const-string v2, "UTF-8"

    invoke-static {p0, v0, v1, v2}, Lcom/jcraft/jsch/Util;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([BI[BI)Z
    .registers 16

    const/16 v10, 0x5c

    const/16 v9, 0x3f

    const/16 v8, 0x2a

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v4, p0

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v5, p2

    move v2, p3

    move v3, p1

    :cond_f
    :goto_f
    if-ge v3, v4, :cond_e6

    if-ge v2, v5, :cond_e6

    aget-byte v6, p0, v3

    if-ne v6, v10, :cond_32

    add-int/lit8 v6, v3, 0x1

    if-eq v6, v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    aget-byte v7, p2, v2

    if-ne v6, v7, :cond_b

    aget-byte v6, p0, v3

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v3, v6

    aget-byte v6, p2, v2

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_f

    :cond_32
    aget-byte v6, p0, v3

    if-ne v6, v8, :cond_9b

    :goto_36
    if-ge v3, v4, :cond_3f

    aget-byte v6, p0, v3

    if-ne v6, v8, :cond_3f

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_3f
    if-ne v4, v3, :cond_43

    move v0, v1

    goto :goto_b

    :cond_43
    aget-byte v6, p0, v3

    if-ne v6, v9, :cond_59

    :goto_47
    if-ge v2, v5, :cond_b

    invoke-static {p0, v3, p2, v2}, Lcom/jcraft/jsch/Util;->b([BI[BI)Z

    move-result v4

    if-eqz v4, :cond_51

    move v0, v1

    goto :goto_b

    :cond_51
    aget-byte v4, p2, v2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_47

    :cond_59
    if-ne v6, v10, :cond_8c

    add-int/lit8 v6, v3, 0x1

    if-eq v6, v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p0, v3

    :goto_63
    if-ge v2, v5, :cond_b

    aget-byte v6, p2, v2

    if-ne v4, v6, :cond_7d

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v6, v3

    aget-byte v7, p2, v2

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {p0, v6, p2, v7}, Lcom/jcraft/jsch/Util;->b([BI[BI)Z

    move-result v6

    if-eqz v6, :cond_7d

    move v0, v1

    goto :goto_b

    :cond_7d
    aget-byte v6, p2, v2

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_63

    :cond_85
    aget-byte v4, p2, v2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_8c
    if-ge v2, v5, :cond_b

    aget-byte v4, p2, v2

    if-ne v6, v4, :cond_85

    invoke-static {p0, v3, p2, v2}, Lcom/jcraft/jsch/Util;->b([BI[BI)Z

    move-result v4

    if-eqz v4, :cond_85

    move v0, v1

    goto/16 :goto_b

    :cond_9b
    aget-byte v6, p0, v3

    if-ne v6, v9, :cond_aa

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p2, v2

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v2, v6

    goto/16 :goto_f

    :cond_aa
    aget-byte v6, p0, v3

    aget-byte v7, p2, v2

    if-ne v6, v7, :cond_b

    aget-byte v6, p0, v3

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v3, v6

    aget-byte v6, p2, v2

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(B)I

    move-result v6

    add-int/2addr v2, v6

    if-lt v2, v5, :cond_f

    if-lt v3, v4, :cond_c5

    move v0, v1

    goto/16 :goto_b

    :cond_c5
    aget-byte v6, p0, v3

    if-ne v6, v8, :cond_f

    move v11, v2

    move v2, v3

    move v3, v11

    :goto_cc
    if-ne v2, v4, :cond_d3

    if-ne v3, v5, :cond_d3

    move v0, v1

    goto/16 :goto_b

    :cond_d3
    if-lt v3, v5, :cond_b

    aget-byte v3, p0, v2

    if-ne v3, v8, :cond_b

    :goto_d9
    if-ge v2, v4, :cond_e3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v8, :cond_b

    move v2, v3

    goto :goto_d9

    :cond_e3
    move v0, v1

    goto/16 :goto_b

    :cond_e6
    move v11, v2

    move v2, v3

    move v3, v11

    goto :goto_cc
.end method

.method static b([B[B)Z
    .registers 7

    const/4 v0, 0x0

    array-length v2, p0

    array-length v1, p1

    if-eq v2, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_12

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-ne v3, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static b(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    :catch_9
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method

.method static b([BII)[B
    .registers 12

    const/16 v8, 0x3d

    const/4 v2, 0x0

    mul-int/lit8 v0, p2, 0x2

    new-array v4, v0, [B

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x3

    add-int v5, v0, p1

    move v1, p1

    move v0, v2

    :goto_f
    if-ge v1, v5, :cond_62

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v3, v7, v3

    aput-byte v3, v4, v0

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    add-int/lit8 v3, v6, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v7, v0

    aput-byte v0, v4, v6

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v0, v6

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v7, v0

    aput-byte v0, v4, v3

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v3, v6, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v7, v0

    aput-byte v0, v4, v6

    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v3

    goto :goto_f

    :cond_62
    add-int v3, p1, p2

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_94

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v3, v6, v3

    aput-byte v3, v4, v0

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v1, v5, 0x1

    sget-object v3, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v3, v0

    aput-byte v0, v4, v5

    add-int/lit8 v3, v1, 0x1

    aput-byte v8, v4, v1

    add-int/lit8 v0, v3, 0x1

    aput-byte v8, v4, v3

    :cond_8e
    :goto_8e
    new-array v1, v0, [B

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_94
    const/4 v5, 0x2

    if-ne v3, v5, :cond_8e

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v3, v6, v3

    aput-byte v3, v4, v0

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v6, v0

    aput-byte v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v1, v3, 0x1

    sget-object v5, Lcom/jcraft/jsch/Util;->b:[B

    aget-byte v0, v5, v0

    aput-byte v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    aput-byte v8, v4, v1

    goto :goto_8e
.end method

.method static c([BII)Ljava/lang/String;
    .registers 4

    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0}, Lcom/jcraft/jsch/Util;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c([B)V
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-void

    :cond_4
    move v0, v1

    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
