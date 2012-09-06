.class abstract Ljcifs/smb/t;
.super Ljcifs/util/transport/b;

# interfaces
.implements Ljcifs/smb/az;
.implements Ljcifs/util/transport/a;


# static fields
.field static e:Ljcifs/util/e;

.field static final f:[B


# instance fields
.field A:Ljava/lang/String;

.field B:Ljcifs/smb/u;

.field C:Ljcifs/smb/t;

.field g:B

.field h:B

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:J

.field x:I

.field y:Z

.field z:Ljcifs/smb/NtlmPasswordAuthentication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/t;->e:Ljcifs/util/e;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Ljcifs/smb/t;->f:[B

    return-void

    :array_10
    .array-data 0x1
        0xfft
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljcifs/util/transport/b;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/t;->w:J

    iput-object v2, p0, Ljcifs/smb/t;->z:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p0, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/t;->h:B

    sget v0, Ljcifs/smb/t;->aj:I

    iput v0, p0, Ljcifs/smb/t;->o:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/t;->k:I

    return-void
.end method

.method static a(J[BI)V
    .registers 7

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static b(J[BI)V
    .registers 9

    const/16 v4, 0x8

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-long v1, p0, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static c(J[BI)V
    .registers 9

    const/16 v4, 0x8

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-long v1, p0, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static d(J[BI)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_10

    const-wide v0, 0xa9730b66800L

    add-long/2addr v0, p0

    const-wide/16 v2, 0x2710

    mul-long p0, v0, v2

    :cond_10
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/t;->c(J[BI)V

    return-void
.end method

.method static e(J[BI)V
    .registers 10

    const-wide/32 v4, 0x36ee80

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    cmp-long v0, p0, v2

    if-nez v0, :cond_13

    :cond_f
    invoke-static {v2, v3, p2, p3}, Ljcifs/smb/t;->b(J[BI)V

    :goto_12
    return-void

    :cond_13
    sget-object v1, Ljcifs/smb/t;->ak:Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_16
    sget-object v0, Ljcifs/smb/t;->ak:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Ljcifs/smb/t;->ak:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_30
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_4c

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/smb/t;->b(J[BI)V

    goto :goto_12

    :cond_3b
    sub-long/2addr p0, v4

    goto :goto_30

    :cond_3d
    :try_start_3d
    sget-object v0, Ljcifs/smb/t;->ak:Ljava/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_30

    add-long/2addr p0, v4

    goto :goto_30

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method static f([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method static g([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method static h([BI)J
    .registers 7

    invoke-static {p0, p1}, Ljcifs/smb/t;->g([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/smb/t;->g([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static i([BI)J
    .registers 9

    invoke-static {p0, p1}, Ljcifs/smb/t;->g([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Ljcifs/smb/t;->g([BI)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    const-wide v2, 0xa9730b66800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static j([BI)J
    .registers 6

    invoke-static {p0, p1}, Ljcifs/smb/t;->g([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Ljcifs/smb/t;->t:Z

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    return v0
.end method

.method a(Ljava/lang/String;[BI)I
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/t;->t:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/t;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;[BIZ)I
    .registers 10

    if-eqz p4, :cond_32

    :try_start_2
    iget v0, p0, Ljcifs/smb/t;->i:I

    sub-int v0, p3, v0

    rem-int/lit8 v0, v0, 0x2
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_54

    if-eqz v0, :cond_5d

    add-int/lit8 v1, p3, 0x1

    const/4 v0, 0x0

    :try_start_d
    aput-byte v0, p2, p3

    :goto_f
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p2, v0
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2b} :catch_58

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_2e
    aput-byte v2, p2, v1
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_30} :catch_46

    :cond_30
    :goto_30
    sub-int/2addr v0, p3

    return v0

    :cond_32
    :try_start_32
    sget-object v0, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_3e} :catch_54

    add-int v1, p3, v0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_43
    aput-byte v2, p2, v1
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_45} :catch_46

    goto :goto_30

    :catch_46
    move-exception v1

    :goto_47
    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_30

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_30

    :catch_54
    move-exception v0

    move-object v1, v0

    move v0, p3

    goto :goto_47

    :catch_58
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_47

    :cond_5d
    move v1, p3

    goto :goto_f
.end method

.method a([BI)I
    .registers 9

    iput p2, p0, Ljcifs/smb/t;->i:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/t;->l([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/t;->n([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/t;->r:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/t;->r:I

    div-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/t;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/t;->r:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/t;->r:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/t;->o([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/t;->s:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/t;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ljcifs/smb/t;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, Ljcifs/smb/t;->s:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/t;->j:I

    iget-object v0, p0, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    if-eqz v0, :cond_56

    iget-object v0, p0, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    iget v2, p0, Ljcifs/smb/t;->i:I

    iget v3, p0, Ljcifs/smb/t;->j:I

    iget-object v5, p0, Ljcifs/smb/t;->C:Ljcifs/smb/t;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/u;->a([BIILjcifs/smb/t;Ljcifs/smb/t;)V

    :cond_56
    iget v0, p0, Ljcifs/smb/t;->j:I

    return v0
.end method

.method a([BIIIZ)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-eqz p5, :cond_59

    :try_start_6
    iget v3, p0, Ljcifs/smb/t;->i:I

    sub-int v3, p2, v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_10

    add-int/lit8 p2, p2, 0x1

    :cond_10
    :goto_10
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    if-ge v3, p3, :cond_24

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_2c

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_2c

    :cond_24
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_2b
    return-object v0

    :cond_2c
    if-le v2, p4, :cond_54

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_3d

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v0, :cond_3a

    add-int/lit8 v0, p4, 0x8

    :cond_3a
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_52

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_52
    move-object v0, v1

    goto :goto_2b

    :cond_54
    add-int/lit8 v2, v2, 0x2

    goto :goto_10

    :cond_57
    add-int/lit8 v2, v2, 0x1

    :cond_59
    if-ge p2, p3, :cond_61

    add-int v3, p2, v2

    :try_start_5d
    aget-byte v3, p1, v3

    if-nez v3, :cond_69

    :cond_61
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2b

    :cond_69
    if-le v2, p4, :cond_57

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_7a

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v0, :cond_77

    add-int/lit8 v0, p4, 0x8

    :cond_77
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_7a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_82} :catch_45
.end method

.method a([BIIZ)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_50

    :try_start_6
    iget v3, p0, Ljcifs/smb/t;->i:I

    sub-int v3, p2, v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_10

    add-int/lit8 p2, p2, 0x1

    :cond_10
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_1e

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_48

    :cond_1e
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_10

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_31

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_2e

    add-int/lit8 v0, p3, 0x8

    :cond_2e
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_39} :catch_39

    :catch_39
    move-exception v0

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_46

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_46
    move-object v0, v1

    :goto_47
    return-object v0

    :cond_48
    :try_start_48
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_47

    :cond_50
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-eqz v3, :cond_71

    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_50

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_69

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_66

    add-int/lit8 v0, p3, 0x8

    :cond_66
    invoke-static {v2, p1, p2, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_78} :catch_39

    goto :goto_47
.end method

.method b([BI)I
    .registers 9

    const/4 v5, 0x5

    iput p2, p0, Ljcifs/smb/t;->i:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/t;->m([BI)I

    move-result v0

    add-int v1, p2, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    iput v1, p0, Ljcifs/smb/t;->r:I

    iget v1, p0, Ljcifs/smb/t;->r:I

    if-eqz v1, :cond_4e

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/t;->p([BI)I

    move-result v1

    iget v2, p0, Ljcifs/smb/t;->r:I

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_49

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v5, :cond_49

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wordCount * 2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/t;->r:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but readParameterWordsWireFormat returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_49
    iget v1, p0, Ljcifs/smb/t;->r:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_4e
    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/t;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/t;->s:I

    if-eqz v1, :cond_8f

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/t;->q([BI)I

    move-result v1

    iget v2, p0, Ljcifs/smb/t;->s:I

    if-eq v1, v2, :cond_8c

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v5, :cond_8c

    sget-object v2, Ljcifs/smb/t;->e:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/smb/t;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but readBytesWireFormat returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_8c
    iget v1, p0, Ljcifs/smb/t;->s:I

    add-int/2addr v0, v1

    :cond_8f
    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/t;->j:I

    iget v0, p0, Ljcifs/smb/t;->j:I

    return v0
.end method

.method c([BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-eqz v1, :cond_24

    add-int/lit8 v1, v0, 0x1

    if-le v0, p3, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zero termination not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_1
.end method

.method e()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/t;->h:B

    iput v1, p0, Ljcifs/smb/t;->m:I

    iput v1, p0, Ljcifs/smb/t;->l:I

    iput-boolean v1, p0, Ljcifs/smb/t;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/smb/t;

    if-eqz v0, :cond_e

    check-cast p1, Ljcifs/smb/t;

    iget v0, p1, Ljcifs/smb/t;->q:I

    iget v1, p0, Ljcifs/smb/t;->q:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method f()Z
    .registers 3

    iget-byte v0, p0, Ljcifs/smb/t;->h:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljcifs/smb/t;->q:I

    return v0
.end method

.method k([BI)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x100

    iget-boolean v1, p0, Ljcifs/smb/t;->t:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Ljcifs/smb/t;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l([BI)I
    .registers 7

    sget-object v0, Ljcifs/smb/t;->f:[B

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/t;->f:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/t;->g:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/t;->h:B

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/smb/t;->m:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x9

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/t;->a(J[BI)V

    add-int/lit8 v0, p2, 0x18

    iget v1, p0, Ljcifs/smb/t;->n:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/t;->a(J[BI)V

    iget v1, p0, Ljcifs/smb/t;->o:I

    int-to-long v1, v1

    add-int/lit8 v3, v0, 0x2

    invoke-static {v1, v2, p1, v3}, Ljcifs/smb/t;->a(J[BI)V

    iget v1, p0, Ljcifs/smb/t;->p:I

    int-to-long v1, v1

    add-int/lit8 v3, v0, 0x4

    invoke-static {v1, v2, p1, v3}, Ljcifs/smb/t;->a(J[BI)V

    iget v1, p0, Ljcifs/smb/t;->q:I

    int-to-long v1, v1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/t;->a(J[BI)V

    const/16 v0, 0x20

    return v0
.end method

.method m([BI)I
    .registers 4

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/t;->g:B

    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/t;->g([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->l:I

    add-int/lit8 v0, p2, 0x9

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/t;->h:B

    add-int/lit8 v0, p2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->m:I

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->n:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->o:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->p:I

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/t;->q:I

    const/16 v0, 0x20

    return v0
.end method

.method abstract n([BI)I
.end method

.method abstract o([BI)I
.end method

.method abstract p([BI)I
.end method

.method abstract q([BI)I
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    iget-byte v0, p0, Ljcifs/smb/t;->g:B

    sparse-switch v0, :sswitch_data_11c

    const-string v0, "UNKNOWN"

    :goto_8
    iget v1, p0, Ljcifs/smb/t;->l:I

    if-nez v1, :cond_113

    const-string v1, "0"

    :goto_e
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",received="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Ljcifs/smb/t;->u:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",errorCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Ljcifs/smb/t;->h:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags2=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->m:I

    invoke-static {v1, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",byteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/t;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :sswitch_b3
    const-string v0, "SMB_COM_NEGOTIATE"

    goto/16 :goto_8

    :sswitch_b7
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    goto/16 :goto_8

    :sswitch_bb
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    goto/16 :goto_8

    :sswitch_bf
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    goto/16 :goto_8

    :sswitch_c3
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    goto/16 :goto_8

    :sswitch_c7
    const-string v0, "SMB_COM_TRANSACTION"

    goto/16 :goto_8

    :sswitch_cb
    const-string v0, "SMB_COM_TRANSACTION2"

    goto/16 :goto_8

    :sswitch_cf
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    goto/16 :goto_8

    :sswitch_d3
    const-string v0, "SMB_COM_FIND_CLOSE2"

    goto/16 :goto_8

    :sswitch_d7
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    goto/16 :goto_8

    :sswitch_db
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    goto/16 :goto_8

    :sswitch_df
    const-string v0, "SMB_COM_ECHO"

    goto/16 :goto_8

    :sswitch_e3
    const-string v0, "SMB_COM_MOVE"

    goto/16 :goto_8

    :sswitch_e7
    const-string v0, "SMB_COM_RENAME"

    goto/16 :goto_8

    :sswitch_eb
    const-string v0, "SMB_COM_DELETE"

    goto/16 :goto_8

    :sswitch_ef
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    goto/16 :goto_8

    :sswitch_f3
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    goto/16 :goto_8

    :sswitch_f7
    const-string v0, "SMB_COM_OPEN_ANDX"

    goto/16 :goto_8

    :sswitch_fb
    const-string v0, "SMB_COM_READ_ANDX"

    goto/16 :goto_8

    :sswitch_ff
    const-string v0, "SMB_COM_CLOSE"

    goto/16 :goto_8

    :sswitch_103
    const-string v0, "SMB_COM_WRITE_ANDX"

    goto/16 :goto_8

    :sswitch_107
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    goto/16 :goto_8

    :sswitch_10b
    const-string v0, "SMB_COM_NT_TRANSACT"

    goto/16 :goto_8

    :sswitch_10f
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    goto/16 :goto_8

    :cond_113
    iget v1, p0, Ljcifs/smb/t;->l:I

    invoke-static {v1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    nop

    :sswitch_data_11c
    .sparse-switch
        -0x60 -> :sswitch_10b
        -0x5f -> :sswitch_10f
        -0x5e -> :sswitch_f3
        0x0 -> :sswitch_107
        0x1 -> :sswitch_ef
        0x4 -> :sswitch_ff
        0x6 -> :sswitch_eb
        0x7 -> :sswitch_e7
        0x8 -> :sswitch_bf
        0x10 -> :sswitch_c3
        0x25 -> :sswitch_c7
        0x26 -> :sswitch_cf
        0x2a -> :sswitch_e3
        0x2b -> :sswitch_df
        0x2d -> :sswitch_f7
        0x2e -> :sswitch_fb
        0x2f -> :sswitch_103
        0x32 -> :sswitch_cb
        0x34 -> :sswitch_d3
        0x71 -> :sswitch_d7
        0x72 -> :sswitch_b3
        0x73 -> :sswitch_b7
        0x74 -> :sswitch_db
        0x75 -> :sswitch_bb
    .end sparse-switch
.end method
