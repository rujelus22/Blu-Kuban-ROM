.class Lx/u;
.super Lx/z;
.source "SourceFile"

# interfaces
.implements LK/c;


# direct methods
.method constructor <init>(Lx/r;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lx/z;-><init>(Lx/a;)V

    .line 28
    invoke-direct {p0, p1}, Lx/u;->a(Lx/a;)V

    .line 29
    return-void
.end method

.method protected constructor <init>([D)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lx/z;-><init>([D)V

    .line 33
    iget-object v0, p0, Lx/u;->b:Lx/a;

    invoke-direct {p0, v0}, Lx/u;->a(Lx/a;)V

    .line 34
    return-void
.end method

.method private constructor <init>([D[I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lx/r;->a([D)Lx/r;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lx/z;-><init>(Lx/a;[I)V

    .line 38
    return-void
.end method

.method private a(Lx/a;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    iget v0, p1, Lx/a;->a:I

    iput v0, p0, Lx/u;->d:I

    .line 42
    iget v0, p0, Lx/u;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lx/u;->c:[I

    move v0, v1

    .line 43
    :goto_c
    iget v2, p0, Lx/u;->d:I

    if-ge v0, v2, :cond_17

    .line 44
    iget-object v2, p0, Lx/u;->c:[I

    aput v0, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 47
    :cond_17
    invoke-static {}, LK/b;->a()LK/d;

    move-result-object v0

    iget v2, p0, Lx/u;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, p0, v1, v2}, LK/d;->a(LK/c;II)V

    .line 48
    return-void
.end method

.method private a(II)[I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    if-le p1, p2, :cond_26

    .line 95
    sub-int v1, p1, p2

    add-int/lit8 v3, v1, -0x1

    .line 96
    iget v1, p0, Lx/u;->d:I

    sub-int/2addr v1, v3

    new-array v1, v1, [I

    .line 98
    iget-object v4, p0, Lx/u;->c:[I

    array-length v5, v4

    move v2, v0

    :goto_10
    if-ge v2, v5, :cond_24

    aget v6, v4, v2

    .line 99
    if-gt v6, p2, :cond_1a

    .line 100
    aput v6, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_1a
    if-lt v6, p1, :cond_21

    .line 104
    sub-int/2addr v6, v3

    aput v6, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 98
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    move-object v0, v1

    .line 118
    :goto_25
    return-object v0

    .line 110
    :cond_26
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 112
    iget-object v3, p0, Lx/u;->c:[I

    array-length v4, v3

    move v2, v0

    :goto_30
    if-ge v2, v4, :cond_40

    aget v5, v3, v2

    .line 113
    if-lt v5, p1, :cond_3d

    if-gt v5, p2, :cond_3d

    .line 114
    sub-int/2addr v5, p1

    aput v5, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_40
    move-object v0, v1

    .line 118
    goto :goto_25
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(II)Lx/u;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v0}, Lx/a;->a()I

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a sorted sublist when there are holes."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_11
    if-le p1, p2, :cond_3c

    .line 71
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lx/u;->e()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 72
    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [D

    .line 74
    iget-object v0, p0, Lx/u;->b:Lx/a;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Lx/a;->a(I[DII)V

    .line 75
    iget-object v0, p0, Lx/u;->b:Lx/a;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lx/u;->e()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v0, p1, v1, v2, v3}, Lx/a;->a(I[DII)V

    .line 77
    new-instance v0, Lx/u;

    invoke-direct {p0, p1, p2}, Lx/u;->a(II)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx/u;-><init>([D[I)V

    .line 84
    :goto_3b
    return-object v0

    .line 79
    :cond_3c
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 80
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    .line 82
    iget-object v2, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v2, p1, v1, v3, v0}, Lx/a;->a(I[DII)V

    .line 84
    new-instance v0, Lx/u;

    invoke-direct {p0, p1, p2}, Lx/u;->a(II)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx/u;-><init>([D[I)V

    goto :goto_3b
.end method

.method public b()V
    .registers 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs b([I)V
    .registers 4
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(II)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lx/u;->b:Lx/a;

    iget-object v3, p0, Lx/u;->c:[I

    aget v3, v3, p1

    iget-object v4, p0, Lx/u;->c:[I

    aget v4, v4, p2

    invoke-virtual {v2, v3, v4}, Lx/a;->a(II)I

    move-result v2

    .line 131
    if-eqz v2, :cond_18

    .line 132
    if-gez v2, :cond_16

    .line 144
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 132
    goto :goto_15

    .line 134
    :cond_18
    iget-object v2, p0, Lx/u;->c:[I

    aget v2, v2, p1

    .line 135
    iget-object v3, p0, Lx/u;->c:[I

    aget v3, v3, p2

    .line 136
    new-array v4, v8, [I

    aput v2, v4, v1

    iget-object v5, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v5, v2}, Lx/a;->d(I)I

    move-result v5

    aput v5, v4, v0

    .line 137
    new-array v5, v8, [I

    aput v3, v5, v1

    iget-object v6, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v6, v3}, Lx/a;->d(I)I

    move-result v6

    aput v6, v5, v0

    .line 138
    new-array v6, v8, [I

    aput v2, v6, v1

    iget-object v7, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v7, v2}, Lx/a;->c(I)I

    move-result v7

    aput v7, v6, v0

    .line 139
    new-array v7, v8, [I

    aput v3, v7, v1

    iget-object v8, p0, Lx/u;->b:Lx/a;

    invoke-virtual {v8, v3}, Lx/a;->c(I)I

    move-result v3

    aput v3, v7, v0

    .line 140
    new-instance v3, Lx/b;

    iget-object v8, p0, Lx/u;->b:Lx/a;

    invoke-direct {v3, v8, v2}, Lx/b;-><init>(Lx/a;I)V

    .line 141
    invoke-virtual {v3, v6, v7}, Lx/b;->a([I[I)I

    move-result v2

    if-gez v2, :cond_5d

    .line 142
    :cond_5d
    invoke-virtual {v3, v4, v5}, Lx/b;->a([I[I)I

    move-result v2

    if-gez v2, :cond_75

    move v2, v0

    .line 144
    :goto_64
    invoke-virtual {v3, v6, v7}, Lx/b;->a([I[I)I

    move-result v8

    if-gez v8, :cond_77

    invoke-virtual {v3, v6, v5}, Lx/b;->a([I[I)I

    move-result v3

    if-ltz v3, :cond_72

    if-eqz v2, :cond_73

    :cond_72
    move v1, v0

    :cond_73
    :goto_73
    move v0, v1

    goto :goto_15

    :cond_75
    move v2, v1

    .line 142
    goto :goto_64

    .line 144
    :cond_77
    invoke-virtual {v3, v4, v7}, Lx/b;->a([I[I)I

    move-result v3

    if-gez v3, :cond_73

    if-eqz v2, :cond_73

    move v1, v0

    goto :goto_73
.end method

.method public d(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lx/u;->c:[I

    aget v0, v0, p1

    .line 157
    iget-object v1, p0, Lx/u;->c:[I

    iget-object v2, p0, Lx/u;->c:[I

    aget v2, v2, p2

    aput v2, v1, p1

    .line 158
    iget-object v1, p0, Lx/u;->c:[I

    aput v0, v1, p2

    .line 159
    return-void
.end method

.method public e(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
