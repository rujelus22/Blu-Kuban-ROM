.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# static fields
.field private static final N:Ljava/lang/String;

.field private static final O:C

.field private static P:Z


# instance fields
.field private E:I

.field private F:[I

.field private G:Lcom/jcraft/jsch/Buffer;

.field private H:Lcom/jcraft/jsch/Packet;

.field private I:I

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/util/Hashtable;

.field private M:Ljava/io/InputStream;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->N:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->O:C

    sget-char v0, Ljava/io/File;->separatorChar:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->P:Z

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->t:Z

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->F:[I

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Ljava/lang/String;

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Ljava/util/Hashtable;

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Z

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;)I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->a([BJ[BII)I

    move-result v0

    return v0
.end method

.method private a([BJ[BII)I
    .registers 10

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p6

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v1, v1, 0x15

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x14

    sub-int p6, v0, v1

    :cond_30
    const/4 v0, 0x6

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    add-int/2addr v1, p6

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->a(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    if-eq v0, p4, :cond_68

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->b([BII)V

    :goto_58
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6

    :cond_68
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/Buffer;->b(I)V

    goto :goto_58
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .registers 6

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    return-object p2
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const/4 v3, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->c([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2b
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_43

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_34

    move-result-object v0

    return-object v0

    :cond_43
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4f

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4f
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a(BI)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    return-void
.end method

.method private a(B[B)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x9

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a(B[B[B)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    array-length v1, p3

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p2

    add-int/lit8 v2, v2, 0xd

    array-length v3, p3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a(Lcom/jcraft/jsch/Buffer;I)V
    .registers 6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "Failure"

    invoke-direct {v0, p2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BJI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp;->a([BJI)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .registers 7

    const/4 v3, 0x4

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_33

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_41

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_2b

    :cond_40
    return-void

    :cond_41
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4d

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4d
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a([BI)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x3

    array-length v1, p1

    add-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x11

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a([BJI)V
    .registers 8

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->a(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a([BLcom/jcraft/jsch/SftpATTRS;)V
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x9

    array-length v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private a([B[B)V
    .registers 4

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B[B)V

    return-void
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[[B)Z
    .registers 5

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p2, :cond_b

    const/4 v1, 0x0

    aput-object v0, p2, v1

    :cond_b
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->l([B)Z

    move-result v0

    return v0
.end method

.method private a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->h([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0
.end method

.method private a([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .registers 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    if-eqz p1, :cond_11

    const/4 v3, 0x0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    aput v0, p1, v3

    :cond_11
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v2, v0, :cond_23

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    return-object v0
.end method

.method private b(Lcom/jcraft/jsch/Buffer;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    return-void
.end method

.method private b([B)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private b([BLcom/jcraft/jsch/SftpATTRS;)V
    .registers 7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0xe

    array-length v0, p1

    add-int/lit8 v3, v0, 0x9

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->E:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    if-eqz p2, :cond_44

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(Lcom/jcraft/jsch/Buffer;)V

    :goto_2c
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    array-length v3, p1

    add-int/lit8 v3, v3, 0x9

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    move-result v1

    :cond_3b
    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void

    :cond_42
    move v0, v1

    goto :goto_11

    :cond_44
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    goto :goto_2c
.end method

.method private c([BII)I
    .registers 6

    move v0, p2

    :goto_1
    if-lez p3, :cond_16

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputstream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_1

    :cond_16
    sub-int/2addr v0, p2

    return v0
.end method

.method static synthetic c(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method private c([B)V
    .registers 3

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method static synthetic d(Lcom/jcraft/jsch/ChannelSftp;)I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    return v0
.end method

.method private d([B)V
    .registers 3

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private e([B)V
    .registers 3

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private f([B)V
    .registers 3

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private g([B)V
    .registers 3

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private h([B)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->a(B[B)V

    return-void
.end method

.method private i([B)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private j([B)V
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private j(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->c([B)V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq v1, v2, :cond_23

    :goto_22
    return v0

    :cond_23
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->d()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e

    move-result v0

    goto :goto_22

    :catch_2e
    move-exception v1

    goto :goto_22
.end method

.method private k(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    return-object v0
.end method

.method private k([B)V
    .registers 3

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([BI)V

    return-void
.end method

.method private l([B)Z
    .registers 6

    const/16 v3, 0x5c

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_25

    aget-byte v1, p1, v0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_13

    aget-byte v1, p1, v0

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_29

    :cond_13
    if-lez v0, :cond_25

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_25

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_29

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_29

    :cond_25
    if-ltz v0, :cond_2c

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_2c
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private l(Ljava/lang/String;)[B
    .registers 6

    const/16 v3, 0x65

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->b([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v3, :cond_2e

    const/16 v1, 0x68

    if-eq v0, v1, :cond_2e

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2e
    if-ne v0, v3, :cond_3b

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_3b
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_42
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5d

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    const/4 v3, 0x3

    if-gt v1, v3, :cond_56

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->i()[B

    :cond_56
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-static {v1}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move v1, v2

    goto :goto_42

    :cond_5d
    return-object v0
.end method

.method private m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/lang/String;

    return-void
.end method

.method private n(Ljava/lang/String;)Ljava/util/Vector;
    .registers 14

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_16

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v7

    :goto_15
    return-object v0

    :cond_16
    const/4 v2, 0x0

    if-nez v1, :cond_66

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [[B

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v7

    goto :goto_15

    :cond_66
    move v0, v1

    goto :goto_1a

    :cond_68
    const/4 v1, 0x0

    aget-object v9, v2, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->f([B)V

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v1, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v3, v1, :cond_99

    const/16 v1, 0x66

    if-eq v3, v1, :cond_99

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_99
    const/16 v1, 0x65

    if-ne v3, v1, :cond_a8

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_a8
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v10

    const/4 v1, 0x0

    :goto_af
    invoke-direct {p0, v10}, Lcom/jcraft/jsch/ChannelSftp;->g([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v6

    iget v2, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v3, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    const/16 v4, 0x65

    if-eq v3, v4, :cond_cd

    const/16 v4, 0x68

    if-eq v3, v4, :cond_cd

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_cd
    const/16 v4, 0x65

    if-ne v3, v4, :cond_df

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    invoke-direct {p0, v10, v6}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    move-object v0, v7

    goto/16 :goto_15

    :cond_df
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    add-int/lit8 v3, v2, -0x4

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->j()V

    move v8, v2

    :goto_fb
    if-lez v8, :cond_121

    if-lez v3, :cond_136

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v4, v3

    if-le v2, v4, :cond_123

    move v2, v3

    :goto_111
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v11, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v4, v5, v11, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_12e

    :cond_121
    move-object v2, v6

    goto :goto_af

    :cond_123
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v2, v4

    goto :goto_111

    :cond_12e
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v5, v4, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v5, v2

    iput v5, v4, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v3, v2

    :cond_136
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    const/4 v4, 0x3

    if-gt v2, v4, :cond_146

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    :cond_146
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-static {v2}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Z

    if-nez v4, :cond_1a3

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    :goto_15c
    invoke-static {v9, v4}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    move-result v4

    if-eqz v4, :cond_19b

    if-nez v2, :cond_16a

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16a
    if-nez v1, :cond_187

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_187
    :goto_187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_19b
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto/16 :goto_fb

    :cond_1a0
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_1a3
    move-object v4, v5

    goto :goto_15c

    :cond_1a5
    move-object v1, v0

    goto :goto_187
.end method

.method private o(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v0

    return v0
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_a

    :goto_9
    return-object p1

    :cond_a
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method private q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private q(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not unique: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .registers 14

    const/16 v8, 0x65

    const/4 v7, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_7
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz p2, :cond_22

    const/4 v1, 0x1

    const-string v3, "??"

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v4

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->a(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_22
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->i([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v0, v8, :cond_50

    const/16 v1, 0x66

    if-eq v0, v1, :cond_50

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_6c

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_50
    if-ne v0, v8, :cond_5d

    :try_start_52
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5d
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6b} :catch_48

    return-object v0

    :cond_6c
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_78

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_78
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .registers 15

    const/16 v8, 0x65

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is a directory"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_99

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_2d

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eq p3, v6, :cond_41

    if-ne p3, v7, :cond_49

    :cond_41
    :try_start_41
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->g()J
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_ad

    move-result-wide v0

    :cond_49
    :goto_49
    if-nez p3, :cond_71

    :try_start_4b
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->j([B)V

    :goto_4e
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    if-eq v2, v8, :cond_75

    const/16 v3, 0x66

    if-eq v2, v3, :cond_75

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_71
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->k([B)V

    goto :goto_4e

    :cond_75
    if-ne v2, v8, :cond_82

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_82
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    if-eq p3, v6, :cond_8c

    if-ne p3, v7, :cond_8d

    :cond_8c
    add-long/2addr p4, v0

    :cond_8d
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$1;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_98} :catch_2d

    return-object v1

    :cond_99
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_a5

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a5
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_ad
    move-exception v3

    goto :goto_49
.end method

.method public a(ILjava/lang/String;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_47

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->k(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/SftpATTRS;->a(I)V

    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)V

    invoke-direct {p0, v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_2b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :catch_2b
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_33
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_3f

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v6, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3f
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_47
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x2

    const/4 v5, 0x4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    if-ge v0, v4, :cond_10

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/16 v1, 0x8

    const-string v2, "The remote sshd is too old to support rename operation."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v4, :cond_39

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_96

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_39
    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    const/4 v1, 0x0

    :try_start_3d
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    :goto_45
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a([B[B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_87

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_75
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_82
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_87
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-nez v0, :cond_90

    :goto_8f
    return-void

    :cond_90
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_95} :catch_31

    goto :goto_8f

    :cond_96
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_a2

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->l(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->f()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3b

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_65

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    if-nez v2, :cond_5b

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t change directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5b
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->m(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_64} :catch_33

    return-void

    :cond_65
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_71

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v5, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_71
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Lcom/jcraft/jsch/SftpProgressMonitor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Vector;
    .registers 15

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_64

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [[B

    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;[[B)Z

    move-result v9

    if-eqz v9, :cond_66

    const/4 v1, 0x0

    aget-object v1, v4, v1

    move-object v7, v1

    :goto_2e
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->f([B)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v2, v1, :cond_91

    const/16 v1, 0x66

    if-eq v2, v1, :cond_91

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_1ad

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_64
    move v0, v1

    goto :goto_13

    :cond_66
    :try_start_66
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->k(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 v0, 0x0

    move-object v7, v0

    move-object v0, v1

    goto :goto_2e

    :cond_78
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Z

    if-eqz v1, :cond_85

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->a([B)[B

    move-result-object v1

    move-object v7, v1

    goto :goto_2e

    :cond_85
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move-object v7, v1

    goto :goto_2e

    :cond_91
    const/16 v1, 0x65

    if-ne v2, v1, :cond_a0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_a0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v10

    :goto_a6
    invoke-direct {p0, v10}, Lcom/jcraft/jsch/ChannelSftp;->g([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v6

    iget v0, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v1, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_c4

    const/16 v2, 0x68

    if-eq v1, v2, :cond_c4

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c4
    const/16 v2, 0x65

    if-ne v1, v2, :cond_df

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_da

    invoke-direct {p0, v10, v6}, Lcom/jcraft/jsch/ChannelSftp;->a([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    return-object v8

    :cond_da
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V

    :cond_df
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->l()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    add-int/lit8 v4, v0, -0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()V

    move v5, v0

    move v0, v4

    :goto_fc
    if-lez v5, :cond_1aa

    if-lez v0, :cond_1ca

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_179

    move v1, v0

    :goto_112
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-direct {p0, v2, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->c([BII)I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v3, v2, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v0, v1

    move v4, v0

    :goto_127
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    const/4 v0, 0x0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    const/4 v3, 0x3

    if-gt v1, v3, :cond_1c7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    move-object v3, v0

    :goto_13a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-static {v0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    const/4 v0, 0x0

    if-nez v7, :cond_184

    const/4 v1, 0x1

    :goto_144
    if-eqz v1, :cond_174

    if-nez v0, :cond_1c3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_14f
    if-nez v3, :cond_1a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16c
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v2, p0, v1, v0, v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_174
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v0, v4

    goto :goto_fc

    :cond_179
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v1, v2

    goto :goto_112

    :cond_184
    if-nez v9, :cond_18b

    invoke-static {v7, v2}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v1

    goto :goto_144

    :cond_18b
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Z

    if-nez v1, :cond_1c5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_19e
    invoke-static {v7, v1}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    move-result v1

    goto :goto_144

    :cond_1a3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_1a8} :catch_5c

    move-result-object v0

    goto :goto_16c

    :cond_1aa
    move-object v0, v6

    goto/16 :goto_a6

    :cond_1ad
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1ba

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1ba
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1c3
    move-object v1, v0

    goto :goto_14f

    :cond_1c5
    move-object v1, v2

    goto :goto_19e

    :cond_1c7
    move-object v3, v0

    goto/16 :goto_13a

    :cond_1ca
    move v4, v0

    goto/16 :goto_127
.end method

.method public d()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const v2, 0x8000

    invoke-direct {v1, p0, v0, v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->j:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:Ljava/io/InputStream;

    if-nez v0, :cond_31

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_c3

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_31
    :try_start_31
    new-instance v0, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->l()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->H:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->r()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    const/high16 v2, 0x4

    if-le v0, v2, :cond_7d

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_7d
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    if-lez v0, :cond_b5

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    :goto_91
    if-lez v0, :cond_b5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    :cond_b5
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_c2} :catch_29

    return-void

    :cond_c3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_d1

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_15
    if-ge v1, v4, :cond_71

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->d([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v0, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v5, v0, :cond_4c

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_44

    :catch_44
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_5d

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-eqz v0, :cond_59

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_44

    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_5d
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_69

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_69
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_71
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_15
    if-ge v1, v4, :cond_71

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->e([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    iget v0, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq v5, v0, :cond_4c

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_44

    :catch_44
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_5d

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-eqz v0, :cond_59

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_44

    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_5d
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_69

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_69
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_71
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->b([BLcom/jcraft/jsch/SftpATTRS;)V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->b(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v0, v1, :cond_38

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_47

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    if-nez v0, :cond_41

    :goto_40
    return-void

    :cond_41
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->a(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_30

    goto :goto_40

    :cond_47
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_53

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_53
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 6

    const/4 v3, 0x4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->k(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_16
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_22
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->p()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_18

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, "The encoding can not be changed for this sftp server."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_18
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p1, "UTF-8"

    :cond_22
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Z

    return-void
.end method

.method public j()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->j()V

    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Ljava/lang/String;

    if-nez v0, :cond_13

    :try_start_5
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->l(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_16

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Ljava/lang/String;

    return-object v0

    :catch_16
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    :cond_1e
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2a

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2a
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public p()I
    .registers 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->k()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, "The channel is not connected."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:I

    return v0
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method
