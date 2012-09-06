.class public Lcom/google/googlenav/friend/bg;
.super Lac/b;
.source "SourceFile"

# interfaces
.implements Las/i;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Integer;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:J

.field private final h:I

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final r:Lcom/google/googlenav/friend/bh;

.field private s:Z

.field private t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private v:Ljava/util/List;

.field private w:Z

.field private x:I

.field private y:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/friend/bi;)V
    .registers 4
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->w:Z

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->x:I

    .line 188
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->a:I

    .line 189
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->b(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->b:I

    .line 190
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->c(Lcom/google/googlenav/friend/bi;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/bg;->c:Ljava/lang/Integer;

    .line 191
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->d(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->d:I

    .line 192
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->e(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->e:I

    .line 193
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->f(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->f:I

    .line 194
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->g(Lcom/google/googlenav/friend/bi;)Lcom/google/googlenav/friend/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    .line 195
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->h(Lcom/google/googlenav/friend/bi;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/bg;->g:J

    .line 196
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->i(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->h:I

    .line 197
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->j(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->i:Z

    .line 198
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->k(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->j:Z

    .line 199
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->l(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->k:Z

    .line 200
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->m(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->l:Z

    .line 201
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->n(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->m:Z

    .line 202
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->o(Lcom/google/googlenav/friend/bi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->n:Z

    .line 203
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->p(Lcom/google/googlenav/friend/bi;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/bg;->o:I

    .line 204
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->q(Lcom/google/googlenav/friend/bi;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/bg;->q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 205
    invoke-static {p1}, Lcom/google/googlenav/friend/bi;->r(Lcom/google/googlenav/friend/bi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/bg;->p:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 432
    if-nez p0, :cond_5

    .line 433
    const-string v0, "null"

    .line 440
    :goto_4
    return-object v0

    .line 435
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 436
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GoogleNavUserEventProto[eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",status="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 210
    const/16 v0, 0x3f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 247
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gj;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 251
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 252
    iget v2, p0, Lcom/google/googlenav/friend/bg;->a:I

    mul-int/lit8 v2, v2, 0xa

    .line 253
    iget v3, p0, Lcom/google/googlenav/friend/bg;->b:I

    mul-int/lit8 v3, v3, 0xa

    .line 254
    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 255
    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 257
    iget-object v4, p0, Lcom/google/googlenav/friend/bg;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_2c

    .line 258
    iget-object v4, p0, Lcom/google/googlenav/friend/bg;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v7, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 260
    :cond_2c
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 262
    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->p:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 263
    const/4 v1, 0x4

    iget-object v4, p0, Lcom/google/googlenav/friend/bg;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 267
    :cond_39
    iget v1, p0, Lcom/google/googlenav/friend/bg;->d:I

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 270
    iget v1, p0, Lcom/google/googlenav/friend/bg;->e:I

    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 273
    iget v1, p0, Lcom/google/googlenav/friend/bg;->f:I

    const v4, 0x1869f

    if-eq v1, v4, :cond_56

    iget v1, p0, Lcom/google/googlenav/friend/bg;->f:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_56

    .line 275
    const/16 v1, 0xe

    iget v4, p0, Lcom/google/googlenav/friend/bg;->f:I

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 279
    :cond_56
    const/4 v1, 0x5

    iget v4, p0, Lcom/google/googlenav/friend/bg;->h:I

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 282
    const/4 v1, 0x6

    iget-boolean v4, p0, Lcom/google/googlenav/friend/bg;->i:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 285
    const/4 v1, 0x7

    iget-boolean v4, p0, Lcom/google/googlenav/friend/bg;->j:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 288
    const/16 v1, 0x9

    iget-boolean v4, p0, Lcom/google/googlenav/friend/bg;->k:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 292
    const/16 v1, 0xb

    iget-boolean v4, p0, Lcom/google/googlenav/friend/bg;->l:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 294
    const/16 v1, 0xf

    iget-boolean v4, p0, Lcom/google/googlenav/friend/bg;->m:Z

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 298
    const/16 v1, 0xa

    iget v4, p0, Lcom/google/googlenav/friend/bg;->o:I

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 301
    const/16 v1, 0x8

    invoke-static {v2, v3}, Lan/d;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 304
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/googlenav/friend/bg;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 309
    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_9f

    .line 310
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlenav/friend/bg;->q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 321
    :cond_9f
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 322
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/google/googlenav/friend/bg;->w:Z

    .line 223
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 327
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gj;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 329
    iget-object v2, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2, v1, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    .line 333
    iget-object v3, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 335
    invoke-static {v3, v1, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 338
    packed-switch v2, :pswitch_data_82

    .line 361
    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->s:Z

    .line 362
    iget v2, p0, Lcom/google/googlenav/friend/bg;->x:I

    if-lez v2, :cond_28

    move v0, v1

    .line 363
    :cond_28
    iget v2, p0, Lcom/google/googlenav/friend/bg;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlenav/friend/bg;->x:I

    .line 364
    iget-boolean v2, p0, Lcom/google/googlenav/friend/bg;->n:Z

    if-eqz v2, :cond_3f

    if-nez v0, :cond_3f

    if-lez v3, :cond_3f

    .line 366
    iput-boolean v1, p0, Lcom/google/googlenav/friend/bg;->y:Z

    .line 367
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v2

    invoke-virtual {v2, p0}, Las/f;->a(Las/i;)V

    .line 369
    :cond_3f
    if-nez v0, :cond_48

    .line 372
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Las/f;->a(I)V

    .line 376
    :cond_48
    :goto_48
    return v1

    .line 341
    :pswitch_49
    iget-object v2, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/friend/bg;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 345
    iget-object v2, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/googlenav/friend/bg;->v:Ljava/util/List;

    .line 348
    :goto_5e
    if-ge v0, v2, :cond_7f

    .line 349
    iget-object v3, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 350
    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 351
    const/16 v4, 0x78

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 353
    :cond_77
    iget-object v4, p0, Lcom/google/googlenav/friend/bg;->v:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 356
    :cond_7f
    iput-boolean v1, p0, Lcom/google/googlenav/friend/bg;->s:Z

    goto :goto_48

    .line 338
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_49
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/googlenav/friend/bg;->w:Z

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bg;->n()Lcom/google/googlenav/friend/bj;

    move-result-object v0

    return-object v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 7

    .prologue
    .line 389
    invoke-super {p0}, Lac/b;->l_()V

    .line 390
    iget-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    if-eqz v0, :cond_18

    .line 392
    iget-boolean v0, p0, Lcom/google/googlenav/friend/bg;->s:Z

    if-eqz v0, :cond_19

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v2, p0, Lcom/google/googlenav/friend/bg;->v:Ljava/util/List;

    iget-object v3, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-wide v4, p0, Lcom/google/googlenav/friend/bg;->g:J

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/friend/bh;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    .line 403
    :cond_18
    :goto_18
    return-void

    .line 396
    :cond_19
    iget-boolean v0, p0, Lcom/google/googlenav/friend/bg;->y:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/google/googlenav/friend/bg;->x:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    .line 400
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    iget-wide v1, p0, Lcom/google/googlenav/friend/bg;->g:J

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/friend/bh;->a(J)V

    goto :goto_18
.end method

.method public m_()V
    .registers 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    if-eqz v0, :cond_b

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/friend/bg;->r:Lcom/google/googlenav/friend/bh;

    iget-wide v1, p0, Lcom/google/googlenav/friend/bg;->g:J

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/friend/bh;->a(J)V

    .line 385
    :cond_b
    return-void
.end method

.method public n()Lcom/google/googlenav/friend/bj;
    .registers 4

    .prologue
    .line 407
    new-instance v0, Lcom/google/googlenav/friend/bj;

    invoke-direct {v0}, Lcom/google/googlenav/friend/bj;-><init>()V

    .line 408
    iget-boolean v1, p0, Lcom/google/googlenav/friend/bg;->s:Z

    iput-boolean v1, v0, Lcom/google/googlenav/friend/bj;->a:Z

    .line 409
    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v1, v0, Lcom/google/googlenav/friend/bj;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 410
    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->v:Ljava/util/List;

    iput-object v1, v0, Lcom/google/googlenav/friend/bj;->c:Ljava/util/List;

    .line 411
    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v1, v0, Lcom/google/googlenav/friend/bj;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 412
    iget-wide v1, p0, Lcom/google/googlenav/friend/bg;->g:J

    iput-wide v1, v0, Lcom/google/googlenav/friend/bj;->e:J

    .line 413
    return-object v0
.end method

.method public o()V
    .registers 2

    .prologue
    .line 645
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Las/f;->b(Las/i;)V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/bg;->u:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bg;->s:Z

    .line 650
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lac/h;->c(Lac/g;)V

    .line 651
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 655
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Las/f;->b(Las/i;)V

    .line 656
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bg;->m_()V

    .line 657
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapToPlaceRequest[selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->a:I

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->b:I

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->d:I

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->e:I

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gaiaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/friend/bg;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxNumResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldReverseGeoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/friend/bg;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isCheckinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/friend/bg;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldRequestHotpotStatistics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/friend/bg;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldBePersonalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/friend/bg;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/friend/bg;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v1}, Lcom/google/googlenav/friend/bg;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/bg;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method
