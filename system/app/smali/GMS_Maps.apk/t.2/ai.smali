.class public final Lt/ai;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method private constructor <init>([I[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ai;->a:[I

    iput-object p2, p0, Lt/ai;->b:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lt/af;)Lt/ai;
    .registers 6

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v1

    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_27

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v1, :cond_34

    invoke-static {p0, p1, v2, v0}, Lt/L;->a(Ljava/io/DataInput;Lt/af;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_34
    new-instance v0, Lt/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lt/ai;-><init>([I[I)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lt/af;I)Lt/ai;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_28

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [I

    move v0, v1

    :goto_2d
    if-ge v0, v2, :cond_35

    invoke-static {p0, p1, v3, v0}, Lt/L;->b(Ljava/io/DataInput;Lt/af;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_35
    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_4b

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v0, v2, [I

    :goto_40
    if-ge v1, v2, :cond_4b

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4b
    new-instance v1, Lt/ai;

    invoke-direct {v1, v3, v0}, Lt/ai;-><init>([I[I)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lt/ai;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public a(ILt/L;Lt/L;Lt/L;)V
    .registers 8

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iput v0, p2, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lt/L;->c:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p3, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Lt/L;->c:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p4, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p4, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    aget v0, v0, v1

    iput v0, p4, Lt/L;->c:I

    return-void
.end method

.method public a(ILt/L;Lt/L;Lt/L;Lt/L;)V
    .registers 9

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, Lt/L;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lt/L;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lt/L;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lt/L;->c:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lt/L;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lt/L;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lt/L;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, Lt/L;->c:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lt/L;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, Lt/L;->a:I

    iget-object v0, p0, Lt/ai;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lt/L;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, Lt/L;->b:I

    iget-object v0, p0, Lt/ai;->a:[I

    aget v0, v0, v1

    iget v1, p2, Lt/L;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, Lt/L;->c:I

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lt/ai;->a:[I

    array-length v1, v0

    iget-object v0, p0, Lt/ai;->b:[I

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1c

    return v0

    :cond_e
    iget-object v0, p0, Lt/ai;->b:[I

    array-length v0, v0

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lt/ai;

    if-eqz v1, :cond_1c

    check-cast p1, Lt/ai;

    iget-object v1, p0, Lt/ai;->a:[I

    iget-object v2, p1, Lt/ai;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lt/ai;->b:[I

    iget-object v2, p1, Lt/ai;->b:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lt/ai;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lt/ai;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
