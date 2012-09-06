.class public Ljcifs/smb/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/az;


# static fields
.field static a:Ljcifs/util/e;


# instance fields
.field private b:Ljava/security/MessageDigest;

.field private c:[B

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljcifs/smb/u;->d:Z

    :try_start_6
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/u;->b:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_e} :catch_2b

    iput-object p1, p0, Ljcifs/smb/u;->c:[B

    iput-boolean p2, p0, Ljcifs/smb/u;->d:Z

    iput v2, p0, Ljcifs/smb/u;->e:I

    iput v2, p0, Ljcifs/smb/u;->f:I

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2a

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    const-string v1, "macSigningKey:"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    array-length v1, p1

    invoke-static {v0, p1, v2, v1}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_2a
    return-void

    :catch_2b
    move-exception v0

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_37

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_37
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a([BII)V
    .registers 7

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_45

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/u;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    invoke-virtual {v0}, Ljcifs/util/e;->flush()V

    :cond_45
    if-nez p3, :cond_48

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Ljcifs/smb/u;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget v0, p0, Ljcifs/smb/u;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/u;->e:I

    goto :goto_47
.end method

.method a([BIILjcifs/smb/t;Ljcifs/smb/t;)V
    .registers 11

    const/16 v4, 0x8

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/smb/u;->f:I

    iput v1, p4, Ljcifs/smb/t;->x:I

    if-eqz p5, :cond_11

    iget v1, p0, Ljcifs/smb/u;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p5, Ljcifs/smb/t;->x:I

    iput-boolean v0, p5, Ljcifs/smb/t;->y:Z

    :cond_11
    :try_start_11
    iget-object v1, p0, Ljcifs/smb/u;->c:[B

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/u;->c:[B

    array-length v3, v3

    invoke-virtual {p0, v1, v2, v3}, Ljcifs/smb/u;->a([BII)V

    add-int/lit8 v1, p2, 0xe

    :goto_1c
    if-ge v0, v4, :cond_26

    add-int v2, v1, v0

    const/4 v3, 0x0

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_26
    iget v0, p0, Ljcifs/smb/u;->f:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/t;->b(J[BI)V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/u;->a([BII)V

    invoke-virtual {p0}, Ljcifs/smb/u;->a()[B

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Ljcifs/smb/u;->d:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/u;->d:Z

    const-string v0, "BSRSPYL "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4c
    .catchall {:try_start_11 .. :try_end_4c} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_53

    :cond_4c
    iget v0, p0, Ljcifs/smb/u;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/u;->f:I

    :goto_52
    return-void

    :catch_53
    move-exception v0

    :try_start_54
    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_5f

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_66

    :cond_5f
    iget v0, p0, Ljcifs/smb/u;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/u;->f:I

    goto :goto_52

    :catchall_66
    move-exception v0

    iget v1, p0, Ljcifs/smb/u;->f:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/u;->f:I

    throw v0
.end method

.method a([BILjcifs/smb/t;)Z
    .registers 10

    const/16 v5, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/smb/u;->c:[B

    iget-object v2, p0, Ljcifs/smb/u;->c:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/u;->a([BII)V

    const/16 v0, 0xe

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/u;->a([BII)V

    add-int/lit8 v0, p2, 0xe

    new-array v2, v5, [B

    iget v3, p3, Ljcifs/smb/t;->x:I

    int-to-long v3, v3

    invoke-static {v3, v4, v2, v1}, Ljcifs/smb/t;->b(J[BI)V

    array-length v3, v2

    invoke-virtual {p0, v2, v1, v3}, Ljcifs/smb/u;->a([BII)V

    add-int/lit8 v2, v0, 0x8

    iget-byte v0, p3, Ljcifs/smb/t;->g:B

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_6c

    move-object v0, p3

    check-cast v0, Ljcifs/smb/am;

    iget v3, p3, Ljcifs/smb/t;->j:I

    iget v4, v0, Ljcifs/smb/am;->D:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xe

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p0, p1, v2, v3}, Ljcifs/smb/u;->a([BII)V

    iget-object v2, v0, Ljcifs/smb/am;->b:[B

    iget v3, v0, Ljcifs/smb/am;->c:I

    iget v0, v0, Ljcifs/smb/am;->D:I

    invoke-virtual {p0, v2, v3, v0}, Ljcifs/smb/u;->a([BII)V

    :goto_3e
    invoke-virtual {p0}, Ljcifs/smb/u;->a()[B

    move-result-object v2

    move v0, v1

    :goto_43
    if-ge v0, v5, :cond_79

    aget-byte v3, v2, v0

    add-int/lit8 v4, p2, 0xe

    add-int/2addr v4, v0

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_76

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_68

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    const-string v3, "signature verification failure"

    invoke-virtual {v0, v3}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    invoke-static {v0, v2, v1, v5}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/u;->a:Ljcifs/util/e;

    add-int/lit8 v1, p2, 0xe

    invoke-static {v0, p1, v1, v5}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_68
    const/4 v0, 0x1

    iput-boolean v0, p3, Ljcifs/smb/t;->y:Z

    :goto_6b
    return v0

    :cond_6c
    iget v0, p3, Ljcifs/smb/t;->j:I

    add-int/lit8 v0, v0, -0xe

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, p1, v2, v0}, Ljcifs/smb/u;->a([BII)V

    goto :goto_3e

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_79
    iput-boolean v1, p3, Ljcifs/smb/t;->y:Z

    move v0, v1

    goto :goto_6b
.end method

.method public a()[B
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Ljcifs/smb/u;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_20

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    const-string v2, "digest: "

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    array-length v2, v0

    invoke-static {v1, v0, v3, v2}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    sget-object v1, Ljcifs/smb/u;->a:Ljcifs/util/e;

    invoke-virtual {v1}, Ljcifs/util/e;->flush()V

    :cond_20
    iput v3, p0, Ljcifs/smb/u;->e:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM_COMPATIBILITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ljcifs/smb/u;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MacSigningKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/u;->c:[B

    const/4 v2, 0x0

    iget-object v3, p0, Ljcifs/smb/u;->c:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljcifs/util/d;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
