.class public Lcom/google/googlenav/layer/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/google/googlenav/layer/m;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final g:B

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:I

.field private n:I

.field private o:[Lcom/google/googlenav/e;

.field private p:[[B

.field private final q:I

.field private r:J

.field private final s:J

.field private t:Ln/m;

.field private u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/googlenav/layer/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x16

    const/16 v5, 0x12

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    .line 277
    invoke-static {p1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    .line 278
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    .line 280
    invoke-static {p1, v7}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    .line 281
    const/4 v0, 0x5

    invoke-static {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->h:I

    .line 283
    const/4 v0, 0x4

    invoke-static {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->i:I

    .line 286
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->j:Z

    .line 288
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->k:Z

    .line 290
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->l:Z

    .line 293
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 294
    new-array v0, v2, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 295
    :goto_52
    if-ge v0, v2, :cond_5f

    .line 296
    iget-object v3, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    aput-object v4, v3, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 299
    :cond_5f
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v2

    .line 300
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 301
    if-nez v3, :cond_b9

    .line 302
    iput-byte v5, p0, Lcom/google/googlenav/layer/m;->g:B

    .line 314
    :goto_71
    const/16 v0, 0x15

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->q:I

    .line 317
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_e3

    .line 320
    const/16 v1, 0x3d

    invoke-static {v0, v1, v6}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/m;->m:I

    .line 322
    const/16 v1, 0x3e

    invoke-static {v0, v1, v7}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/m;->n:I

    .line 329
    :goto_91
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/m;->r:J

    .line 331
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/m;->s:J

    .line 333
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 334
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    .line 337
    :cond_b5
    invoke-direct {p0, p1}, Lcom/google/googlenav/layer/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 338
    return-void

    .line 304
    :cond_b9
    new-array v0, v3, [Lcom/google/googlenav/e;

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    .line 305
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->p:[[B

    move v0, v1

    .line 306
    :goto_c2
    if-ge v0, v3, :cond_de

    .line 307
    const/16 v4, 0x11

    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v4

    .line 308
    iget-object v5, p0, Lcom/google/googlenav/layer/m;->p:[[B

    aput-object v4, v5, v0

    .line 309
    array-length v5, v4

    invoke-interface {v2, v4, v1, v5}, LS/h;->a([BII)LS/f;

    move-result-object v4

    .line 310
    iget-object v5, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    invoke-static {v4}, Lcom/google/googlenav/e;->a(LS/f;)Lcom/google/googlenav/e;

    move-result-object v4

    aput-object v4, v5, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 312
    :cond_de
    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/google/googlenav/layer/m;->g:B

    goto :goto_71

    .line 325
    :cond_e3
    iput v6, p0, Lcom/google/googlenav/layer/m;->m:I

    .line 326
    iput v7, p0, Lcom/google/googlenav/layer/m;->n:I

    goto :goto_91
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 234
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;Ljava/lang/String;[LT/f;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[LT/f;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x14

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    .line 244
    const-string v1, ""

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    .line 245
    const-string v1, ""

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    .line 246
    iput v0, p0, Lcom/google/googlenav/layer/m;->h:I

    .line 247
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/googlenav/layer/m;->i:I

    .line 248
    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->j:Z

    .line 249
    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->k:Z

    .line 250
    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->l:Z

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    .line 253
    new-array v1, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 254
    if-eqz p3, :cond_54

    .line 256
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    .line 257
    array-length v1, p3

    new-array v1, v1, [Lcom/google/googlenav/e;

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    .line 258
    :goto_34
    array-length v1, p3

    if-ge v0, v1, :cond_44

    .line 259
    iget-object v1, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    aget-object v2, p3, v0

    invoke-static {v2}, Lcom/google/googlenav/e;->a(LS/f;)Lcom/google/googlenav/e;

    move-result-object v2

    aput-object v2, v1, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 261
    :cond_44
    iput p4, p0, Lcom/google/googlenav/layer/m;->q:I

    .line 262
    iput-byte v3, p0, Lcom/google/googlenav/layer/m;->g:B

    .line 268
    :goto_48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/layer/m;->m:I

    .line 269
    const/16 v0, 0x16

    iput v0, p0, Lcom/google/googlenav/layer/m;->n:I

    .line 271
    iput-wide v4, p0, Lcom/google/googlenav/layer/m;->r:J

    .line 272
    iput-wide v4, p0, Lcom/google/googlenav/layer/m;->s:J

    .line 273
    return-void

    .line 264
    :cond_54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/m;->q:I

    .line 265
    iput-byte v3, p0, Lcom/google/googlenav/layer/m;->g:B

    goto :goto_48
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    const-string v1, "msid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 343
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 344
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 345
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x47

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 347
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x48

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 349
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x49

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x73

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x74

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 356
    :cond_60
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/e;
    .registers 3
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 397
    :cond_b
    const/4 v0, 0x0

    .line 399
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->o:[Lcom/google/googlenav/e;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 552
    if-eqz p1, :cond_9

    invoke-static {p1}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    .line 553
    return-void

    .line 552
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 389
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Z
    .registers 3
    .parameter

    .prologue
    .line 452
    iget v0, p0, Lcom/google/googlenav/layer/m;->m:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/google/googlenav/layer/m;->n:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/googlenav/layer/m;->r()Lcom/google/googlenav/layer/m;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public f()B
    .registers 2

    .prologue
    .line 392
    iget-byte v0, p0, Lcom/google/googlenav/layer/m;->g:B

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Lcom/google/googlenav/layer/m;->q:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Lcom/google/googlenav/layer/m;->h:I

    return v0
.end method

.method public i()J
    .registers 3

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/google/googlenav/layer/m;->r:J

    return-wide v0
.end method

.method public j()J
    .registers 3

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/google/googlenav/layer/m;->s:J

    return-wide v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 444
    iget v0, p0, Lcom/google/googlenav/layer/m;->i:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->l:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->j:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->k:Z

    return v0
.end method

.method public o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 464
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dX;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 466
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 467
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 468
    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 470
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 471
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 473
    :cond_2a
    const/4 v0, 0x4

    iget v3, p0, Lcom/google/googlenav/layer/m;->i:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 474
    const/4 v0, 0x5

    iget v3, p0, Lcom/google/googlenav/layer/m;->h:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 476
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 477
    const/16 v3, 0x3d

    iget v4, p0, Lcom/google/googlenav/layer/m;->m:I

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 478
    const/16 v3, 0x3e

    iget v4, p0, Lcom/google/googlenav/layer/m;->n:I

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 479
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 481
    const/16 v0, 0x8

    iget-wide v3, p0, Lcom/google/googlenav/layer/m;->r:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 482
    const/16 v0, 0x9

    iget-wide v3, p0, Lcom/google/googlenav/layer/m;->s:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 484
    const/16 v0, 0x10

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->k:Z

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 485
    const/16 v0, 0x13

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->j:Z

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 486
    const/16 v0, 0x14

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->l:Z

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 488
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->p:[[B

    if-eqz v0, :cond_87

    move v0, v1

    .line 489
    :goto_76
    iget-object v3, p0, Lcom/google/googlenav/layer/m;->p:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_87

    .line 490
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/googlenav/layer/m;->p:[[B

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 493
    :cond_87
    const/16 v0, 0x15

    iget v3, p0, Lcom/google/googlenav/layer/m;->q:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 495
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_a3

    .line 496
    :goto_92
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v0, v0

    if-ge v1, v0, :cond_a3

    .line 497
    const/16 v0, 0x12

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->f:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 501
    :cond_a3
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 503
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    const-string v1, "msid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 505
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 508
    :cond_bb
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    if-eqz v0, :cond_ca

    .line 509
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    invoke-virtual {v1}, Ln/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 512
    :cond_ca
    return-object v2
.end method

.method public p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public q()Ln/m;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/googlenav/layer/m;->t:Ln/m;

    return-object v0
.end method

.method protected r()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 566
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 567
    :catch_7
    move-exception v0

    .line 568
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
