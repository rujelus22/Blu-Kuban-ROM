.class public Lao/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lao/c;

.field private static b:Z

.field private static n:Lao/b;

.field private static o:J

.field private static p:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lao/b;->b:Z

    .line 112
    const-wide/32 v0, -0x927c0

    sput-wide v0, Lao/b;->o:J

    .line 113
    const/4 v0, -0x1

    sput v0, Lao/b;->p:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIJ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lao/b;->c:Ljava/lang/String;

    .line 199
    iput p3, p0, Lao/b;->j:I

    .line 200
    iput p4, p0, Lao/b;->i:I

    .line 201
    iput p5, p0, Lao/b;->h:I

    .line 202
    iput p6, p0, Lao/b;->f:I

    .line 203
    iput p7, p0, Lao/b;->g:I

    .line 204
    iput p8, p0, Lao/b;->d:I

    .line 205
    iput p9, p0, Lao/b;->e:I

    .line 206
    iput p2, p0, Lao/b;->l:I

    .line 207
    iput p10, p0, Lao/b;->k:I

    .line 208
    iput-wide p11, p0, Lao/b;->m:J

    .line 209
    return-void
.end method

.method public static a(Ljava/lang/String;IIIIIIIII)Lao/b;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Lao/b;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lao/b;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    return-object v0
.end method

.method public static a(Lao/c;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lao/b;->b:Z

    .line 224
    if-nez p0, :cond_8

    .line 226
    invoke-static {}, Lao/b;->b()V

    .line 228
    :cond_8
    sput-object p0, Lao/b;->a:Lao/c;

    .line 229
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 61
    sget-boolean v0, Lao/b;->b:Z

    return v0
.end method

.method static b()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lao/b;->b:Z

    .line 66
    return-void
.end method

.method public static c()I
    .registers 6

    .prologue
    .line 134
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 135
    sget-wide v2, Lao/b;->o:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_29

    .line 136
    invoke-static {}, Lao/b;->d()Lao/b;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_27

    .line 138
    invoke-virtual {v2}, Lao/b;->i()I

    move-result v2

    sput v2, Lao/b;->p:I

    .line 140
    :cond_27
    sput-wide v0, Lao/b;->o:J

    .line 142
    :cond_29
    sget v0, Lao/b;->p:I

    return v0
.end method

.method public static d()Lao/b;
    .registers 1

    .prologue
    .line 152
    sget-object v0, Lao/b;->a:Lao/c;

    if-nez v0, :cond_9

    .line 153
    invoke-static {}, Lao/b;->e()Lao/b;

    move-result-object v0

    .line 156
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lao/b;->a:Lao/c;

    invoke-interface {v0}, Lao/c;->a()Lao/b;

    move-result-object v0

    goto :goto_8
.end method

.method public static e()Lao/b;
    .registers 13

    .prologue
    const/4 v2, -0x1

    .line 163
    sget-object v0, Lao/b;->n:Lao/b;

    if-nez v0, :cond_21

    .line 164
    new-instance v0, Lao/b;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v11

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v12}, Lao/b;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    sput-object v0, Lao/b;->n:Lao/b;

    .line 168
    :cond_21
    sget-object v0, Lao/b;->n:Lao/b;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-ne p0, p1, :cond_5

    .line 258
    :cond_4
    :goto_4
    return v0

    .line 248
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 249
    goto :goto_4

    .line 252
    :cond_13
    check-cast p1, Lao/b;

    .line 254
    iget v2, p0, Lao/b;->j:I

    iget v3, p1, Lao/b;->j:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lao/b;->i:I

    iget v3, p1, Lao/b;->i:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    .line 255
    goto :goto_4
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 233
    iget v0, p0, Lao/b;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lao/b;->j:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lao/b;->i:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 263
    iget v0, p0, Lao/b;->j:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lao/b;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lao/b;->f:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lao/b;->g:I

    return v0
.end method

.method public k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 316
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbf/R;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 318
    const/4 v1, 0x4

    iget v2, p0, Lao/b;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 319
    const/4 v1, 0x5

    iget v2, p0, Lao/b;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 320
    const/4 v1, 0x1

    iget v2, p0, Lao/b;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 322
    const/4 v1, 0x2

    iget-object v2, p0, Lao/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 324
    return-object v0
.end method

.method public l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 329
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbf/x;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 331
    iget-wide v1, p0, Lao/b;->m:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 332
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbf/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 333
    iget v2, p0, Lao/b;->j:I

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 334
    iget v2, p0, Lao/b;->i:I

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 335
    const/4 v2, 0x3

    iget v3, p0, Lao/b;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 336
    const/4 v2, 0x4

    iget v3, p0, Lao/b;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 337
    const/4 v2, 0x5

    iget v3, p0, Lao/b;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 338
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 339
    return-object v0
.end method
