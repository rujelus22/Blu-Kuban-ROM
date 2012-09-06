.class public Lat/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J

.field private static final j:Lat/Y;


# instance fields
.field private final b:[Lat/B;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/googlenav/common/a;

.field private f:Z

.field private g:J

.field private h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lat/s;->a:J

    .line 110
    const/16 v0, 0x16

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, Lat/s;->j:Lat/Y;

    return-void
.end method

.method public constructor <init>(Lat/B;Lat/B;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x2

    new-array v1, v0, [Lat/B;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    int-to-long v4, p3

    move-object v0, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lat/s;-><init>([Lat/B;IIJI)V

    .line 132
    return-void
.end method

.method public constructor <init>([Lat/B;IIJI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lat/s;->b:[Lat/B;

    .line 152
    iput p2, p0, Lat/s;->c:I

    .line 153
    iput p3, p0, Lat/s;->d:I

    .line 154
    iput p6, p0, Lat/s;->i:I

    .line 156
    iput-wide p4, p0, Lat/s;->h:J

    .line 157
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lat/s;->e:Lcom/google/googlenav/common/a;

    .line 158
    iget-object v0, p0, Lat/s;->e:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/s;->g:J

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/s;->f:Z

    .line 160
    return-void
.end method

.method private a(III)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    sub-int v0, p2, p1

    int-to-long v0, v0

    int-to-long v2, p3

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method static a(JJJI)J
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 296
    cmp-long v2, p4, v0

    if-nez v2, :cond_7

    .line 316
    :goto_6
    return-wide v0

    .line 300
    :cond_7
    const/4 v0, 0x1

    if-ne p6, v0, :cond_e

    .line 301
    mul-long v0, p0, p2

    div-long/2addr v0, p4

    goto :goto_6

    .line 302
    :cond_e
    const/4 v0, 0x2

    if-ne p6, v0, :cond_1e

    .line 310
    mul-long v0, p4, p4

    sub-long v2, p4, p2

    sub-long v4, p4, p2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    div-long/2addr v0, v2

    goto :goto_6

    .line 316
    :cond_1e
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p2

    mul-long/2addr v0, p2

    mul-long/2addr v0, p4

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    mul-long/2addr v2, p2

    sub-long/2addr v0, v2

    mul-long/2addr v0, p0

    mul-long v2, p4, p4

    mul-long/2addr v2, p4

    div-long/2addr v0, v2

    goto :goto_6
.end method

.method public static a(Lat/B;IILat/Y;)Lat/s;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 176
    mul-int v0, p1, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    .line 177
    invoke-static {}, Lat/s;->d()I

    move-result v1

    div-int v1, v0, v1

    .line 178
    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->b(I)I

    move-result v0

    .line 180
    invoke-static {}, Lat/s;->c()I

    move-result v3

    if-le v1, v3, :cond_7d

    .line 181
    invoke-static {}, Lat/s;->e()I

    move-result v1

    mul-int/2addr v1, p1

    div-int p1, v1, v0

    .line 182
    invoke-static {}, Lat/s;->e()I

    move-result v1

    mul-int/2addr v1, p2

    div-int p2, v1, v0

    .line 183
    invoke-static {}, Lat/s;->c()I

    move-result v1

    .line 184
    invoke-static {}, Lat/s;->e()I

    move-result v0

    move v3, v0

    move v0, v1

    .line 189
    :goto_2e
    if-nez v3, :cond_6e

    move v0, v2

    move v1, v2

    .line 199
    :goto_32
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long v3, v4, v6

    invoke-static {}, Lat/s;->d()I

    move-result v5

    int-to-long v5, v5

    div-long v4, v3, v5

    .line 207
    int-to-long v6, v1

    const-wide/32 v8, 0x15752a00

    mul-long/2addr v6, v8

    invoke-virtual {p3}, Lat/Y;->b()I

    move-result v3

    int-to-long v8, v3

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 209
    const-wide/32 v8, 0xaba9500

    div-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v3, v3, 0x1

    .line 210
    div-int v6, v1, v3

    .line 211
    div-int v7, v0, v3

    .line 212
    add-int/lit8 v0, v3, 0x1

    new-array v1, v0, [Lat/B;

    .line 214
    aput-object p0, v1, v2

    move v0, v2

    .line 215
    :goto_5f
    if-ge v0, v3, :cond_76

    .line 216
    add-int/lit8 v8, v0, 0x1

    aget-object v9, v1, v0

    invoke-virtual {v9, v6, v7, p3}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v9

    aput-object v9, v1, v8

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 194
    :cond_6e
    mul-int v1, v0, p1

    div-int/2addr v1, v3

    neg-int v1, v1

    .line 195
    mul-int/2addr v0, p2

    div-int/2addr v0, v3

    neg-int v0, v0

    goto :goto_32

    .line 220
    :cond_76
    new-instance v0, Lat/s;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lat/s;-><init>([Lat/B;IIJI)V

    return-object v0

    :cond_7d
    move v3, v0

    move v0, v1

    goto :goto_2e
.end method

.method private static c()I
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->N()I

    move-result v0

    mul-int/lit16 v0, v0, 0x359

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static d()I
    .registers 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->r()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1e24

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static e()I
    .registers 2

    .prologue
    .line 91
    invoke-static {}, Lat/s;->c()I

    move-result v0

    invoke-static {}, Lat/s;->d()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lat/B;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const-wide/16 v9, 0x2710

    const/4 v8, 0x0

    .line 229
    iget-object v0, p0, Lat/s;->e:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 230
    iget-wide v0, p0, Lat/s;->g:J

    iget-wide v4, p0, Lat/s;->h:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_1c

    iget v0, p0, Lat/s;->d:I

    iget-object v1, p0, Lat/s;->b:[Lat/B;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2e

    .line 232
    :cond_1c
    iput-boolean v7, p0, Lat/s;->f:Z

    .line 233
    iget-object v0, p0, Lat/s;->b:[Lat/B;

    iget v1, p0, Lat/s;->d:I

    iget-object v2, p0, Lat/s;->b:[Lat/B;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v0, v0, v1

    .line 272
    :goto_2d
    return-object v0

    .line 239
    :cond_2e
    iget v0, p0, Lat/s;->d:I

    iget v1, p0, Lat/s;->c:I

    sub-int/2addr v0, v1

    .line 240
    int-to-long v0, v0

    mul-long/2addr v0, v9

    iget-wide v4, p0, Lat/s;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lat/s;->h:J

    iget v6, p0, Lat/s;->i:I

    invoke-static/range {v0 .. v6}, Lat/s;->a(JJJI)J

    move-result-wide v1

    .line 243
    iget v0, p0, Lat/s;->c:I

    int-to-long v3, v0

    div-long v5, v1, v9

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 246
    iget-object v3, p0, Lat/s;->b:[Lat/B;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 249
    iget v0, p0, Lat/s;->d:I

    iget v4, p0, Lat/s;->c:I

    if-le v0, v4, :cond_bc

    move v0, v7

    :goto_5b
    add-int/2addr v0, v3

    .line 250
    iget-object v4, p0, Lat/s;->b:[Lat/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 253
    rem-long v0, v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v1, v0

    .line 257
    iget-object v0, p0, Lat/s;->b:[Lat/B;

    aget-object v0, v0, v3

    sget-object v2, Lat/s;->j:Lat/Y;

    invoke-virtual {v0, v2}, Lat/B;->a(Lat/Y;)I

    move-result v0

    .line 258
    iget-object v2, p0, Lat/s;->b:[Lat/B;

    aget-object v2, v2, v4

    sget-object v5, Lat/s;->j:Lat/Y;

    invoke-virtual {v2, v5}, Lat/B;->a(Lat/Y;)I

    move-result v2

    .line 259
    sub-int v0, v2, v0

    .line 262
    sget-object v2, Lat/s;->j:Lat/Y;

    invoke-virtual {v2}, Lat/Y;->b()I

    move-result v2

    .line 263
    neg-int v5, v2

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_be

    .line 264
    add-int/2addr v0, v2

    .line 269
    :cond_92
    :goto_92
    iget-object v2, p0, Lat/s;->b:[Lat/B;

    aget-object v2, v2, v3

    sget-object v5, Lat/s;->j:Lat/Y;

    invoke-virtual {v2, v5}, Lat/B;->b(Lat/Y;)I

    move-result v2

    .line 270
    iget-object v5, p0, Lat/s;->b:[Lat/B;

    aget-object v4, v5, v4

    sget-object v5, Lat/s;->j:Lat/Y;

    invoke-virtual {v4, v5}, Lat/B;->b(Lat/Y;)I

    move-result v4

    .line 272
    iget-object v5, p0, Lat/s;->b:[Lat/B;

    aget-object v3, v5, v3

    invoke-direct {p0, v8, v0, v1}, Lat/s;->a(III)I

    move-result v0

    sub-int v2, v4, v2

    invoke-direct {p0, v8, v2, v1}, Lat/s;->a(III)I

    move-result v1

    sget-object v2, Lat/s;->j:Lat/Y;

    invoke-virtual {v3, v0, v1, v2}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    goto/16 :goto_2d

    .line 249
    :cond_bc
    const/4 v0, -0x1

    goto :goto_5b

    .line 265
    :cond_be
    div-int/lit8 v5, v2, 0x2

    if-le v0, v5, :cond_92

    .line 266
    sub-int/2addr v0, v2

    goto :goto_92
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lat/s;->f:Z

    return v0
.end method
