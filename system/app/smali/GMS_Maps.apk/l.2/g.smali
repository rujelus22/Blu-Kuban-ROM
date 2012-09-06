.class public final LL/g;
.super Lbk/j;
.source "SourceFile"


# static fields
.field public static a:Lbk/r;

.field private static final b:LL/g;

.field private static final serialVersionUID:J


# instance fields
.field private c:I

.field private d:J

.field private e:LL/d;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 93
    new-instance v0, LL/h;

    invoke-direct {v0}, LL/h;-><init>()V

    sput-object v0, LL/g;->a:Lbk/r;

    .line 849
    new-instance v0, LL/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LL/g;-><init>(Z)V

    sput-object v0, LL/g;->b:LL/g;

    .line 850
    sget-object v0, LL/g;->b:LL/g;

    invoke-direct {v0}, LL/g;->t()V

    .line 851
    return-void
.end method

.method private constructor <init>(Lbk/f;Lbk/i;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 277
    iput-byte v0, p0, LL/g;->i:B

    .line 306
    iput v0, p0, LL/g;->j:I

    .line 32
    invoke-direct {p0}, LL/g;->t()V

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_d
    if-nez v2, :cond_87

    .line 37
    :try_start_f
    invoke-virtual {p1}, Lbk/f;->a()I

    move-result v0

    .line 38
    sparse-switch v0, :sswitch_data_a8

    .line 43
    invoke-virtual {p0, p1, p2, v0}, LL/g;->a(Lbk/f;Lbk/i;I)Z

    move-result v0

    if-nez v0, :cond_85

    move v0, v1

    :goto_1d
    move v2, v0

    .line 83
    goto :goto_d

    :sswitch_1f
    move v0, v1

    .line 41
    goto :goto_1d

    .line 50
    :sswitch_21
    iget v0, p0, LL/g;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/g;->c:I

    .line 51
    invoke-virtual {p1}, Lbk/f;->c()J

    move-result-wide v3

    iput-wide v3, p0, LL/g;->d:J

    move v0, v2

    .line 52
    goto :goto_1d

    .line 55
    :sswitch_2f
    const/4 v0, 0x0

    .line 56
    iget v3, p0, LL/g;->c:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a5

    .line 57
    iget-object v0, p0, LL/g;->e:LL/d;

    invoke-virtual {v0}, LL/d;->h()LL/f;

    move-result-object v0

    move-object v3, v0

    .line 59
    :goto_3e
    sget-object v0, LL/d;->a:Lbk/r;

    invoke-virtual {p1, v0, p2}, Lbk/f;->a(Lbk/r;Lbk/i;)Lbk/p;

    move-result-object v0

    check-cast v0, LL/d;

    iput-object v0, p0, LL/g;->e:LL/d;

    .line 60
    if-eqz v3, :cond_55

    .line 61
    iget-object v0, p0, LL/g;->e:LL/d;

    invoke-virtual {v3, v0}, LL/f;->a(LL/d;)LL/f;

    .line 62
    invoke-virtual {v3}, LL/f;->c()LL/d;

    move-result-object v0

    iput-object v0, p0, LL/g;->e:LL/d;

    .line 64
    :cond_55
    iget v0, p0, LL/g;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/g;->c:I

    move v0, v2

    .line 65
    goto :goto_1d

    .line 68
    :sswitch_5d
    iget v0, p0, LL/g;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LL/g;->c:I

    .line 69
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v0

    iput-object v0, p0, LL/g;->f:Ljava/lang/Object;

    move v0, v2

    .line 70
    goto :goto_1d

    .line 73
    :sswitch_6b
    iget v0, p0, LL/g;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LL/g;->c:I

    .line 74
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v0

    iput-object v0, p0, LL/g;->g:Ljava/lang/Object;

    move v0, v2

    .line 75
    goto :goto_1d

    .line 78
    :sswitch_79
    iget v0, p0, LL/g;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LL/g;->c:I

    .line 79
    invoke-virtual {p1}, Lbk/f;->e()Lbk/d;

    move-result-object v0

    iput-object v0, p0, LL/g;->h:Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_f .. :try_end_85} :catchall_91
    .catch Lbk/l; {:try_start_f .. :try_end_85} :catch_8b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_85} :catch_96

    :cond_85
    move v0, v2

    goto :goto_1d

    .line 90
    :cond_87
    invoke-virtual {p0}, LL/g;->s()V

    .line 92
    return-void

    .line 84
    :catch_8b
    move-exception v0

    .line 85
    :try_start_8c
    invoke-virtual {v0, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_91

    .line 90
    :catchall_91
    move-exception v0

    invoke-virtual {p0}, LL/g;->s()V

    throw v0

    .line 86
    :catch_96
    move-exception v0

    .line 87
    :try_start_97
    new-instance v1, Lbk/l;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbk/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbk/l;->a(Lbk/p;)Lbk/l;

    move-result-object v0

    throw v0
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_91

    :cond_a5
    move-object v3, v0

    goto :goto_3e

    .line 38
    nop

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_21
        0x12 -> :sswitch_2f
        0x1a -> :sswitch_5d
        0x22 -> :sswitch_6b
        0x2a -> :sswitch_79
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lbk/f;Lbk/i;LL/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, LL/g;-><init>(Lbk/f;Lbk/i;)V

    return-void
.end method

.method private constructor <init>(Lbk/k;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Lbk/j;-><init>(Lbk/k;)V

    .line 277
    iput-byte v0, p0, LL/g;->i:B

    .line 306
    iput v0, p0, LL/g;->j:I

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lbk/k;LL/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, LL/g;-><init>(Lbk/k;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lbk/j;-><init>()V

    .line 277
    iput-byte v0, p0, LL/g;->i:B

    .line 306
    iput v0, p0, LL/g;->j:I

    .line 17
    return-void
.end method

.method static synthetic a(LL/g;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput p1, p0, LL/g;->c:I

    return p1
.end method

.method static synthetic a(LL/g;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    iput-wide p1, p0, LL/g;->d:J

    return-wide p1
.end method

.method static synthetic a(LL/g;LL/d;)LL/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/g;->e:LL/d;

    return-object p1
.end method

.method public static a()LL/g;
    .registers 1

    .prologue
    .line 21
    sget-object v0, LL/g;->b:LL/g;

    return-object v0
.end method

.method public static a(LL/g;)LL/i;
    .registers 2
    .parameter

    .prologue
    .line 399
    invoke-static {}, LL/g;->o()LL/i;

    move-result-object v0

    invoke-virtual {v0, p0}, LL/i;->a(LL/g;)LL/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LL/g;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/g;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(LL/g;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LL/g;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/g;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(LL/g;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/g;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(LL/g;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, LL/g;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(LL/g;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, LL/g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public static o()LL/i;
    .registers 1

    .prologue
    .line 396
    invoke-static {}, LL/i;->g()LL/i;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .registers 3

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL/g;->d:J

    .line 272
    invoke-static {}, LL/d;->a()LL/d;

    move-result-object v0

    iput-object v0, p0, LL/g;->e:LL/d;

    .line 273
    const-string v0, ""

    iput-object v0, p0, LL/g;->f:Ljava/lang/Object;

    .line 274
    const-string v0, ""

    iput-object v0, p0, LL/g;->g:Ljava/lang/Object;

    .line 275
    const-string v0, ""

    iput-object v0, p0, LL/g;->h:Ljava/lang/Object;

    .line 276
    return-void
.end method


# virtual methods
.method public a(Lbk/g;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p0}, LL/g;->g()I

    .line 289
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 290
    iget-wide v0, p0, LL/g;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lbk/g;->a(IJ)V

    .line 292
    :cond_11
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 293
    iget-object v0, p0, LL/g;->e:LL/d;

    invoke-virtual {p1, v3, v0}, Lbk/g;->a(ILbk/p;)V

    .line 295
    :cond_1c
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 296
    const/4 v0, 0x3

    invoke-virtual {p0}, LL/g;->h()Lbk/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbk/g;->a(ILbk/d;)V

    .line 298
    :cond_2a
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 299
    invoke-virtual {p0}, LL/g;->k()Lbk/d;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lbk/g;->a(ILbk/d;)V

    .line 301
    :cond_39
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 302
    const/4 v0, 0x5

    invoke-virtual {p0}, LL/g;->m()Lbk/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbk/g;->a(ILbk/d;)V

    .line 304
    :cond_49
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, LL/g;->d:J

    return-wide v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e()LL/d;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, LL/g;->e:LL/d;

    return-object v0
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 148
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public g()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 308
    iget v0, p0, LL/g;->j:I

    .line 309
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 333
    :goto_8
    return v0

    .line 311
    :cond_9
    const/4 v0, 0x0

    .line 312
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_17

    .line 313
    iget-wide v1, p0, LL/g;->d:J

    invoke-static {v3, v1, v2}, Lbk/g;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_17
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_24

    .line 317
    iget-object v1, p0, LL/g;->e:LL/d;

    invoke-static {v4, v1}, Lbk/g;->b(ILbk/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_24
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_34

    .line 321
    const/4 v1, 0x3

    invoke-virtual {p0}, LL/g;->h()Lbk/d;

    move-result-object v2

    invoke-static {v1, v2}, Lbk/g;->b(ILbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_34
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 325
    invoke-virtual {p0}, LL/g;->k()Lbk/d;

    move-result-object v1

    invoke-static {v5, v1}, Lbk/g;->b(ILbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_45
    iget v1, p0, LL/g;->c:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_57

    .line 329
    const/4 v1, 0x5

    invoke-virtual {p0}, LL/g;->m()Lbk/d;

    move-result-object v2

    invoke-static {v1, v2}, Lbk/g;->b(ILbk/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_57
    iput v0, p0, LL/g;->j:I

    goto :goto_8
.end method

.method public h()Lbk/d;
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, LL/g;->f:Ljava/lang/Object;

    .line 173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 174
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 177
    iput-object v0, p0, LL/g;->f:Ljava/lang/Object;

    .line 180
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 191
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic j()Lbk/q;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, LL/g;->p()LL/i;

    move-result-object v0

    return-object v0
.end method

.method public k()Lbk/d;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, LL/g;->g:Ljava/lang/Object;

    .line 216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 217
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 220
    iput-object v0, p0, LL/g;->g:Ljava/lang/Object;

    .line 223
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 234
    iget v0, p0, LL/g;->c:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public m()Lbk/d;
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, LL/g;->h:Ljava/lang/Object;

    .line 259
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 260
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lbk/d;->a(Ljava/lang/String;)Lbk/d;

    move-result-object v0

    .line 263
    iput-object v0, p0, LL/g;->h:Ljava/lang/Object;

    .line 266
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lbk/d;

    goto :goto_e
.end method

.method public final n()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 279
    iget-byte v1, p0, LL/g;->i:B

    .line 280
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 283
    :goto_8
    return v0

    .line 280
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 282
    :cond_b
    iput-byte v0, p0, LL/g;->i:B

    goto :goto_8
.end method

.method public p()LL/i;
    .registers 2

    .prologue
    .line 397
    invoke-static {}, LL/g;->o()LL/i;

    move-result-object v0

    return-object v0
.end method

.method public q()LL/i;
    .registers 2

    .prologue
    .line 401
    invoke-static {p0}, LL/g;->a(LL/g;)LL/i;

    move-result-object v0

    return-object v0
.end method
