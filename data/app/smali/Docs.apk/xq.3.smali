.class public Lxq;
.super Ljava/lang/Object;
.source "HashCalculatorImpl.java"

# interfaces
.implements Lxp;


# annotations
.annotation runtime LanN;
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private a:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxq;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_3
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lxq;->a:Ljava/security/MessageDigest;
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_b} :catch_c

    .line 43
    :goto_b
    return-void

    .line 39
    :catch_c
    move-exception v0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lxq;->a:Ljava/security/MessageDigest;

    .line 41
    const-string v0, "HashCalculatorImpl"

    const-string v1, "Unable to find hash algorithms: SHA1"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_26

    aget-byte v3, p0, v0

    .line 51
    sget-object v4, Lxq;->a:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lxq;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 53
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lyg;II)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lxq;->a:Ljava/security/MessageDigest;

    if-eqz v1, :cond_32

    .line 59
    iget-object v1, p0, Lxq;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 60
    sub-int v1, p3, p2

    .line 61
    invoke-interface {p1}, Lyg;->a()Lvo;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Lvo;->b()V

    .line 65
    :try_start_13
    invoke-interface {p1, p2, v1}, Lyg;->a(II)LwJ;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v1, p2, v3}, LwJ;->a(II)Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_33

    move-result-object v1

    .line 67
    invoke-interface {v2}, Lvo;->c()V

    .line 69
    if-eqz v1, :cond_32

    .line 74
    :try_start_22
    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_27} :catch_38

    move-result-object v0

    .line 79
    iget-object v1, p0, Lxq;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lxq;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_32
    :goto_32
    return-object v0

    .line 67
    :catchall_33
    move-exception v0

    invoke-interface {v2}, Lvo;->c()V

    throw v0

    .line 75
    :catch_38
    move-exception v1

    .line 76
    const-string v1, "HashCalculatorImpl"

    const-string v2, "UTF-16LE encoding is not supported."

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method
