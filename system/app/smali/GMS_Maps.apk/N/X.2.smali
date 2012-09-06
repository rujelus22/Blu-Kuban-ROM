.class public Ln/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ln/Y;

.field private b:I

.field private c:Ln/U;


# direct methods
.method public constructor <init>(Ln/U;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Ln/X;->c:Ln/U;

    .line 111
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v2

    .line 112
    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x3

    .line 116
    iput v0, p0, Ln/X;->b:I

    .line 117
    :goto_12
    if-ge v0, v1, :cond_1d

    .line 118
    iget v3, p0, Ln/X;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ln/X;->b:I

    .line 117
    mul-int/lit8 v0, v0, 0x2

    goto :goto_12

    .line 120
    :cond_1d
    iget v0, p0, Ln/X;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ln/X;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [Ln/Y;

    iput-object v0, p0, Ln/X;->a:[Ln/Y;

    .line 124
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 125
    iget v0, p0, Ln/X;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ln/X;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 126
    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_3d
    if-ge v1, v2, :cond_5d

    .line 127
    invoke-virtual {p1, v1, v3}, Ln/U;->a(ILn/Q;)V

    .line 128
    if-lez v1, :cond_4b

    .line 129
    iget-object v4, p0, Ln/X;->a:[Ln/Y;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ln/Y;->a(Ln/Q;)V

    .line 131
    :cond_4b
    and-int/lit8 v4, v1, 0x7

    if-nez v4, :cond_5a

    .line 132
    iget-object v4, p0, Ln/X;->a:[Ln/Y;

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Ln/Y;

    invoke-direct {v5, v3}, Ln/Y;-><init>(Ln/Q;)V

    aput-object v5, v4, v0

    .line 126
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 137
    :cond_5d
    iget v0, p0, Ln/X;->b:I

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_62
    if-ltz v1, :cond_ab

    .line 138
    invoke-static {v1}, Ln/X;->a(I)I

    move-result v0

    .line 139
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ln/X;->a(I)I

    move-result v2

    .line 140
    :goto_6e
    if-ge v0, v2, :cond_7a

    .line 144
    invoke-static {v0}, Ln/X;->b(I)I

    move-result v3

    invoke-direct {p0, v3}, Ln/X;->d(I)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 137
    :cond_7a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_62

    .line 147
    :cond_7e
    iget-object v3, p0, Ln/X;->a:[Ln/Y;

    new-instance v4, Ln/Y;

    iget-object v5, p0, Ln/X;->a:[Ln/Y;

    invoke-static {v0}, Ln/X;->b(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ln/Y;-><init>(Ln/Y;)V

    aput-object v4, v3, v0

    .line 149
    invoke-static {v0}, Ln/X;->c(I)I

    move-result v3

    invoke-direct {p0, v3}, Ln/X;->d(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 152
    iget-object v3, p0, Ln/X;->a:[Ln/Y;

    aget-object v3, v3, v0

    iget-object v4, p0, Ln/X;->a:[Ln/Y;

    invoke-static {v0}, Ln/X;->c(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ln/Y;->a(Ln/Y;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 155
    :cond_ab
    return-void
.end method

.method private static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private a(Ln/aa;ILjava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p2}, Ln/X;->d(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Ln/X;->a:[Ln/Y;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ln/Y;->a(Ln/aa;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 176
    invoke-direct {p0, p2}, Ln/X;->e(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 177
    invoke-direct {p0, p2}, Ln/X;->f(I)I

    move-result v1

    .line 178
    add-int/lit8 v0, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    .line 179
    iget-object v2, p0, Ln/X;->c:Ln/U;

    invoke-virtual {v2}, Ln/U;->b()I

    move-result v2

    if-le v0, v2, :cond_2c

    .line 180
    iget-object v0, p0, Ln/X;->c:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    .line 182
    :cond_2c
    new-instance v2, Ln/ai;

    iget-object v3, p0, Ln/X;->c:Ln/U;

    invoke-direct {v2, v3, v1, v0}, Ln/ai;-><init>(Ln/U;II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_36
    :goto_36
    return-void

    .line 184
    :cond_37
    invoke-static {p2}, Ln/X;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Ln/X;->a(Ln/aa;ILjava/util/ArrayList;)V

    .line 185
    invoke-static {p2}, Ln/X;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Ln/X;->a(Ln/aa;ILjava/util/ArrayList;)V

    goto :goto_36
.end method

.method private static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 213
    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c(I)I
    .registers 2
    .parameter

    .prologue
    .line 218
    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private d(I)Z
    .registers 3
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Ln/X;->a:[Ln/Y;

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Ln/X;->a:[Ln/Y;

    aget-object v0, v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private e(I)Z
    .registers 3
    .parameter

    .prologue
    .line 228
    iget v0, p0, Ln/X;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ln/X;->a(I)I

    move-result v0

    if-lt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f(I)I
    .registers 3
    .parameter

    .prologue
    .line 233
    iget v0, p0, Ln/X;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ln/X;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    .line 234
    shl-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public a(Ln/aa;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ln/X;->a(Ln/aa;ILjava/util/ArrayList;)V

    .line 169
    return-object v0
.end method
