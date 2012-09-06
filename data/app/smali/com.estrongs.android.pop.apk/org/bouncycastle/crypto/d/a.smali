.class public Lorg/bouncycastle/crypto/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/e;


# static fields
.field private static f:Ljava/util/Hashtable;


# instance fields
.field private a:Lorg/bouncycastle/crypto/c;

.field private b:I

.field private c:I

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x80

    const/16 v4, 0x40

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD2"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD4"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD5"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/c;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/crypto/d/a;->a(Lorg/bouncycastle/crypto/c;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/d/a;-><init>(Lorg/bouncycastle/crypto/c;I)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/c;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/c;->b()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/d/a;->b:I

    iput p2, p0, Lorg/bouncycastle/crypto/d/a;->c:I

    iget v0, p0, Lorg/bouncycastle/crypto/d/a;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    iget v0, p0, Lorg/bouncycastle/crypto/d/a;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    return-void
.end method

.method private static a(Lorg/bouncycastle/crypto/c;)I
    .registers 4

    instance-of v0, p0, Lorg/bouncycastle/crypto/d;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->d()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Lorg/bouncycastle/crypto/d/a;->f:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown digest passed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/d/a;->b:I

    return v0
.end method

.method public a([BI)I
    .registers 8

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/d/a;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/c;->a([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/c;->a([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/c;->a([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/c;->a([BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/d/a;->b()V

    return v0
.end method

.method public a(Lorg/bouncycastle/crypto/b;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/c;->c()V

    check-cast p1, Lorg/bouncycastle/crypto/f/a;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/f/a;->a()[B

    move-result-object v0

    array-length v2, v0

    iget v3, p0, Lorg/bouncycastle/crypto/d/a;->c:I

    if-le v2, v3, :cond_54

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/c;->a([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/c;->a([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/d/a;->b:I

    :goto_20
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4d

    :cond_25
    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_37
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v2, v2

    if-lt v0, v2, :cond_67

    move v0, v1

    :goto_3d
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    array-length v2, v2

    if-lt v0, v2, :cond_73

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/c;->a([BII)V

    return-void

    :cond_4d
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_54
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    :goto_5b
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_25

    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_67
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_73
    iget-object v2, p0, Lorg/bouncycastle/crypto/d/a;->e:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/c;->a([BII)V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/c;->c()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/d/a;->a:Lorg/bouncycastle/crypto/c;

    iget-object v1, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/d/a;->d:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/c;->a([BII)V

    return-void
.end method
