.class Lx/s;
.super Lx/r;
.source "SourceFile"


# instance fields
.field protected c:[I


# direct methods
.method protected constructor <init>([D[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lx/r;-><init>([D)V

    .line 81
    iput-object p2, p0, Lx/s;->c:[I

    .line 82
    return-void
.end method

.method private c(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lx/s;->c:[I

    aget v0, v0, p2

    if-lt p1, v0, :cond_10

    iget-object v0, p0, Lx/s;->c:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    if-ge p1, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lx/s;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 175
    instance-of v0, p1, Lx/s;

    return v0
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lx/s;->f(I)I

    move-result v0

    .line 89
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1, v0}, Lx/s;->c(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 90
    add-int/lit8 v0, p1, -0x1

    .line 92
    :goto_e
    return v0

    :cond_f
    iget-object v1, p0, Lx/s;->c:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method public d(I)I
    .registers 4
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lx/s;->f(I)I

    move-result v0

    .line 99
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, v0}, Lx/s;->c(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 100
    add-int/lit8 v0, p1, 0x1

    .line 102
    :goto_e
    return v0

    :cond_f
    iget-object v1, p0, Lx/s;->c:[I

    aget v0, v1, v0

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 170
    :goto_5
    return v0

    .line 162
    :cond_6
    instance-of v0, p1, Lx/s;

    if-nez v0, :cond_c

    move v0, v2

    .line 163
    goto :goto_5

    :cond_c
    move-object v0, p1

    .line 165
    check-cast v0, Lx/s;

    .line 166
    invoke-virtual {v0, p0}, Lx/s;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-super {p0, p1}, Lx/r;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lx/s;->c:[I

    iget-object v0, v0, Lx/s;->c:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    move v0, v2

    .line 168
    goto :goto_5

    :cond_27
    move v0, v1

    .line 170
    goto :goto_5
.end method

.method public f(I)I
    .registers 4
    .parameter

    .prologue
    .line 110
    if-ltz p1, :cond_6

    iget v0, p0, Lx/s;->a:I

    if-lt p1, v0, :cond_c

    .line 111
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_c
    const/4 v0, 0x0

    .line 114
    :goto_d
    iget-object v1, p0, Lx/s;->c:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_16

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 117
    :cond_16
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public g(I)I
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lx/s;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 180
    invoke-super {p0}, Lx/r;->hashCode()I

    move-result v0

    iget-object v1, p0, Lx/s;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method protected j()Ljava/lang/String;
    .registers 6

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const/4 v0, 0x1

    :goto_6
    iget-object v2, p0, Lx/s;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2e

    .line 234
    const-string v2, "\nHole "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, p0, Lx/s;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Lx/s;->c:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, v2, v3}, Lx/s;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-super {p0}, Lx/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lx/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
