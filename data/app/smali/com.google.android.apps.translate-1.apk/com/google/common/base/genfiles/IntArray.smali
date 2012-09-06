.class public final Lcom/google/common/base/genfiles/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private length:I

.field private list:[I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 47
    return-void
.end method

.method private constructor <init>([II)V
    .registers 3
    .parameter "array"
    .parameter "arrayLength"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 66
    iput p2, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 67
    return-void
.end method

.method public constructor <init>([III)V
    .registers 6
    .parameter "source"
    .parameter "start"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ltz p3, :cond_16

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 52
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 53
    iput p3, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 54
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-void

    :cond_16
    move v0, v1

    .line 51
    goto :goto_7
.end method

.method public static varargs newInstance([I)Lcom/google/common/base/genfiles/IntArray;
    .registers 3
    .parameter "array"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/google/common/base/genfiles/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/genfiles/IntArray;-><init>([II)V

    return-object v0
.end method

.method public static newInstance([II)Lcom/google/common/base/genfiles/IntArray;
    .registers 3
    .parameter "array"
    .parameter "length"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    if-ltz p1, :cond_12

    array-length v0, p0

    if-gt p1, v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 116
    new-instance v0, Lcom/google/common/base/genfiles/IntArray;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/genfiles/IntArray;-><init>([II)V

    return-object v0

    .line 115
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .parameter "x"

    .prologue
    .line 140
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 141
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/base/genfiles/IntArray;->ensureCapacity(I)V

    .line 143
    :cond_e
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    aput p1, v0, v1

    .line 144
    return-void
.end method

.method public add([III)V
    .registers 6
    .parameter "source"
    .parameter "start"
    .parameter "num"

    .prologue
    .line 148
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 149
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/google/common/base/genfiles/IntArray;->ensureCapacity(I)V

    .line 151
    :cond_e
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 153
    return-void
.end method

.method public addArray(Lcom/google/common/base/genfiles/IntArray;)V
    .registers 5
    .parameter "other"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/google/common/base/genfiles/IntArray;->rep()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/common/base/genfiles/IntArray;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/base/genfiles/IntArray;->add([III)V

    .line 158
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 163
    return-void
.end method

.method public copy([IIII)V
    .registers 9
    .parameter "dest"
    .parameter "len"
    .parameter "srcPos"
    .parameter "destPos"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    if-ltz p3, :cond_2c

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 269
    if-ltz p4, :cond_2e

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 270
    if-ltz p2, :cond_30

    move v0, v1

    :goto_11
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 271
    add-int v0, p3, p2

    iget v3, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-gt v0, v3, :cond_32

    move v0, v1

    :goto_1b
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 272
    add-int v0, p4, p2

    array-length v3, p1

    if-gt v0, v3, :cond_34

    :goto_23
    invoke-static {v1}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 273
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    invoke-static {v0, p3, p1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    return-void

    :cond_2c
    move v0, v2

    .line 268
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 269
    goto :goto_b

    :cond_30
    move v0, v2

    .line 270
    goto :goto_11

    :cond_32
    move v0, v2

    .line 271
    goto :goto_1b

    :cond_34
    move v1, v2

    .line 272
    goto :goto_23
.end method

.method public ensureCapacity(I)V
    .registers 7
    .parameter "n"

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    array-length v2, v2

    if-ge v2, p1, :cond_19

    .line 204
    iget-object v2, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    .line 205
    .local v1, newSize:I
    if-ge v1, p1, :cond_e

    .line 206
    move v1, p1

    .line 208
    :cond_e
    new-array v0, v1, [I

    .line 209
    .local v0, copy:[I
    iget-object v2, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v3, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iput-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 212
    .end local v0           #copy:[I
    .end local v1           #newSize:I
    :cond_19
    return-void
.end method

.method public get(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 127
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-ge p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 128
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    aget v0, v0, p1

    return v0

    .line 127
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexOf(I)I
    .registers 4
    .parameter "element"

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-ge v0, v1, :cond_f

    .line 194
    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 198
    .end local v0           #i:I
    :goto_b
    return v0

    .line 193
    .restart local v0       #i:I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public pop()I
    .registers 3

    .prologue
    .line 175
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    aget v0, v0, v1

    return v0

    .line 175
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeFast(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 184
    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-ge p1, v0, :cond_1a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 185
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v2, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    aput v1, v0, p1

    .line 186
    invoke-virtual {p0}, Lcom/google/common/base/genfiles/IntArray;->removeLast()V

    .line 187
    return-void

    .line 184
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeLast()V
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 170
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 171
    return-void

    .line 167
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public rep()[I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    return-object v0
.end method

.method public resize(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 227
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/common/base/genfiles/IntArray;->ensureCapacity(I)V

    .line 229
    iput p1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 230
    return-void

    .line 227
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public set(II)V
    .registers 4
    .parameter "i"
    .parameter "x"

    .prologue
    .line 134
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-ge p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    aput p2, v0, p1

    .line 136
    return-void

    .line 134
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    return v0
.end method

.method public subArray(II)[I
    .registers 8
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    if-ltz p1, :cond_19

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 260
    add-int v1, p1, p2

    iget v4, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-gt v1, v4, :cond_1b

    :goto_e
    invoke-static {v2}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 261
    new-array v0, p2, [I

    .line 262
    .local v0, copy:[I
    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    invoke-static {v1, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v0

    .end local v0           #copy:[I
    :cond_19
    move v1, v3

    .line 259
    goto :goto_5

    :cond_1b
    move v2, v3

    .line 260
    goto :goto_e
.end method

.method public swap(Lcom/google/common/base/genfiles/IntArray;)V
    .registers 5
    .parameter "other"

    .prologue
    .line 242
    iget v0, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 243
    .local v0, tmpLength:I
    iget v2, p1, Lcom/google/common/base/genfiles/IntArray;->length:I

    iput v2, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 244
    iput v0, p1, Lcom/google/common/base/genfiles/IntArray;->length:I

    .line 245
    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 246
    .local v1, tmpList:[I
    iget-object v2, p1, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iput-object v2, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 247
    iput-object v1, p1, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 248
    return-void
.end method

.method public toArray()[I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 252
    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    new-array v0, v1, [I

    .line 253
    .local v0, copy:[I
    iget-object v1, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    iget v2, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object v0
.end method

.method public trimToSize()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/common/base/genfiles/IntArray;->length:I

    if-eq v0, v1, :cond_d

    .line 235
    invoke-virtual {p0}, Lcom/google/common/base/genfiles/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/genfiles/IntArray;->list:[I

    .line 237
    :cond_d
    return-void
.end method
