.class Lbk/m;
.super Lbk/d;
.source "SourceFile"


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lbk/d;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lbk/m;->d:I

    .line 34
    iput-object p1, p0, Lbk/m;->c:[B

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lbk/m;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected a(III)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v1, p0, Lbk/m;->c:[B

    .line 236
    invoke-virtual {p0}, Lbk/m;->f()I

    move-result v0

    add-int/2addr v0, p2

    add-int v2, v0, p3

    :goto_9
    if-ge v0, v2, :cond_14

    .line 238
    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v1, v0

    add-int p1, v3, v4

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 240
    :cond_14
    return p1
.end method

.method public a()Lbk/e;
    .registers 3

    .prologue
    .line 265
    new-instance v0, Lbk/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbk/o;-><init>(Lbk/m;Lbk/n;)V

    return-object v0
.end method

.method a(Lbk/m;II)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1}, Lbk/m;->b()I

    move-result v0

    if-le p3, v0, :cond_27

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_27
    add-int v0, p2, p3

    invoke-virtual {p1}, Lbk/m;->b()I

    move-result v1

    if-le v0, v1, :cond_60

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbk/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_60
    iget-object v2, p0, Lbk/m;->c:[B

    .line 188
    iget-object v3, p1, Lbk/m;->c:[B

    .line 189
    invoke-virtual {p0}, Lbk/m;->f()I

    move-result v0

    add-int v4, v0, p3

    .line 190
    invoke-virtual {p0}, Lbk/m;->f()I

    move-result v1

    invoke-virtual {p1}, Lbk/m;->f()I

    move-result v0

    add-int/2addr v0, p2

    .line 192
    :goto_73
    if-ge v1, v4, :cond_82

    .line 193
    aget-byte v5, v2, v1

    aget-byte v6, v3, v0

    if-eq v5, v6, :cond_7d

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_7c
    return v0

    .line 192
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 197
    :cond_82
    const/4 v0, 0x1

    goto :goto_7c
.end method

.method public b()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lbk/m;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected b([BIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lbk/m;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method public d()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 248
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbk/m;->c:[B

    invoke-virtual {p0}, Lbk/m;->f()I

    move-result v2

    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lbk/m;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 159
    :goto_5
    return v0

    .line 145
    :cond_6
    instance-of v0, p1, Lbk/d;

    if-nez v0, :cond_c

    move v0, v2

    .line 146
    goto :goto_5

    .line 149
    :cond_c
    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lbk/d;

    invoke-virtual {v0}, Lbk/d;->b()I

    move-result v0

    if-eq v3, v0, :cond_1b

    move v0, v2

    .line 150
    goto :goto_5

    .line 152
    :cond_1b
    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 153
    goto :goto_5

    .line 156
    :cond_23
    instance-of v0, p1, Lbk/m;

    if-eqz v0, :cond_32

    .line 157
    check-cast p1, Lbk/m;

    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lbk/m;->a(Lbk/m;II)Z

    move-result v0

    goto :goto_5

    .line 158
    :cond_32
    instance-of v0, p1, Lbk/s;

    if-eqz v0, :cond_3b

    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 161
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lbk/m;->d:I

    .line 217
    if-nez v0, :cond_12

    .line 218
    invoke-virtual {p0}, Lbk/m;->b()I

    move-result v0

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lbk/m;->a(III)I

    move-result v0

    .line 220
    if-nez v0, :cond_10

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_10
    iput v0, p0, Lbk/m;->d:I

    .line 225
    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lbk/m;->a()Lbk/e;

    move-result-object v0

    return-object v0
.end method
