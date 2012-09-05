.class public LaJ/P;
.super Ljava/lang/Object;


# static fields
.field private static f:I

.field private static g:[LaJ/P;

.field private static final h:[I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:LaJ/Y;

.field private final d:B

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, LaJ/P;->h:[I

    const/4 v0, 0x1

    invoke-static {v0}, LaJ/P;->a(I)V

    return-void

    :array_e
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x5t 0x8t 0x0t 0x0t
        0x3t 0x10t 0x0t 0x0t
        0x11t 0x20t 0x0t 0x0t
        0x1bt 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(BIILaJ/Y;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-byte p1, p0, LaJ/P;->d:B

    iput p2, p0, LaJ/P;->a:I

    iput p3, p0, LaJ/P;->b:I

    iput-object p4, p0, LaJ/P;->c:LaJ/Y;

    iput p5, p0, LaJ/P;->e:I

    return-void
.end method

.method public static a()B
    .registers 1

    const/4 v0, 0x6

    return v0
.end method

.method private static a(IILaJ/Y;I)I
    .registers 6

    mul-int/lit8 v0, p0, 0x1d

    xor-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p2}, LaJ/Y;->a()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    return v0
.end method

.method public static a(LaJ/B;LaJ/Y;)I
    .registers 3

    invoke-virtual {p0, p1}, LaJ/B;->a(LaJ/Y;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static a(BIILaJ/Y;)LaJ/P;
    .registers 11

    invoke-virtual {p3}, LaJ/Y;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    rem-int v2, p1, v0

    if-gez v2, :cond_11

    invoke-virtual {p3}, LaJ/Y;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    add-int/2addr v2, v0

    :cond_11
    invoke-static {v2, p2, p3, p0}, LaJ/P;->a(IILaJ/Y;I)I

    move-result v5

    sget v0, LaJ/P;->f:I

    rem-int v0, v5, v0

    if-gez v0, :cond_43

    sget v1, LaJ/P;->f:I

    add-int/2addr v0, v1

    move v6, v0

    :goto_1f
    sget-object v0, LaJ/P;->g:[LaJ/P;

    aget-object v0, v0, v6

    if-eqz v0, :cond_36

    iget-byte v1, v0, LaJ/P;->d:B

    if-ne v1, p0, :cond_36

    iget v1, v0, LaJ/P;->a:I

    if-ne v1, v2, :cond_36

    iget v1, v0, LaJ/P;->b:I

    if-ne v1, p2, :cond_36

    iget-object v1, v0, LaJ/P;->c:LaJ/Y;

    if-ne v1, p3, :cond_36

    :goto_35
    return-object v0

    :cond_36
    new-instance v0, LaJ/P;

    move v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LaJ/P;-><init>(BIILaJ/Y;I)V

    sget-object v1, LaJ/P;->g:[LaJ/P;

    aput-object v0, v1, v6

    goto :goto_35

    :cond_43
    move v6, v0

    goto :goto_1f
.end method

.method public static a(BLaJ/B;LaJ/Y;)LaJ/P;
    .registers 5

    invoke-static {p1, p2}, LaJ/P;->a(LaJ/B;LaJ/Y;)I

    move-result v0

    invoke-static {p1, p2}, LaJ/P;->b(LaJ/B;LaJ/Y;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v0

    return-object v0
.end method

.method public static a(BLaJ/P;)LaJ/P;
    .registers 5

    iget v0, p1, LaJ/P;->a:I

    iget v1, p1, LaJ/P;->b:I

    iget-object v2, p1, LaJ/P;->c:LaJ/Y;

    invoke-static {p0, v0, v1, v2}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)LaJ/P;
    .registers 5

    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-static {v3}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(I)V
    .registers 2

    mul-int/lit8 v0, p0, 0x6

    invoke-static {v0}, LaJ/P;->b(I)I

    move-result v0

    sput v0, LaJ/P;->f:I

    sget v0, LaJ/P;->f:I

    new-array v0, v0, [LaJ/P;

    sput-object v0, LaJ/P;->g:[LaJ/P;

    return-void
.end method

.method private static b(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    sget-object v1, LaJ/P;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    sget-object v1, LaJ/P;->h:[I

    aget v1, v1, v0

    if-lt v1, p0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    sget-object v0, LaJ/P;->h:[I

    sget-object v1, LaJ/P;->h:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_d
.end method

.method public static b(LaJ/B;LaJ/Y;)I
    .registers 3

    invoke-virtual {p0, p1}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-byte v0, p0, LaJ/P;->d:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LaJ/P;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LaJ/P;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LaJ/P;->c:LaJ/Y;

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, LaJ/P;->d:B

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaJ/P;->a:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, LaJ/P;->b:I

    return v0
.end method

.method public e()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaJ/P;->c:LaJ/Y;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, LaJ/P;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, LaJ/P;

    iget v2, p0, LaJ/P;->a:I

    iget v3, p1, LaJ/P;->a:I

    if-ne v2, v3, :cond_25

    iget v2, p0, LaJ/P;->b:I

    iget v3, p1, LaJ/P;->b:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, LaJ/P;->c:LaJ/Y;

    iget-object v3, p1, LaJ/P;->c:LaJ/Y;

    if-ne v2, v3, :cond_25

    iget-byte v2, p0, LaJ/P;->d:B

    iget-byte v3, p1, LaJ/P;->d:B

    if-eq v2, v3, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    iget v0, p0, LaJ/P;->a:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, LaJ/P;->b:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public h()LaJ/P;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/P;->c:LaJ/Y;

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    if-eqz v2, :cond_25

    iget v1, p0, LaJ/P;->a:I

    iget v0, p0, LaJ/P;->b:I

    if-gez v1, :cond_17

    add-int/lit8 v1, v1, -0x1

    :cond_17
    if-gez v0, :cond_1b

    add-int/lit8 v0, v0, -0x1

    :cond_1b
    iget-byte v3, p0, LaJ/P;->d:B

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v1, v0, v2}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, LaJ/P;->e:I

    return v0
.end method

.method public i()LaJ/P;
    .registers 2

    const/4 v0, 0x4

    invoke-static {v0, p0}, LaJ/P;->a(BLaJ/P;)LaJ/P;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, LaJ/P;->b:I

    if-ltz v0, :cond_10

    iget v0, p0, LaJ/P;->b:I

    iget-object v1, p0, LaJ/P;->c:LaJ/Y;

    invoke-virtual {v1}, LaJ/Y;->b()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaJ/P;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaJ/P;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaJ/P;->c:LaJ/Y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
