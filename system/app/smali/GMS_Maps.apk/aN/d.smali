.class public Lan/d;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lat/B;

.field private final b:I

.field private final c:I

.field private final d:Lao/b;

.field private final e:Lar/c;

.field private final f:Lan/h;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Z

.field private final j:J

.field private final k:Lan/f;

.field private final l:Ljava/lang/String;

.field private final m:Lat/B;

.field private final n:Z

.field private final o:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lat/B;IILao/b;Lar/c;Lan/h;Ljava/lang/String;IZLan/f;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V
    .registers 18
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 159
    iput-object p1, p0, Lan/d;->a:Lat/B;

    .line 160
    iput p2, p0, Lan/d;->b:I

    .line 161
    iput p3, p0, Lan/d;->c:I

    .line 162
    iput-object p4, p0, Lan/d;->d:Lao/b;

    .line 163
    iput-object p5, p0, Lan/d;->e:Lar/c;

    .line 164
    iput-object p6, p0, Lan/d;->f:Lan/h;

    .line 165
    iput-object p7, p0, Lan/d;->g:Ljava/lang/String;

    .line 166
    iput p8, p0, Lan/d;->h:I

    .line 167
    iput-boolean p9, p0, Lan/d;->i:Z

    .line 168
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lan/d;->j:J

    .line 169
    iput-object p10, p0, Lan/d;->k:Lan/f;

    .line 170
    iput-object p11, p0, Lan/d;->l:Ljava/lang/String;

    .line 171
    iput-object p12, p0, Lan/d;->m:Lat/B;

    .line 172
    move/from16 v0, p13

    iput-boolean v0, p0, Lan/d;->n:Z

    .line 173
    move-object/from16 v0, p14

    iput-object v0, p0, Lan/d;->o:Ljava/lang/String;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lat/B;IILao/b;Lar/c;Lan/h;Ljava/lang/String;IZLan/f;Ljava/lang/String;Lat/B;ZLjava/lang/String;Lan/e;)V
    .registers 16
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p14}, Lan/d;-><init>(Lat/B;IILao/b;Lar/c;Lan/h;Ljava/lang/String;IZLan/f;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lan/f;
    .registers 4
    .parameter

    .prologue
    .line 131
    new-instance v0, Lan/f;

    invoke-static {}, Lar/c;->d()[Lar/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lan/f;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;Lan/e;)V

    return-object v0
.end method

.method public static a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 739
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v6

    .line 740
    if-eqz v6, :cond_31

    invoke-interface {v6}, Lan/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 741
    :goto_a
    invoke-static {v0}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lan/f;

    move-result-object v2

    .line 743
    const/4 v5, 0x0

    .line 745
    invoke-static {}, Lao/b;->d()Lao/b;

    move-result-object v0

    invoke-static {}, Lar/c;->c()Lar/c;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, p0

    move/from16 v11, p1

    invoke-static/range {v0 .. v14}, Lan/d;->a(Lao/b;Lar/c;Lan/f;IILjava/lang/String;Lan/h;JIIILat/B;ZLjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0

    .line 740
    :cond_31
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Lan/h;JII)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 352
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbf/R;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 353
    if-eqz p0, :cond_4b

    .line 354
    invoke-interface {p0}, Lan/h;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 355
    invoke-interface {p0}, Lan/h;->m()Lan/s;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_4b

    .line 357
    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 358
    const/4 v3, 0x3

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 360
    :cond_27
    const/4 v3, 0x6

    invoke-virtual {v1, v3, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 361
    invoke-virtual {v2}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 362
    const/16 v3, 0xc

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 364
    :cond_3b
    invoke-virtual {v2}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 365
    const/16 v3, 0xd

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 369
    :cond_4b
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbf/P;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 370
    invoke-virtual {v2, v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 371
    invoke-virtual {v2, v5, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 372
    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 373
    if-eqz p0, :cond_6a

    invoke-interface {p0}, Lan/h;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6a

    const/4 v0, 0x0

    .line 376
    :cond_6a
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 378
    return-object v1
.end method

.method private static a(Lao/b;Lar/c;Lan/f;IILjava/lang/String;Lan/h;JIIILat/B;ZLjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 26
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v6, Lbf/aH;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 248
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v7, Lbf/R;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 250
    const/4 v7, 0x1

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/common/Config;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 251
    invoke-static {}, Lan/g;->a()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-static {v7}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 253
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 262
    :cond_28
    invoke-virtual {p0}, Lao/b;->f()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 263
    const/4 v7, 0x6

    invoke-virtual {p0}, Lao/b;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 267
    :cond_36
    invoke-virtual {p1}, Lar/c;->f()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 268
    const/4 v7, 0x7

    invoke-virtual {p1}, Lar/c;->i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 271
    :cond_44
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 280
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v7, Lbf/R;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 285
    const/4 v7, 0x3

    invoke-virtual {v6, v7, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 287
    const/4 v7, 0x2

    if-ne p3, v7, :cond_62

    .line 288
    const/4 v7, 0x4

    invoke-virtual {v6, v7, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 289
    const/4 v7, 0x5

    if-eqz p5, :cond_c2

    :goto_5d
    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 292
    :cond_62
    if-lez p9, :cond_6a

    .line 294
    const/4 v7, 0x6

    move/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 296
    :cond_6a
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    .line 298
    invoke-static/range {v5 .. v10}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILan/h;Lat/B;ZLjava/lang/String;)V

    .line 305
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v7, Lbf/aH;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 308
    invoke-virtual {p0}, Lao/b;->f()Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 309
    const/4 v7, 0x1

    invoke-virtual {p0}, Lao/b;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 313
    :cond_8f
    invoke-virtual {p1}, Lar/c;->f()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 314
    const/4 v7, 0x2

    invoke-virtual {p1}, Lar/c;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 318
    :cond_9d
    move-object/from16 v0, p6

    move-wide/from16 v1, p7

    move/from16 v3, p10

    move/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Lan/d;->a(Lan/h;JII)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 319
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 320
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 322
    if-eqz p2, :cond_c1

    .line 323
    invoke-virtual {p2}, Lan/f;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-static {v5, v6}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 324
    invoke-virtual {p2}, Lan/f;->b()[Lar/c;

    move-result-object v6

    invoke-static {v5, v6}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;)V

    .line 327
    :cond_c1
    return-object v5

    .line 289
    :cond_c2
    const-string p5, ""

    goto :goto_5d
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    .line 498
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v1, v2

    :goto_7
    if-ge v1, v3, :cond_21

    .line 499
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 500
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1d

    .line 506
    :goto_1c
    return-object v0

    .line 498
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 506
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static a(ILan/h;Lan/f;Ljava/lang/String;ILat/B;IZLY/c;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V
    .registers 27
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
    .parameter
    .parameter

    .prologue
    .line 703
    if-nez p5, :cond_3

    .line 728
    :goto_2
    return-void

    .line 707
    :cond_3
    new-instance v1, Lan/e;

    move-object v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move v5, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lan/e;-><init>(Lan/h;Lat/B;IILjava/lang/String;IZLan/f;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V

    .line 726
    new-instance v2, LY/d;

    move-object/from16 v0, p8

    invoke-direct {v2, v0, v1}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 727
    invoke-virtual {v2}, LY/d;->g()V

    goto :goto_2
.end method

.method public static a(Lan/h;Lat/B;ZLjava/lang/String;LY/c;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    if-eqz p0, :cond_25

    .line 637
    invoke-interface {p0}, Lan/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lan/f;

    move-result-object v2

    .line 638
    invoke-interface {p0}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 639
    const/16 v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v5

    :goto_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p4

    move-object v10, p1

    move v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v0 .. v12}, Lan/d;->a(ILan/h;Lan/f;Ljava/lang/String;ILat/B;IZLY/c;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V

    .line 643
    :cond_25
    return-void

    .line 639
    :cond_26
    const/4 v5, 0x0

    goto :goto_18
.end method

.method public static a(Lat/B;ILY/c;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 571
    const/4 v0, 0x7

    move-object v2, v1

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move v7, v4

    move-object v8, p2

    move-object v9, v1

    move-object v10, v1

    move v11, v4

    move-object v12, v1

    invoke-static/range {v0 .. v12}, Lan/d;->a(ILan/h;Lan/f;Ljava/lang/String;ILat/B;IZLY/c;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V

    .line 573
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILan/h;Lat/B;ZLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    .line 457
    :cond_4
    :goto_4
    return-void

    .line 446
    :cond_5
    if-eqz p2, :cond_4

    .line 450
    invoke-interface {p2}, Lan/h;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_4

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 455
    invoke-static {v0, p3, p4, p5}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;ZLjava/lang/String;)V

    .line 456
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_4
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;ZLjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    invoke-virtual {p0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v2

    .line 467
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbf/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 469
    :try_start_f
    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 470
    if-eqz p1, :cond_2f

    .line 471
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbf/P;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 472
    const/4 v4, 0x1

    invoke-virtual {p1}, Lat/B;->d()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 473
    const/4 v4, 0x2

    invoke-virtual {p1}, Lat/B;->f()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 474
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 476
    :cond_2f
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 477
    const/4 v2, 0x3

    invoke-virtual {v3, v2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 479
    :cond_39
    const/4 v2, 0x4

    if-eqz p2, :cond_51

    :goto_3c
    invoke-virtual {v3, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 483
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 485
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(II[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_50} :catch_53

    .line 489
    :goto_50
    return-void

    :cond_51
    move v0, v1

    .line 479
    goto :goto_3c

    .line 486
    :catch_53
    move-exception v0

    goto :goto_50
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 386
    if-eqz p1, :cond_11

    .line 387
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbf/aH;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 389
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 390
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 392
    :cond_11
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lar/c;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 402
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_35

    .line 403
    aget-object v1, p1, v0

    .line 404
    invoke-virtual {v1}, Lar/c;->f()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 405
    invoke-virtual {v1}, Lar/c;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 406
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 409
    invoke-static {p0, v2, v3}, Lan/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 410
    if-eqz v2, :cond_26

    .line 414
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 415
    invoke-virtual {v2, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 402
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    :cond_26
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbf/aH;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 423
    invoke-virtual {v2, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 425
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_23

    .line 429
    :cond_35
    return-void
.end method

.method public static a(Ljava/lang/String;ILat/B;ILY/c;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v12}, Lan/d;->a(ILan/h;Lan/f;Ljava/lang/String;ILat/B;IZLY/c;Ljava/lang/String;Lat/B;ZLjava/lang/String;)V

    .line 590
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 521
    const/16 v0, 0x29

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 20
    .parameter

    .prologue
    .line 179
    new-instance v17, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ek;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 181
    move-object/from16 v0, p0

    iget v2, v0, Lan/d;->c:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8e

    .line 182
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 191
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lan/d;->d:Lao/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lan/d;->e:Lar/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lan/d;->k:Lan/f;

    move-object/from16 v0, p0

    iget v5, v0, Lan/d;->c:I

    move-object/from16 v0, p0

    iget v6, v0, Lan/d;->h:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lan/d;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lan/d;->f:Lan/h;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lan/d;->j:J

    move-object/from16 v0, p0

    iget v11, v0, Lan/d;->b:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lan/d;->a:Lat/B;

    invoke-virtual {v12}, Lat/B;->c()I

    move-result v12

    mul-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    iget-object v13, v0, Lan/d;->a:Lat/B;

    invoke-virtual {v13}, Lat/B;->e()I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    move-object/from16 v0, p0

    iget-object v14, v0, Lan/d;->m:Lat/B;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lan/d;->n:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lan/d;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lan/d;->a(Lao/b;Lar/c;Lan/f;IILjava/lang/String;Lan/h;JIIILat/B;ZLjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 196
    move-object/from16 v0, p0

    iget v3, v0, Lan/d;->c:I

    const/16 v4, 0x81

    if-ne v3, v4, :cond_7e

    .line 197
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/16 v4, 0x12

    move-object/from16 v0, p0

    iget-object v5, v0, Lan/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 201
    :cond_7e
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 203
    check-cast p1, Ljava/io/OutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 204
    return-void

    .line 184
    :cond_8e
    move-object/from16 v0, p0

    iget v2, v0, Lan/d;->c:I

    const/16 v3, 0x81

    if-ne v2, v3, :cond_9f

    .line 185
    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto/16 :goto_18

    .line 188
    :cond_9f
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto/16 :goto_18
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 527
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ek;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 529
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 530
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 532
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 533
    packed-switch v1, :pswitch_data_34

    .line 548
    :cond_1a
    :goto_1a
    return v2

    .line 535
    :pswitch_1b
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 536
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 537
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 538
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lan/g;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 533
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 511
    iget-boolean v0, p0, Lan/d;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocationReport[mapPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->a:Lat/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lan/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lan/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellTowerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->d:Lao/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectedWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->e:Lar/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->f:Lan/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchTerm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lan/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lan/d;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lan/d;->j:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->k:Lan/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/d;->l:Ljava/lang/String;

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
    .line 516
    const/4 v0, 0x0

    return v0
.end method
