.class public final Ln/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method private constructor <init>([I[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ln/az;->a:[I

    .line 34
    iput-object p2, p0, Ln/az;->b:[I

    .line 35
    return-void
.end method

.method public static a(Ljava/io/DataInput;Ln/am;)Ln/az;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 78
    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_27

    .line 79
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

    .line 82
    :cond_27
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    .line 83
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v1, :cond_34

    .line 84
    invoke-static {p0, p1, v2, v0}, Ln/Q;->a(Ljava/io/DataInput;Ln/am;[II)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 86
    :cond_34
    new-instance v0, Ln/az;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ln/az;-><init>([I[I)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Ln/am;I)Ln/az;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 101
    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_28

    .line 102
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

    .line 105
    :cond_28
    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [I

    move v0, v1

    .line 106
    :goto_2d
    if-ge v0, v2, :cond_35

    .line 107
    invoke-static {p0, p1, v3, v0}, Ln/Q;->b(Ljava/io/DataInput;Ln/am;[II)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 109
    :cond_35
    const/4 v0, 0x0

    .line 110
    const/16 v2, 0x9

    if-eq p2, v2, :cond_3e

    const/16 v2, 0xa

    if-ne p2, v2, :cond_4f

    .line 112
    :cond_3e
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 113
    new-array v0, v2, [I

    .line 114
    :goto_44
    if-ge v1, v2, :cond_4f

    .line 115
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 118
    :cond_4f
    new-instance v1, Ln/az;

    invoke-direct {v1, v3, v0}, Ln/az;-><init>([I[I)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ln/az;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public a(ILn/Q;Ln/Q;Ln/Q;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    mul-int/lit8 v0, p1, 0x9

    .line 187
    iget-object v1, p0, Ln/az;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iput v0, p2, Ln/Q;->a:I

    .line 188
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Ln/Q;->b:I

    .line 189
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Ln/Q;->c:I

    .line 190
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Ln/Q;->a:I

    .line 191
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p3, Ln/Q;->b:I

    .line 192
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Ln/Q;->c:I

    .line 193
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p4, Ln/Q;->a:I

    .line 194
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p4, Ln/Q;->b:I

    .line 195
    iget-object v0, p0, Ln/az;->a:[I

    aget v0, v0, v1

    iput v0, p4, Ln/Q;->c:I

    .line 196
    return-void
.end method

.method public a(ILn/Q;Ln/Q;Ln/Q;Ln/Q;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    mul-int/lit8 v0, p1, 0x9

    .line 206
    iget-object v1, p0, Ln/az;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, Ln/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, Ln/Q;->a:I

    .line 207
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Ln/Q;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, Ln/Q;->b:I

    .line 208
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Ln/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Ln/Q;->c:I

    .line 209
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Ln/Q;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, Ln/Q;->a:I

    .line 210
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Ln/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, Ln/Q;->b:I

    .line 211
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Ln/Q;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, Ln/Q;->c:I

    .line 212
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Ln/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, Ln/Q;->a:I

    .line 213
    iget-object v0, p0, Ln/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Ln/Q;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, Ln/Q;->b:I

    .line 214
    iget-object v0, p0, Ln/az;->a:[I

    aget v0, v0, v1

    iget v1, p2, Ln/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, Ln/Q;->c:I

    .line 215
    return-void
.end method

.method public a(Ln/i;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 223
    move v0, v1

    :goto_4
    invoke-virtual {p0}, Ln/az;->a()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 224
    const/4 v2, 0x3

    new-array v2, v2, [Ln/Q;

    .line 225
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    aput-object v3, v2, v1

    .line 226
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    aput-object v3, v2, v6

    .line 227
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    aput-object v3, v2, v7

    .line 228
    aget-object v3, v2, v1

    aget-object v4, v2, v6

    aget-object v5, v2, v7

    invoke-virtual {p0, v0, v3, v4, v5}, Ln/az;->a(ILn/Q;Ln/Q;Ln/Q;)V

    .line 231
    new-instance v3, Ln/T;

    invoke-direct {v3, v2}, Ln/T;-><init>([Ln/Q;)V

    invoke-virtual {p1, v3}, Ln/i;->a(Ln/h;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 233
    :cond_36
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Ln/az;->a:[I

    array-length v1, v0

    iget-object v0, p0, Ln/az;->b:[I

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1c

    return v0

    :cond_e
    iget-object v0, p0, Ln/az;->b:[I

    array-length v0, v0

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 237
    instance-of v1, p1, Ln/az;

    if-eqz v1, :cond_1c

    .line 238
    check-cast p1, Ln/az;

    .line 239
    iget-object v1, p0, Ln/az;->a:[I

    iget-object v2, p1, Ln/az;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ln/az;->b:[I

    iget-object v2, p1, Ln/az;->b:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 242
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Ln/az;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Ln/az;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
