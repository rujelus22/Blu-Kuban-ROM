.class public Lcom/google/googlenav/prefetch/android/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/prefetch/android/y;


# instance fields
.field private final a:Lat/B;

.field private final b:Lat/B;

.field private final c:Ln/am;

.field private final d:Ln/am;

.field private e:I

.field private f:I

.field private g:Ln/am;

.field private h:Ln/am;

.field private i:Ln/am;


# direct methods
.method public constructor <init>(Lat/B;Lat/B;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xe

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    .line 69
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    .line 70
    invoke-virtual {p1}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    invoke-static {v2, v0}, Ln/am;->a(ILn/Q;)Ln/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    .line 72
    invoke-virtual {p2}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p2}, Lat/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    invoke-static {v2, v0}, Ln/am;->a(ILn/Q;)Ln/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    .line 74
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/E;->g()V

    .line 75
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/prefetch/android/E;
    .registers 4
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    .line 241
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/C;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v1

    .line 243
    new-instance v2, Lcom/google/googlenav/prefetch/android/E;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/prefetch/android/E;-><init>(Lat/B;Lat/B;)V

    return-object v2
.end method

.method private b(I)Landroid/util/Pair;
    .registers 7
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    sub-int v1, p1, v0

    .line 116
    if-lez v1, :cond_49

    .line 117
    new-instance v0, Ln/am;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    invoke-virtual {v2}, Ln/am;->c()I

    move-result v2

    shl-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v3

    shl-int v1, v3, v1

    invoke-direct {v0, p1, v2, v1}, Ln/am;-><init>(III)V

    .line 125
    :goto_1e
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    sub-int v2, p1, v1

    .line 127
    if-lez v2, :cond_60

    .line 128
    new-instance v1, Ln/am;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    invoke-virtual {v3}, Ln/am;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    shl-int v2, v4, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, p1, v3, v2}, Ln/am;-><init>(III)V

    .line 138
    :goto_44
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 120
    :cond_49
    new-instance v0, Ln/am;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    invoke-virtual {v2}, Ln/am;->c()I

    move-result v2

    neg-int v3, v1

    shr-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->c:Ln/am;

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v3

    neg-int v1, v1

    shr-int v1, v3, v1

    invoke-direct {v0, p1, v2, v1}, Ln/am;-><init>(III)V

    goto :goto_1e

    .line 132
    :cond_60
    new-instance v1, Ln/am;

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    invoke-virtual {v3}, Ln/am;->c()I

    move-result v3

    neg-int v4, v2

    shr-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->d:Ln/am;

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    neg-int v2, v2

    shr-int v2, v4, v2

    invoke-direct {v1, p1, v3, v2}, Ln/am;-><init>(III)V

    goto :goto_44
.end method

.method private g()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/E;->h()V

    .line 79
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/E;->a(I)V

    .line 80
    return-void
.end method

.method private h()V
    .registers 6

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x5

    move v2, v1

    move v1, v0

    :goto_4
    const/16 v0, 0xe

    if-gt v1, v0, :cond_34

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/googlenav/prefetch/android/E;->a(I)V

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->h:Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v3}, Ln/am;->c()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 90
    if-gez v0, :cond_1f

    .line 91
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 93
    :cond_1f
    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->h:Ln/am;

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 96
    :cond_34
    iput v2, p0, Lcom/google/googlenav/prefetch/android/E;->f:I

    .line 97
    iput v2, p0, Lcom/google/googlenav/prefetch/android/E;->e:I

    .line 98
    return-void
.end method


# virtual methods
.method public a()Ln/am;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    if-nez v0, :cond_7

    move-object v0, v2

    .line 194
    :goto_6
    return-object v0

    .line 162
    :cond_7
    iget v0, p0, Lcom/google/googlenav/prefetch/android/E;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/E;->f:I

    .line 164
    new-instance v3, Ln/am;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    invoke-direct {v3, v0, v1, v4}, Ln/am;-><init>(III)V

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v0

    .line 171
    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->h:Ln/am;

    invoke-virtual {v4}, Ln/am;->c()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v1, v4, :cond_44

    .line 173
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v1}, Ln/am;->c()I

    move-result v1

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 179
    :cond_44
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v5}, Ln/am;->b()I

    move-result v5

    shl-int/2addr v4, v5

    if-lt v1, v4, :cond_4f

    .line 180
    const/4 v1, 0x0

    .line 183
    :cond_4f
    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->h:Ln/am;

    invoke-virtual {v4}, Ln/am;->d()I

    move-result v4

    if-le v0, v4, :cond_70

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6d

    .line 187
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/E;->a(I)V

    :goto_6b
    move-object v0, v3

    .line 194
    goto :goto_6

    .line 189
    :cond_6d
    iput-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    goto :goto_6b

    .line 192
    :cond_70
    new-instance v2, Ln/am;

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    invoke-virtual {v4}, Ln/am;->b()I

    move-result v4

    invoke-direct {v2, v4, v1, v0}, Ln/am;-><init>(III)V

    iput-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    goto :goto_6b
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/E;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 146
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/am;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    .line 147
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/am;

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->h:Ln/am;

    .line 150
    new-instance v0, Ln/am;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v2}, Ln/am;->c()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/E;->g:Ln/am;

    invoke-virtual {v3}, Ln/am;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln/am;-><init>(III)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->i:Ln/am;

    .line 152
    return-void
.end method

.method public a(Ln/am;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_11

    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    const/16 v3, 0xe

    if-le v0, v3, :cond_13

    :cond_11
    move v2, v1

    .line 223
    :cond_12
    :goto_12
    return v2

    .line 213
    :cond_13
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/prefetch/android/E;->b(I)Landroid/util/Pair;

    move-result-object v3

    .line 216
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    if-le v4, v0, :cond_6c

    .line 217
    invoke-virtual {p1}, Ln/am;->c()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    if-ge v4, v0, :cond_49

    invoke-virtual {p1}, Ln/am;->c()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    if-gt v4, v0, :cond_6a

    :cond_49
    move v0, v2

    .line 223
    :goto_4a
    if-eqz v0, :cond_68

    invoke-virtual {p1}, Ln/am;->d()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v0

    if-lt v4, v0, :cond_68

    invoke-virtual {p1}, Ln/am;->d()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v0

    if-le v4, v0, :cond_12

    :cond_68
    move v2, v1

    goto :goto_12

    :cond_6a
    move v0, v1

    .line 217
    goto :goto_4a

    .line 220
    :cond_6c
    invoke-virtual {p1}, Ln/am;->c()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    if-lt v4, v0, :cond_8a

    invoke-virtual {p1}, Ln/am;->c()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ln/am;

    invoke-virtual {v0}, Ln/am;->c()I

    move-result v0

    if-gt v4, v0, :cond_8a

    move v0, v2

    goto :goto_4a

    :cond_8a
    move v0, v1

    goto :goto_4a
.end method

.method public b()Lat/B;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    return-object v0
.end method

.method public c()Lat/B;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    return-object v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    sub-int/2addr v0, v1

    .line 269
    if-gez v0, :cond_13

    .line 270
    const v1, 0x15752a00

    add-int/2addr v0, v1

    .line 272
    :cond_13
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 247
    instance-of v1, p1, Lcom/google/googlenav/prefetch/android/E;

    if-nez v1, :cond_6

    .line 251
    :cond_5
    :goto_5
    return v0

    .line 250
    :cond_6
    check-cast p1, Lcom/google/googlenav/prefetch/android/E;

    .line 251
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    iget-object v2, p1, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-virtual {v1, v2}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    iget-object v2, p1, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    invoke-virtual {v1, v2}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()Lat/B;
    .registers 5

    .prologue
    .line 276
    new-instance v0, Lat/B;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/E;->e()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/google/googlenav/prefetch/android/E;->f:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 230
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbo/r;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 231
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->a:Lat/B;

    invoke-static {v2}, Lat/C;->c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 233
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/E;->b:Lat/B;

    invoke-static {v2}, Lat/C;->c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 235
    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/googlenav/prefetch/android/E;->e:I

    return v0
.end method

.method public m()V
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/googlenav/prefetch/android/E;->e:I

    iput v0, p0, Lcom/google/googlenav/prefetch/android/E;->f:I

    .line 103
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/E;->a(I)V

    .line 104
    return-void
.end method
