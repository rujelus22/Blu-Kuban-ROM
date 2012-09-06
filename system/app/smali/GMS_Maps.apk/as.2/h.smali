.class public LaS/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private h:LaS/g;

.field private i:LaS/f;

.field private j:LaS/i;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:LaS/h;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaS/h;->f:Ljava/util/List;

    .line 226
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaS/h;->g:Ljava/util/List;

    .line 227
    sget-object v0, LaS/i;->a:LaS/i;

    iput-object v0, p0, LaS/h;->j:LaS/i;

    .line 228
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/h;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 337
    if-nez p0, :cond_8

    .line 338
    const/4 v0, 0x0

    .line 397
    :goto_7
    return-object v0

    .line 340
    :cond_8
    new-instance v0, LaS/h;

    invoke-direct {v0}, LaS/h;-><init>()V

    .line 342
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LaS/h;->a:Ljava/lang/String;

    .line 344
    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LaS/h;->b:Ljava/lang/String;

    .line 346
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LaS/h;->e:Ljava/lang/String;

    .line 348
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v2

    iput v2, v0, LaS/h;->c:I

    .line 351
    sget-object v2, LaS/i;->a:LaS/i;

    iput-object v2, v0, LaS/h;->j:LaS/i;

    .line 352
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v2

    .line 354
    if-ne v2, v3, :cond_38

    .line 355
    sget-object v2, LaS/i;->b:LaS/i;

    iput-object v2, v0, LaS/h;->j:LaS/i;

    .line 358
    :cond_38
    iget-object v2, v0, LaS/h;->e:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 359
    const-string v2, "uddq_experiment"

    iput-object v2, v0, LaS/h;->e:Ljava/lang/String;

    .line 362
    :cond_44
    const/4 v2, 0x7

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LaS/h;->d:Ljava/lang/String;

    .line 364
    iget-object v2, v0, LaS/h;->d:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 367
    const-string v2, "Thank you for your feedback."

    iput-object v2, v0, LaS/h;->d:Ljava/lang/String;

    .line 370
    :cond_57
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v1

    .line 371
    :goto_5c
    if-ge v2, v3, :cond_6e

    .line 372
    invoke-virtual {p0, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, LaS/c;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/c;

    move-result-object v4

    .line 374
    iget-object v5, v0, LaS/h;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 377
    :cond_6e
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 378
    :goto_72
    if-ge v1, v2, :cond_86

    .line 379
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, LaS/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/d;

    move-result-object v3

    .line 381
    if-eqz v3, :cond_83

    .line 382
    iget-object v4, v0, LaS/h;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 386
    :cond_86
    const/16 v1, 0x9

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaS/h;->k:Ljava/lang/String;

    .line 388
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaS/h;->l:Ljava/lang/String;

    .line 390
    const/16 v1, 0xb

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaS/h;->m:Ljava/lang/String;

    .line 392
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, LaS/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/h;

    move-result-object v1

    iput-object v1, v0, LaS/h;->n:LaS/h;

    .line 395
    const/16 v1, 0xd

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaS/h;->o:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method static synthetic a(LaS/h;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, LaS/h;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, LaS/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(LaS/f;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, LaS/h;->i:LaS/f;

    .line 293
    return-void
.end method

.method public a(LaS/g;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, LaS/h;->h:LaS/g;

    .line 281
    return-void
.end method

.method public a(LaS/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, LaS/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/d;

    .line 264
    iget-object v0, v0, LaS/d;->a:LaS/e;

    if-ne v0, p1, :cond_6

    .line 265
    const/4 v0, 0x1

    .line 268
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, LaS/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, LaS/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, LaS/h;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, LaS/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, LaS/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, LaS/h;->h:LaS/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()LaS/g;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, LaS/h;->h:LaS/g;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, LaS/h;->i:LaS/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()LaS/f;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, LaS/h;->i:LaS/f;

    return-object v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 296
    sget-object v0, LaS/i;->b:LaS/i;

    iget-object v1, p0, LaS/h;->j:LaS/i;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, LaS/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, LaS/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, LaS/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, LaS/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()LaS/h;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, LaS/h;->n:LaS/h;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, LaS/h;->o:Ljava/lang/String;

    return-object v0
.end method
