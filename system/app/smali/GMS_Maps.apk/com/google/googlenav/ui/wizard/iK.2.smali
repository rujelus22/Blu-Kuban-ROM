.class public Lcom/google/googlenav/ui/wizard/iK;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/view/dialog/bH;

.field private b:Lcom/google/googlenav/ui/wizard/iR;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private i:Ljava/lang/String;

.field private j:Lat/B;

.field private k:Lai/a;

.field private l:Lcom/google/googlenav/ui/wizard/iS;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lai/a;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->i:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iK;->k:Lai/a;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iK;)Lcom/google/googlenav/ui/wizard/iR;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iK;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iK;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iK;Ljava/lang/String;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/ui/wizard/iK;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iK;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iK;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0xa

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v3, 0x15

    const/4 v0, 0x1

    .line 218
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    if-eqz v1, :cond_94

    .line 219
    invoke-static {}, Lcom/google/googlenav/friend/af;->s()V

    .line 223
    :goto_e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/bH;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 225
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/bH;->hide()V

    .line 228
    :cond_1f
    new-instance v7, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 229
    const/4 v1, 0x4

    invoke-virtual {v7, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 230
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 231
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 232
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4, p5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 233
    invoke-virtual {v7, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 234
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    if-ne v1, v2, :cond_60

    .line 235
    const/16 v1, 0x10

    invoke-virtual {v7, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 236
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 237
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 238
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 243
    :cond_60
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    if-ne v1, v2, :cond_67

    move v0, v6

    .line 245
    :cond_67
    div-long v1, p2, v8

    long-to-int v1, v1

    div-long v2, p4, v8

    long-to-int v2, v2

    invoke-static {v0, p1, v1, v2}, Lax/a;->a(ILjava/lang/String;II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x167

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 250
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/google/googlenav/ui/wizard/iP;

    invoke-direct {v1, p0, v7}, Lcom/google/googlenav/ui/wizard/iP;-><init>(Lcom/google/googlenav/ui/wizard/iK;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sget-object v2, Lax/I;->d:Lax/I;

    invoke-interface {v0, v8, v1, v2}, Lax/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V

    .line 272
    return-void

    .line 221
    :cond_94
    invoke-static {}, Lcom/google/googlenav/friend/af;->t()V

    goto/16 :goto_e
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 182
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    if-ltz v3, :cond_8

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 188
    :cond_1e
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bH;

    new-instance v2, Lcom/google/googlenav/ui/wizard/iO;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/iO;-><init>(Lcom/google/googlenav/ui/wizard/iK;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/ui/view/dialog/bH;-><init>(Ljava/util/List;Lcom/google/googlenav/ui/view/dialog/bJ;Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->show()V

    .line 200
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    .line 363
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 364
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    .line 365
    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    .line 366
    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    .line 367
    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 368
    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    .line 369
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    .line 374
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->a()V

    .line 375
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iR;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;Z)V

    .line 376
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 391
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 392
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->h()V

    .line 393
    iget v0, p0, Lcom/google/googlenav/ui/wizard/iK;->g:I

    .line 395
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/iK;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 400
    iget v0, p0, Lcom/google/googlenav/ui/wizard/iK;->g:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/iR;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    .line 332
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 333
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    .line 334
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    .line 335
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->j()V

    .line 336
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    if-eqz v0, :cond_b

    .line 115
    const-string v0, "home_speedbump_ack"

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 117
    :cond_b
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    :goto_13
    return-void

    .line 120
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 128
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 133
    :goto_33
    int-to-long v2, v1

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/iK;->a(Ljava/lang/String;JJ)V

    goto :goto_13

    .line 130
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->j:Lat/B;

    invoke-virtual {v0}, Lat/B;->d()I

    move-result v1

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->j:Lat/B;

    invoke-virtual {v0}, Lat/B;->f()I

    move-result v0

    goto :goto_33

    .line 135
    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->k:Lai/a;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/googlenav/ui/wizard/iL;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/iL;-><init>(Lcom/google/googlenav/ui/wizard/iK;)V

    invoke-virtual {v0, p1, v1, v2}, Lai/a;->a(Ljava/lang/String;ILai/c;)V

    goto :goto_13
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/iK;->g:I

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 340
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/iK;->g:I

    .line 341
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->l:Lcom/google/googlenav/ui/wizard/iS;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/iK;->m:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/cj;-><init>(Lcom/google/googlenav/ui/wizard/iK;Lcom/google/googlenav/ui/wizard/iS;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 342
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 343
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->f()V

    .line 344
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->dismiss()V

    .line 353
    :cond_15
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 354
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    .line 355
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->i:Ljava/lang/String;

    .line 356
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->j:Lat/B;

    .line 357
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    .line 358
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->b:Lcom/google/googlenav/ui/wizard/iR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iR;->a()V

    .line 207
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->a()V

    .line 208
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 282
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/iK;->i:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/cj;->a(Ljava/lang/String;)V

    .line 316
    :cond_19
    :goto_19
    return-void

    .line 287
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 288
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->B()Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 290
    :goto_36
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->j:Lat/B;

    .line 291
    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aS;-><init>(Lat/B;I)V

    .line 292
    new-instance v0, Lcom/google/googlenav/ui/wizard/iQ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/iQ;-><init>(Lcom/google/googlenav/ui/wizard/iK;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    .line 313
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    goto :goto_19

    .line 289
    :cond_4e
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public h()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->dismiss()V

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iK;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 387
    :goto_16
    return-void

    .line 385
    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iK;->e()V

    goto :goto_16
.end method
