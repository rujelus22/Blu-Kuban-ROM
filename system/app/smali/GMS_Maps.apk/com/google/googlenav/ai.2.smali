.class public Lcom/google/googlenav/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/E;


# static fields
.field public static final a:Lcom/google/common/base/D;

.field private static final c:Lcom/google/googlenav/au;

.field private static final d:[Lcom/google/googlenav/ap;

.field private static final e:[Lcom/google/googlenav/aq;


# instance fields
.field private A:Z

.field private B:Lcom/google/googlenav/av;

.field private C:Z

.field private D:Z

.field private E:Lcom/google/googlenav/ax;

.field private F:Lcom/google/googlenav/ax;

.field private G:Lcom/google/googlenav/ay;

.field private H:[Lcom/google/googlenav/aw;

.field private I:Z

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/lang/String;

.field private L:LaS/o;

.field private final M:Ljava/lang/Object;

.field private N:Lcom/google/googlenav/cy;

.field private O:Lcom/google/googlenav/ar;

.field private P:Lcom/google/googlenav/ao;

.field private Q:Lcom/google/googlenav/cy;

.field protected b:Lcom/google/googlenav/cv;

.field private final f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private g:Ljava/util/List;

.field private h:Lat/g;

.field private i:Lat/g;

.field private j:Ljava/lang/String;

.field private k:B

.field private l:I

.field private m:Z

.field private n:Ljava/util/Map;

.field private o:Lcom/google/googlenav/e;

.field private p:Z

.field private q:[Lcom/google/googlenav/ai;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcom/google/googlenav/ac;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Ljava/lang/ref/SoftReference;

.field private final y:Ljava/lang/Object;

.field private final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 165
    new-instance v0, Lcom/google/googlenav/au;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/au;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, Lcom/google/googlenav/ai;->c:Lcom/google/googlenav/au;

    .line 168
    new-array v0, v1, [Lcom/google/googlenav/ap;

    sput-object v0, Lcom/google/googlenav/ai;->d:[Lcom/google/googlenav/ap;

    .line 170
    new-array v0, v1, [Lcom/google/googlenav/aq;

    sput-object v0, Lcom/google/googlenav/ai;->e:[Lcom/google/googlenav/aq;

    .line 184
    new-instance v0, Lcom/google/googlenav/aj;

    invoke-direct {v0}, Lcom/google/googlenav/aj;-><init>()V

    sput-object v0, Lcom/google/googlenav/ai;->a:Lcom/google/common/base/D;

    return-void
.end method

.method protected constructor <init>(Lat/g;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 573
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;ILjava/util/List;)V

    .line 574
    return-void
.end method

.method public constructor <init>(Lat/g;Ljava/lang/String;B)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 491
    return-void
.end method

.method protected constructor <init>(Lat/g;Ljava/lang/String;ILjava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 233
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->m:Z

    .line 236
    iput-object v1, p0, Lcom/google/googlenav/ai;->n:Ljava/util/Map;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->p:Z

    .line 266
    iput-object v1, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    .line 272
    iput-object v1, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->y:Ljava/lang/Object;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    .line 310
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->A:Z

    .line 326
    sget-object v0, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    iput-object v0, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    .line 333
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->C:Z

    .line 339
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->D:Z

    .line 371
    iput-object v1, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 382
    iput-object v1, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 388
    iput-object v1, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->M:Ljava/lang/Object;

    .line 394
    iput-object v1, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    .line 399
    iput-object v1, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    .line 404
    iput-object v1, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    .line 581
    invoke-static {p4}, Ln/B;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->g:Ljava/util/List;

    .line 582
    iput-object p1, p0, Lcom/google/googlenav/ai;->h:Lat/g;

    .line 583
    iput-object p2, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 585
    iput-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 586
    iput-byte v2, p0, Lcom/google/googlenav/ai;->k:B

    .line 587
    iput p3, p0, Lcom/google/googlenav/ai;->l:I

    .line 588
    return-void
.end method

.method public constructor <init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 497
    return-void
.end method

.method public constructor <init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
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
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->m:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->n:Ljava/util/Map;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->p:Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->y:Ljava/lang/Object;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->A:Z

    .line 326
    sget-object v0, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    iput-object v0, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->C:Z

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->D:Z

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->M:Ljava/lang/Object;

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    .line 503
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 505
    invoke-direct {p0, p2}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 509
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ai;->c(Lat/g;)V

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-direct {p0, p3}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-direct {p0, p4}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-direct {p0, p5}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 515
    iput-byte p6, p0, Lcom/google/googlenav/ai;->k:B

    .line 517
    invoke-static {p7}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 518
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 519
    const/16 v1, 0x13

    invoke-virtual {v0, v1, p7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 521
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 524
    :cond_a0
    invoke-static {p8}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 525
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 527
    :cond_ad
    invoke-static {p9}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 531
    :cond_ba
    packed-switch p6, :pswitch_data_11a

    .line 555
    :pswitch_bd
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    .line 557
    :goto_c0
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/ai;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 558
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x16

    if-eqz p6, :cond_118

    const/4 v0, 0x1

    :goto_cf
    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 560
    const-wide/16 v0, -0x1

    cmp-long v0, p10, v0

    if-eqz v0, :cond_df

    .line 561
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p10, p11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 563
    :cond_df
    new-instance v0, Lcom/google/googlenav/ax;

    invoke-direct {v0}, Lcom/google/googlenav/ax;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->E:Lcom/google/googlenav/ax;

    .line 564
    new-instance v0, Lcom/google/googlenav/ax;

    invoke-direct {v0}, Lcom/google/googlenav/ax;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->F:Lcom/google/googlenav/ax;

    .line 565
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->g:Ljava/util/List;

    .line 566
    return-void

    .line 533
    :pswitch_f4
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 536
    :pswitch_f8
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 539
    :pswitch_fc
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 542
    :pswitch_100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    .line 543
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_c0

    .line 546
    :pswitch_10c
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 549
    :pswitch_110
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 552
    :pswitch_114
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    goto :goto_c0

    .line 558
    :cond_118
    const/4 v0, 0x0

    goto :goto_cf

    .line 531
    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_10c
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_f8
        :pswitch_110
        :pswitch_f4
        :pswitch_bd
        :pswitch_114
        :pswitch_100
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 233
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->m:Z

    .line 236
    iput-object v1, p0, Lcom/google/googlenav/ai;->n:Ljava/util/Map;

    .line 245
    iput-boolean v3, p0, Lcom/google/googlenav/ai;->p:Z

    .line 266
    iput-object v1, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    .line 272
    iput-object v1, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->y:Ljava/lang/Object;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    .line 310
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->A:Z

    .line 326
    sget-object v0, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    iput-object v0, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    .line 333
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->C:Z

    .line 339
    iput-boolean v2, p0, Lcom/google/googlenav/ai;->D:Z

    .line 371
    iput-object v1, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 382
    iput-object v1, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 388
    iput-object v1, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->M:Ljava/lang/Object;

    .line 394
    iput-object v1, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    .line 399
    iput-object v1, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    .line 404
    iput-object v1, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    .line 422
    iput-object p1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 423
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ai;->w:J

    .line 426
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->h:Lat/g;

    .line 428
    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 430
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ai;->l:I

    .line 432
    const/16 v0, 0x90

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    .line 435
    const/16 v0, 0x8d

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 437
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 438
    iput-byte v2, p0, Lcom/google/googlenav/ai;->k:B

    .line 474
    :goto_86
    iget-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    if-eq v0, v5, :cond_8d

    .line 475
    invoke-direct {p0}, Lcom/google/googlenav/ai;->i()V

    .line 479
    :cond_8d
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bD()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ai;->s:I

    .line 480
    new-instance v0, Lcom/google/googlenav/ax;

    invoke-direct {v0}, Lcom/google/googlenav/ax;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->E:Lcom/google/googlenav/ax;

    .line 481
    new-instance v0, Lcom/google/googlenav/ax;

    invoke-direct {v0}, Lcom/google/googlenav/ax;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ai;->F:Lcom/google/googlenav/ax;

    .line 484
    const/16 v0, 0xa9

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 485
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ln/B;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->g:Ljava/util/List;

    .line 486
    return-void

    .line 440
    :cond_b2
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    packed-switch v0, :pswitch_data_de

    .line 467
    iput-byte v3, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 442
    :pswitch_ba
    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 445
    :pswitch_bf
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 448
    :pswitch_c4
    invoke-static {p1}, Lcom/google/googlenav/ai;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 449
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 451
    :cond_cf
    iput-byte v3, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 455
    :pswitch_d2
    iput-byte v4, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 459
    :pswitch_d5
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 464
    :pswitch_da
    iput-byte v5, p0, Lcom/google/googlenav/ai;->k:B

    goto :goto_86

    .line 440
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_bf
        :pswitch_d5
        :pswitch_ba
        :pswitch_d2
        :pswitch_d5
        :pswitch_da
    .end packed-switch
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 596
    new-instance v0, Lcom/google/googlenav/ai;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/googlenav/ai;
    .registers 3
    .parameter

    .prologue
    .line 604
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 606
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 607
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 608
    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lat/g;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 649
    if-nez p0, :cond_4

    .line 650
    const/4 v0, 0x0

    .line 689
    :goto_3
    return-object v0

    .line 653
    :cond_4
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 656
    :try_start_b
    invoke-interface {p0}, Lat/g;->a()I

    move-result v1

    .line 657
    packed-switch v1, :pswitch_data_5c

    goto :goto_3

    .line 659
    :pswitch_13
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 661
    check-cast p0, Lat/B;

    invoke-static {p0}, Lat/C;->b(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 663
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_23

    goto :goto_3

    .line 685
    :catch_23
    move-exception v1

    .line 686
    const-string v2, "PROTO"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 666
    :pswitch_2a
    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_2c
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 668
    check-cast p0, Lat/B;

    invoke-static {p0}, Lat/C;->a(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 670
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_3

    .line 673
    :pswitch_3b
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 675
    check-cast p0, Lat/M;

    invoke-virtual {p0}, Lat/M;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 676
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_3

    .line 679
    :pswitch_4b
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 681
    check-cast p0, Lat/N;

    invoke-virtual {p0}, Lat/N;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 682
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5a} :catch_23

    goto :goto_3

    .line 657
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3b
        :pswitch_4b
        :pswitch_2a
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2514
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2515
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2516
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2517
    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 2671
    invoke-direct {p0, p1}, Lcom/google/googlenav/ai;->b(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2672
    if-eqz v1, :cond_13

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2673
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2681
    :cond_12
    :goto_12
    return-object v0

    .line 2676
    :cond_13
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 2679
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 779
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method private a(Ljava/util/Set;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3157
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3159
    invoke-static {v0}, Lcom/google/googlenav/aV;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 3160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 3161
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3163
    :cond_12
    return-void
.end method

.method public static a(Lcom/google/googlenav/au;)[Lcom/google/googlenav/aw;
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 970
    if-nez p0, :cond_7

    .line 997
    :cond_6
    :goto_6
    return-object v0

    .line 974
    :cond_7
    sget-object v1, Lbm/aP;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 975
    if-eqz v2, :cond_6

    .line 979
    invoke-virtual {v2, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 981
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 982
    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_4e

    .line 983
    invoke-virtual {v2, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 984
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 985
    invoke-static {v0, v10}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_32
    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 990
    invoke-static {v5, v10, v9}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v5

    .line 993
    if-eqz v7, :cond_44

    .line 994
    new-instance v8, Lcom/google/googlenav/aw;

    invoke-direct {v8, v7, v0, v6, v5}, Lcom/google/googlenav/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 986
    :cond_48
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 997
    :cond_4e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/aw;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/aw;

    goto :goto_6
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/g;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 616
    if-nez p0, :cond_4

    .line 643
    :goto_3
    return-object v0

    .line 621
    :cond_4
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 622
    packed-switch v1, :pswitch_data_50

    .line 639
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported Geometry"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_14

    .line 641
    :catch_14
    move-exception v1

    .line 642
    const-string v2, "PROTO"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 624
    :pswitch_1b
    const/4 v1, 0x2

    :try_start_1c
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/C;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3

    .line 627
    :pswitch_25
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/C;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3

    .line 630
    :pswitch_30
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/M;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/M;

    move-result-object v0

    goto :goto_3

    .line 633
    :pswitch_3a
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/N;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/N;

    move-result-object v0

    goto :goto_3

    .line 636
    :pswitch_44
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/C;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_4d} :catch_14

    move-result-object v0

    goto :goto_3

    .line 622
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_25
    .end packed-switch
.end method

.method private b(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 2687
    const/16 v0, 0x20

    sget-object v1, Lbm/C;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2689
    if-eqz v2, :cond_28

    .line 2690
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 2691
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_28

    .line 2692
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2693
    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    if-ne v4, p1, :cond_24

    .line 2698
    :goto_23
    return-object v0

    .line 2691
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 2698
    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 4350
    if-nez p0, :cond_6

    .line 4351
    const-string v0, ""

    .line 4362
    :cond_5
    :goto_5
    return-object v0

    .line 4353
    :cond_6
    const-string v0, "cid="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4354
    if-eq v0, v2, :cond_22

    .line 4355
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4356
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4357
    if-eq v1, v2, :cond_5

    .line 4358
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 4362
    :cond_22
    const-string v0, ""

    goto :goto_5
.end method

.method private c(I)Lcom/google/googlenav/ui/bx;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x6

    .line 3246
    invoke-direct {p0, p1}, Lcom/google/googlenav/ai;->b(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3247
    if-eqz v0, :cond_20

    .line 3248
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-lez v2, :cond_21

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    .line 3250
    :goto_13
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3251
    new-instance v1, Lcom/google/googlenav/ui/bx;

    sget v2, Lcom/google/googlenav/ui/bn;->bz:I

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 3254
    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    .line 3248
    goto :goto_13
.end method

.method public static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 2382
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 2383
    if-nez p0, :cond_7

    .line 2395
    :cond_6
    return-object v0

    .line 2386
    :cond_7
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2388
    array-length v3, v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    .line 2389
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 2391
    if-eqz v4, :cond_1c

    .line 2392
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2388
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method protected static g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 2738
    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ao()[B

    move-result-object v0

    .line 1421
    if-eqz v0, :cond_20

    .line 1422
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    .line 1423
    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LS/h;->a([BII)LS/f;

    move-result-object v0

    .line 1424
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ah()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1425
    invoke-static {v0}, Lcom/google/googlenav/e;->b(LS/f;)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    .line 1430
    :cond_20
    :goto_20
    return-void

    .line 1427
    :cond_21
    invoke-static {v0}, Lcom/google/googlenav/e;->c(LS/f;)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    goto :goto_20
.end method

.method private static i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 2703
    if-eqz p0, :cond_8

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 5
    .parameter

    .prologue
    .line 2708
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private j()[Lcom/google/googlenav/ap;
    .registers 12

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 1444
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v3, 0x97

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1446
    if-nez v5, :cond_10

    .line 1447
    sget-object v0, Lcom/google/googlenav/ai;->d:[Lcom/google/googlenav/ap;

    .line 1464
    :goto_f
    return-object v0

    .line 1450
    :cond_10
    invoke-virtual {v5, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 1451
    new-array v3, v6, [Lcom/google/googlenav/ap;

    move v4, v2

    .line 1452
    :goto_17
    if-ge v4, v6, :cond_3c

    .line 1453
    invoke-virtual {v5, v10, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1454
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1456
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1458
    if-eqz v0, :cond_3e

    const-string v8, "http://www.google.com/streetview"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    .line 1462
    :goto_30
    new-instance v8, Lcom/google/googlenav/ap;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v0, v9}, Lcom/google/googlenav/ap;-><init>(Ljava/lang/String;I[B)V

    aput-object v8, v3, v4

    .line 1452
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17

    :cond_3c
    move-object v0, v3

    .line 1464
    goto :goto_f

    :cond_3e
    move v0, v2

    goto :goto_30
.end method

.method private k()Lcom/google/googlenav/ap;
    .registers 6

    .prologue
    .line 1568
    invoke-direct {p0}, Lcom/google/googlenav/ai;->j()[Lcom/google/googlenav/ap;

    move-result-object v2

    .line 1569
    const/4 v0, 0x0

    :goto_5
    array-length v1, v2

    if-ge v0, v1, :cond_1c

    .line 1570
    aget-object v1, v2, v0

    .line 1571
    invoke-virtual {v1}, Lcom/google/googlenav/ap;->b()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    .line 1569
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1574
    :cond_14
    invoke-virtual {v1}, Lcom/google/googlenav/ap;->a()Ljava/lang/String;

    move-result-object v3

    .line 1575
    if-eqz v3, :cond_11

    move-object v0, v1

    .line 1579
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public static l(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2598
    if-gtz p0, :cond_5

    .line 2599
    const-string v0, ""

    .line 2615
    :goto_4
    return-object v0

    .line 2602
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2604
    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x5

    if-ge v0, v2, :cond_30

    .line 2605
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2606
    const/16 v2, 0x2ee

    if-lt p0, v2, :cond_20

    .line 2607
    sget-char v2, Lcom/google/googlenav/ui/bn;->m:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2613
    :goto_1b
    add-int/lit16 p0, p0, -0x3e8

    .line 2604
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2608
    :cond_20
    const/16 v2, 0xfa

    if-lt p0, v2, :cond_2a

    .line 2609
    sget-char v2, Lcom/google/googlenav/ui/bn;->n:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2611
    :cond_2a
    sget-char v2, Lcom/google/googlenav/ui/bn;->o:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2615
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static l(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 2207
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ".google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1b

    const-string v0, "/gmf/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/16 v3, 0x5e

    const/16 v2, 0x5a

    const/4 v0, 0x0

    .line 2132
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2134
    :goto_17
    if-eqz v1, :cond_23

    .line 2135
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2138
    :cond_23
    return-object v0

    :cond_24
    move-object v1, v0

    .line 2132
    goto :goto_17
.end method

.method private n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x5a

    .line 2150
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_8

    .line 2157
    :goto_7
    return-object v0

    .line 2153
    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2154
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2155
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2157
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7
.end method

.method private o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x5e

    .line 2165
    invoke-direct {p0}, Lcom/google/googlenav/ai;->n()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2166
    if-nez v1, :cond_a

    .line 2174
    :goto_9
    return-object v0

    .line 2169
    :cond_a
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2170
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2171
    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2174
    :cond_18
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_9
.end method

.method private p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    const/16 v1, 0x15

    .line 2295
    sget-object v0, Lbm/i;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2297
    if-nez v0, :cond_10

    .line 2298
    sget-object v0, Lbm/i;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2301
    :cond_10
    return-object v0
.end method

.method static synthetic p(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/google/googlenav/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/google/googlenav/ar;
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 4251
    const/16 v2, 0x2d

    sget-object v3, Lbm/W;->a:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 4255
    if-eqz v2, :cond_15

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-nez v3, :cond_16

    .line 4322
    :cond_15
    :goto_15
    return-object v0

    .line 4263
    :cond_16
    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 4266
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 4267
    if-eqz v2, :cond_15

    .line 4271
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4272
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4276
    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    move v2, v1

    .line 4279
    :goto_30
    if-ge v2, v5, :cond_15

    .line 4280
    invoke-virtual {v3, v8, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 4281
    invoke-virtual {v1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    if-ne v6, v9, :cond_48

    .line 4284
    invoke-virtual {v1, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-virtual {v1, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    .line 4287
    :goto_46
    if-nez v1, :cond_4e

    .line 4279
    :cond_48
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_30

    :cond_4c
    move-object v1, v0

    .line 4284
    goto :goto_46

    .line 4291
    :cond_4e
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v7, Lbm/bk;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 4293
    :try_start_55
    invoke-virtual {v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_74

    .line 4303
    :goto_58
    if-eqz v6, :cond_48

    .line 4307
    invoke-static {v6, v8}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 4309
    if-eqz v6, :cond_48

    .line 4313
    new-instance v1, Lcom/google/googlenav/ar;

    invoke-direct {v1, v6}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 4314
    invoke-virtual {v1}, Lcom/google/googlenav/ar;->d()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 4315
    invoke-static {v4}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4316
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ar;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 4317
    goto :goto_15

    .line 4294
    :catch_74
    move-exception v1

    .line 4295
    const-string v7, "PLACE_PAGE-Placemark"

    invoke-static {v7, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method

.method private r()Lcom/google/googlenav/ao;
    .registers 3

    .prologue
    .line 4339
    const/16 v0, 0x50

    sget-object v1, Lbm/X;->c:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 4342
    if-nez v1, :cond_c

    .line 4343
    const/4 v0, 0x0

    .line 4346
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/googlenav/ao;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ao;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_b
.end method


# virtual methods
.method public A()[Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    return-object v0
.end method

.method public C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public D()Lat/g;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/googlenav/ai;->h:Lat/g;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 4

    .prologue
    .line 819
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 4

    .prologue
    .line 824
    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 3

    .prologue
    .line 829
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/d;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Z
    .registers 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public L()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 884
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x76

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    if-lez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public M()Lcom/google/googlenav/aq;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 893
    const/16 v0, 0xe

    sget-object v2, Lbm/aa;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 895
    if-nez v0, :cond_c

    .line 901
    :goto_b
    return-object v1

    .line 899
    :cond_c
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aq;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/aq;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->a()[Lcom/google/googlenav/an;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->a()[Lcom/google/googlenav/an;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_26

    :goto_24
    move-object v1, v0

    goto :goto_b

    :cond_26
    move-object v0, v1

    goto :goto_24
.end method

.method public N()I
    .registers 3

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->M()Lcom/google/googlenav/aq;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_e

    .line 916
    invoke-virtual {v1}, Lcom/google/googlenav/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 919
    :cond_e
    :goto_e
    return v0

    .line 916
    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public O()Ljava/lang/String;
    .registers 3

    .prologue
    .line 926
    const/16 v0, 0x11

    sget-object v1, Lbm/aP;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 928
    if-nez v0, :cond_c

    .line 929
    const/4 v0, 0x0

    .line 935
    :goto_b
    return-object v0

    .line 932
    :cond_c
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public P()[Lcom/google/googlenav/aw;
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/googlenav/ai;->H:[Lcom/google/googlenav/aw;

    if-nez v0, :cond_10

    .line 943
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->i(I)Lcom/google/googlenav/au;

    move-result-object v0

    .line 944
    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/au;)[Lcom/google/googlenav/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->H:[Lcom/google/googlenav/aw;

    .line 946
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ai;->H:[Lcom/google/googlenav/aw;

    return-object v0
.end method

.method public Q()Z
    .registers 2

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/google/googlenav/ai;->I:Z

    return v0
.end method

.method public R()Ljava/util/Vector;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1145
    const/16 v1, 0x24

    sget-object v2, Lbm/q;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1146
    if-nez v2, :cond_11

    .line 1154
    :cond_10
    return-object v0

    .line 1149
    :cond_11
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 1150
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_10

    .line 1151
    invoke-virtual {v2, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 1152
    new-instance v5, Lcom/google/googlenav/al;

    invoke-direct {v5, v4}, Lcom/google/googlenav/al;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public S()Ljava/util/Vector;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1161
    const/16 v0, 0x33

    sget-object v1, Lbm/ae;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1163
    if-nez v2, :cond_d

    .line 1164
    const/4 v0, 0x0

    .line 1172
    :cond_c
    return-object v0

    .line 1166
    :cond_d
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1167
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 1168
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_c

    .line 1169
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 1170
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public T()I
    .registers 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method public U()Ljava/util/List;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1184
    const/16 v0, 0x31

    sget-object v1, Lbm/m;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1186
    if-nez v2, :cond_d

    .line 1187
    const/4 v0, 0x0

    .line 1194
    :cond_c
    return-object v0

    .line 1189
    :cond_d
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1190
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 1191
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_c

    .line 1192
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public V()J
    .registers 5

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x77

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public W()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x94

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1270
    iget v1, p0, Lcom/google/googlenav/ai;->l:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public Z()Z
    .registers 2

    .prologue
    .line 1274
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()Lat/B;
    .registers 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    .line 811
    if-nez v0, :cond_8

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lat/g;->b()Lat/B;

    move-result-object v0

    goto :goto_7
.end method

.method public a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ai;->i(I)Lcom/google/googlenav/au;

    move-result-object v0

    .line 1134
    if-nez v0, :cond_8

    .line 1135
    const/4 v0, 0x0

    .line 1137
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p2}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_7
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 1228
    iput-byte p1, p0, Lcom/google/googlenav/ai;->k:B

    .line 1229
    return-void
.end method

.method public a(Lcom/google/googlenav/av;)V
    .registers 2
    .parameter

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    .line 3041
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 950
    invoke-static {p1}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/au;

    move-result-object v0

    .line 951
    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/au;)[Lcom/google/googlenav/aw;

    move-result-object v0

    .line 952
    iput-object v0, p0, Lcom/google/googlenav/ai;->H:[Lcom/google/googlenav/aw;

    .line 953
    iput-boolean p2, p0, Lcom/google/googlenav/ai;->I:Z

    .line 954
    return-void
.end method

.method public a(Lcom/google/googlenav/cy;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 2449
    iput-object p1, p0, Lcom/google/googlenav/ai;->Q:Lcom/google/googlenav/cy;

    .line 2450
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2453
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v0, v1

    .line 2454
    :goto_f
    if-ge v0, v3, :cond_17

    .line 2455
    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 2454
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2457
    :cond_17
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2458
    invoke-virtual {v2, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 2461
    :cond_20
    iput v1, p0, Lcom/google/googlenav/ai;->s:I

    .line 2463
    iget-object v0, p1, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 2464
    iget-boolean v3, v0, Lcom/google/googlenav/cz;->e:Z

    if-eqz v3, :cond_28

    .line 2465
    iget-object v3, v0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2467
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_28

    .line 2470
    :cond_46
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 5
    .parameter

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2508
    if-eqz p1, :cond_f

    .line 2509
    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2511
    :cond_f
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0xa9

    .line 3179
    if-nez p1, :cond_8

    .line 3180
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 3182
    :cond_8
    iput-object p1, p0, Lcom/google/googlenav/ai;->g:Ljava/util/List;

    .line 3184
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_2e

    .line 3186
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 3190
    iget-object v2, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Ln/B;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_18

    .line 3193
    :cond_2e
    return-void
.end method

.method public a(Ln/B;)V
    .registers 3
    .parameter

    .prologue
    .line 3201
    if-nez p1, :cond_a

    .line 3202
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 3207
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->a(Ljava/util/List;)V

    .line 3208
    return-void

    .line 3204
    :cond_a
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_6
.end method

.method public a([Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    .line 754
    return-void
.end method

.method public aA()[Lcom/google/googlenav/ap;
    .registers 6

    .prologue
    const/16 v4, 0x64

    .line 1882
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_9

    .line 1883
    sget-object v0, Lcom/google/googlenav/ai;->d:[Lcom/google/googlenav/ap;

    .line 1892
    :cond_8
    return-object v0

    .line 1886
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 1887
    new-array v0, v2, [Lcom/google/googlenav/ap;

    .line 1888
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_8

    .line 1889
    iget-object v3, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ap;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ap;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1888
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public aB()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1927
    if-eqz v0, :cond_11

    .line 1928
    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 1930
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public aD()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aE()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x74

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 1963
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aI()Z
    .registers 2

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/google/googlenav/ai;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aJ()LO/d;
    .registers 3

    .prologue
    .line 1989
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aI()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1990
    const/4 v0, 0x0

    .line 1993
    :goto_7
    return-object v0

    .line 1992
    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/ai;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1993
    new-instance v0, LO/d;

    invoke-direct {v0, v1}, LO/d;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7
.end method

.method public aK()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 2002
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0
.end method

.method public aL()Z
    .registers 3

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2008
    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public aM()Z
    .registers 3

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2014
    const/16 v1, 0xa5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public aN()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x5b

    const/16 v1, 0x5a

    .line 2020
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2021
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2023
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 2025
    if-lez v3, :cond_37

    .line 2026
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_37

    .line 2027
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_34

    .line 2030
    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 2034
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2036
    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public aO()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x5a

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x5a

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x5a

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2063
    invoke-direct {p0}, Lcom/google/googlenav/ai;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aU()Ljava/lang/String;

    move-result-object v0

    .line 2075
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aT()Ljava/lang/String;

    move-result-object v1

    .line 2076
    invoke-static {v0}, Lcom/google/googlenav/ai;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2079
    invoke-static {v1}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    :goto_18
    return-object v0

    :cond_19
    invoke-static {v0}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public aT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2087
    invoke-direct {p0}, Lcom/google/googlenav/ai;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aV()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2188
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aT()Ljava/lang/String;

    move-result-object v0

    .line 2190
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public aV()Z
    .registers 3

    .prologue
    .line 2194
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aT()Ljava/lang/String;

    move-result-object v0

    .line 2195
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".youtube."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public aW()Z
    .registers 2

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aX()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aX()I
    .registers 3

    .prologue
    .line 2219
    const/16 v0, 0x32

    sget-object v1, Lbm/at;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2221
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_b
.end method

.method public aY()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2226
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aX()I

    move-result v0

    if-lez v0, :cond_11

    .line 2227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2229
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public aZ()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2252
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aX()I

    move-result v2

    move v1, v0

    .line 2254
    :goto_6
    if-ge v1, v2, :cond_19

    .line 2255
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2256
    add-int/lit8 v0, v0, 0x1

    .line 2254
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2259
    :cond_19
    return v0
.end method

.method public aa()Z
    .registers 3

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ab()Z
    .registers 3

    .prologue
    .line 1286
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ac()Z
    .registers 3

    .prologue
    .line 1298
    iget-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ad()V
    .registers 2

    .prologue
    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ai;->m:Z

    .line 1303
    return-void
.end method

.method public ae()Z
    .registers 2

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/google/googlenav/ai;->m:Z

    return v0
.end method

.method public af()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1317
    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    if-eq v1, v0, :cond_1b

    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1b

    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public ag()Z
    .registers 3

    .prologue
    .line 1331
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ah()Z
    .registers 3

    .prologue
    .line 1336
    iget v0, p0, Lcom/google/googlenav/ai;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ai()Z
    .registers 2

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ah()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ag()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public aj()Z
    .registers 5

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->K()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public ak()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1389
    iget-object v0, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 1397
    :goto_a
    return-object v0

    .line 1392
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ai()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1394
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bn()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1397
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_27
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public al()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/16 v4, 0x9d

    .line 1401
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1402
    new-array v2, v1, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1403
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    .line 1404
    iget-object v3, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1403
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1406
    :cond_18
    return-object v2
.end method

.method public am()I
    .registers 3

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(B)I

    move-result v0

    goto :goto_a
.end method

.method public an()I
    .registers 3

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    invoke-virtual {v0}, Lcom/google/googlenav/e;->e()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(B)I

    move-result v0

    goto :goto_a
.end method

.method public ao()[B
    .registers 5

    .prologue
    .line 1433
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aA()[Lcom/google/googlenav/ap;

    move-result-object v1

    .line 1434
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 1435
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ap;->b()I

    move-result v2

    if-eqz v2, :cond_19

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ap;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1437
    :cond_19
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()[B

    move-result-object v0

    .line 1440
    :goto_1f
    return-object v0

    .line 1434
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1440
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public ap()Lcom/google/googlenav/ax;
    .registers 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/googlenav/ai;->E:Lcom/google/googlenav/ax;

    return-object v0
.end method

.method public aq()Lcom/google/googlenav/ax;
    .registers 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/googlenav/ai;->F:Lcom/google/googlenav/ax;

    return-object v0
.end method

.method public ar()V
    .registers 3

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/googlenav/ai;->F:Lcom/google/googlenav/ax;

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1488
    if-lez v0, :cond_1c

    .line 1489
    iget-object v1, p0, Lcom/google/googlenav/ai;->F:Lcom/google/googlenav/ax;

    invoke-virtual {v1}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ay;

    iput-object v0, p0, Lcom/google/googlenav/ai;->G:Lcom/google/googlenav/ay;

    .line 1491
    :cond_1c
    return-void
.end method

.method public as()Lcom/google/googlenav/ay;
    .registers 2

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/googlenav/ai;->G:Lcom/google/googlenav/ay;

    return-object v0
.end method

.method public at()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public au()Lcom/google/googlenav/ca;
    .registers 4

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1507
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->at()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1508
    new-instance v0, Lcom/google/googlenav/ca;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1510
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public av()Z
    .registers 3

    .prologue
    .line 1514
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->at()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1515
    if-eqz v0, :cond_f

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public aw()Z
    .registers 3

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 1531
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v0

    .line 1532
    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/google/googlenav/ap;->a(Lcom/google/googlenav/ap;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 1536
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1532
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public ax()Lcom/google/googlenav/ap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1545
    const/16 v0, 0x23

    sget-object v1, Lbm/I;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1549
    if-eqz v0, :cond_2b

    .line 1550
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1551
    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1555
    :goto_16
    if-eqz v1, :cond_22

    .line 1556
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 1557
    new-instance v0, Lcom/google/googlenav/ap;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ap;-><init>(Ljava/lang/String;I[B)V

    .line 1562
    :goto_21
    return-object v0

    .line 1561
    :cond_22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ai;->J:Ljava/lang/Boolean;

    .line 1562
    invoke-direct {p0}, Lcom/google/googlenav/ai;->k()Lcom/google/googlenav/ap;

    move-result-object v0

    goto :goto_21

    :cond_2b
    move-object v1, v2

    goto :goto_16
.end method

.method public ay()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/google/googlenav/ai;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1707
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ai;->x:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ai;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_8

    .line 1708
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public az()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x12

    .line 1854
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_9

    .line 1855
    const-string v0, ""

    .line 1865
    :cond_8
    :goto_8
    return-object v0

    .line 1858
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1859
    const-string v0, ""

    .line 1860
    if-lez v1, :cond_8

    .line 1862
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1863
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/google/googlenav/ai;->g:Ljava/util/List;

    return-object v0
.end method

.method public b(Lat/g;)V
    .registers 2
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/googlenav/ai;->i:Lat/g;

    .line 694
    return-void
.end method

.method public bA()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2808
    iget-byte v1, p0, Lcom/google/googlenav/ai;->k:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    .line 2814
    :cond_7
    :goto_7
    return v0

    .line 2812
    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x8d

    const/16 v3, 0x8f

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;III)I

    move-result v1

    .line 2814
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bB()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2826
    iget-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2827
    iget-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 2850
    :goto_7
    return-object v0

    .line 2831
    :cond_8
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 2833
    const/16 v0, 0x27

    sget-object v1, Lbm/i;->g:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2835
    if-nez v1, :cond_19

    .line 2836
    iget-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    goto :goto_7

    .line 2838
    :cond_19
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 2839
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_42

    .line 2840
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 2841
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 2842
    if-eqz v3, :cond_45

    .line 2843
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 2844
    if-eqz v3, :cond_45

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 2845
    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    .line 2850
    :cond_42
    iget-object v0, p0, Lcom/google/googlenav/ai;->K:Ljava/lang/String;

    goto :goto_7

    .line 2839
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public bC()Z
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bD()I
    .registers 3

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x99

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2877
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method public bE()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2896
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2897
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bF()Z
    .registers 3

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    const/16 v2, 0x99

    .line 2912
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bF()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2913
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2918
    :goto_e
    return-object v0

    .line 2915
    :cond_f
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2916
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_e
.end method

.method public bH()[Lcom/google/googlenav/ak;
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 2938
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2939
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 2940
    new-array v3, v2, [Lcom/google/googlenav/ak;

    .line 2941
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1b

    .line 2942
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ak;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ak;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2941
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2944
    :cond_1b
    return-object v3
.end method

.method public bI()[I
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 2955
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2956
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 2957
    const/4 v0, 0x2

    new-array v4, v0, [I

    move v0, v1

    .line 2958
    :goto_e
    if-ge v0, v3, :cond_2e

    .line 2959
    invoke-virtual {v2, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 2960
    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v5

    .line 2961
    packed-switch v5, :pswitch_data_30

    .line 2958
    :goto_1c
    :pswitch_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2963
    :pswitch_1f
    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    goto :goto_1c

    .line 2966
    :pswitch_26
    const/4 v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto :goto_1c

    .line 2970
    :cond_2e
    return-object v4

    .line 2961
    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_26
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public bJ()I
    .registers 2

    .prologue
    .line 2977
    iget v0, p0, Lcom/google/googlenav/ai;->s:I

    return v0
.end method

.method public bK()Z
    .registers 2

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    const/16 v2, 0x9b

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bM()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v1

    .line 2999
    const/4 v0, 0x0

    .line 3000
    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 3001
    const/4 v0, 0x4

    .line 3005
    :cond_e
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 3006
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 3007
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3010
    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public bN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bO()Ljava/util/List;
    .registers 2

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    return-object v0
.end method

.method public bP()Z
    .registers 3

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    sget-object v1, Lcom/google/googlenav/av;->a:Lcom/google/googlenav/av;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bQ()Z
    .registers 3

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/google/googlenav/ai;->B:Lcom/google/googlenav/av;

    sget-object v1, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bR()Z
    .registers 2

    .prologue
    .line 3059
    iget-boolean v0, p0, Lcom/google/googlenav/ai;->C:Z

    return v0
.end method

.method public bS()Z
    .registers 2

    .prologue
    .line 3070
    iget-boolean v0, p0, Lcom/google/googlenav/ai;->D:Z

    return v0
.end method

.method public bT()Ljava/lang/String;
    .registers 3

    .prologue
    const/16 v1, 0x8d

    .line 3100
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3101
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3102
    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3104
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public bU()Ljava/util/Set;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3114
    const/16 v0, 0x1c

    sget-object v1, Lbm/O;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 3117
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3121
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3123
    invoke-static {}, Lcom/google/googlenav/bj;->i()Ljava/lang/String;

    move-result-object v0

    .line 3124
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 3125
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3130
    :cond_25
    if-eqz v1, :cond_38

    .line 3131
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 3132
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v3, :cond_38

    .line 3133
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/googlenav/ai;->a(Ljava/util/Set;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 3139
    :cond_38
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bg()Ljava/util/List;

    move-result-object v0

    .line 3140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3141
    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ai;->a(Ljava/util/Set;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_40

    .line 3145
    :cond_50
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bf()Ljava/util/List;

    move-result-object v0

    .line 3146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3147
    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ai;->a(Ljava/util/Set;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_58

    .line 3149
    :cond_68
    return-object v2
.end method

.method public bV()Z
    .registers 2

    .prologue
    .line 3211
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->cb()Ljava/util/Vector;

    move-result-object v0

    .line 3212
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bW()Lcom/google/googlenav/ui/bx;
    .registers 2

    .prologue
    .line 3219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->c(I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public bX()Lcom/google/googlenav/ui/bx;
    .registers 2

    .prologue
    .line 3226
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->c(I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public bY()Lcom/google/googlenav/ar;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3261
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bV()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3271
    :cond_7
    :goto_7
    return-object v0

    .line 3264
    :cond_8
    const/16 v1, 0x1f

    sget-object v2, Lbm/aj;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 3267
    if-eqz v1, :cond_7

    .line 3271
    new-instance v0, Lcom/google/googlenav/ar;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7
.end method

.method public bZ()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3279
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bV()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3280
    const/4 v0, 0x0

    .line 3287
    :goto_8
    return-object v0

    .line 3283
    :cond_9
    const/16 v0, 0x1f

    sget-object v1, Lbm/aj;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3285
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3287
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public ba()Lcom/google/googlenav/ac;
    .registers 5

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    if-nez v0, :cond_17

    .line 2284
    const/16 v0, 0xf

    sget-object v1, Lbm/az;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2286
    if-eqz v0, :cond_17

    .line 2287
    new-instance v1, Lcom/google/googlenav/ac;

    iget-wide v2, p0, Lcom/google/googlenav/ai;->w:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ac;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    iput-object v1, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    .line 2290
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ai;->t:Lcom/google/googlenav/ac;

    return-object v0
.end method

.method public bb()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 2306
    invoke-direct {p0}, Lcom/google/googlenav/ai;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2307
    if-eqz v0, :cond_16

    .line 2308
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    .line 2312
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 2313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    .line 2316
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 2321
    invoke-direct {p0}, Lcom/google/googlenav/ai;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2322
    if-nez v0, :cond_11

    .line 2323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    .line 2329
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    return-object v0

    .line 2325
    :cond_11
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->v:Ljava/lang/String;

    goto :goto_e
.end method

.method public bd()Lcom/google/googlenav/cy;
    .registers 3

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    if-nez v0, :cond_14

    .line 2338
    const/16 v0, 0x4e

    sget-object v1, Lbm/bt;->c:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2340
    if-eqz v0, :cond_14

    .line 2341
    invoke-static {v0}, Lcom/google/googlenav/cy;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    .line 2344
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ai;->N:Lcom/google/googlenav/cy;

    return-object v0
.end method

.method public be()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2360
    const/16 v0, 0x4f

    sget-object v1, Lbm/K;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2362
    if-eqz v0, :cond_10

    .line 2363
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 2365
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bf()Ljava/util/List;
    .registers 3

    .prologue
    .line 2370
    const/16 v0, 0x56

    sget-object v1, Lbm/x;->g:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2372
    invoke-static {v0}, Lcom/google/googlenav/ai;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bg()Ljava/util/List;
    .registers 3

    .prologue
    .line 2376
    const/16 v0, 0x4a

    sget-object v1, Lbm/x;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2378
    invoke-static {v0}, Lcom/google/googlenav/ai;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bh()Lcom/google/googlenav/cv;
    .registers 4

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->k()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2407
    :cond_c
    const/16 v0, 0x4b

    sget-object v1, Lbm/x;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/cv;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    .line 2411
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    .line 2412
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aC;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2413
    iget-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->l()V

    .line 2418
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    return-object v0

    .line 2415
    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/aC;->a(Ljava/lang/String;)Lcom/google/googlenav/aF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/cv;->a(Lcom/google/googlenav/aF;)V

    goto :goto_2d
.end method

.method public bi()V
    .registers 2

    .prologue
    .line 2445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ai;->b:Lcom/google/googlenav/cv;

    .line 2446
    return-void
.end method

.method public bj()Lcom/google/googlenav/cy;
    .registers 2

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/google/googlenav/ai;->Q:Lcom/google/googlenav/cy;

    return-object v0
.end method

.method public bk()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2560
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->T()I

    move-result v0

    .line 2561
    if-lez v0, :cond_24

    .line 2562
    if-ne v0, v2, :cond_10

    .line 2563
    const/16 v0, 0x482

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2569
    :goto_f
    return-object v0

    .line 2565
    :cond_10
    const/16 v1, 0x481

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 2569
    :cond_24
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bl()Z
    .registers 2

    .prologue
    .line 2573
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bd()Lcom/google/googlenav/cy;

    move-result-object v0

    .line 2574
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/googlenav/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bm()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2578
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bd()Lcom/google/googlenav/cy;

    move-result-object v1

    .line 2579
    if-nez v1, :cond_8

    .line 2586
    :cond_7
    :goto_7
    return-object v0

    .line 2582
    :cond_8
    invoke-virtual {v1}, Lcom/google/googlenav/cy;->a()Lcom/google/googlenav/cz;

    move-result-object v1

    .line 2583
    if-eqz v1, :cond_7

    .line 2586
    iget-object v0, v1, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    goto :goto_7
.end method

.method public bn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2622
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aO()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public bo()Z
    .registers 2

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bp()Lcom/google/googlenav/e;
    .registers 2

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2638
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2647
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bs()Z
    .registers 2

    .prologue
    .line 2713
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->b(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public bt()I
    .registers 2

    .prologue
    .line 2719
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/googlenav/ai;->b(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v0

    return v0
.end method

.method public bu()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public bv()Z
    .registers 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/ai;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public bw()Z
    .registers 3

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public bx()Z
    .registers 3

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x95

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public by()Z
    .registers 3

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x98

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public bz()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c()B
    .registers 2

    .prologue
    .line 1199
    iget-byte v0, p0, Lcom/google/googlenav/ai;->k:B

    return v0
.end method

.method public c(Lat/g;)V
    .registers 5
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/googlenav/ai;->h:Lat/g;

    .line 796
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_10

    .line 797
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/ai;->a(Lat/g;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 799
    :cond_10
    return-void
.end method

.method c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x92

    .line 713
    if-nez p1, :cond_5

    .line 734
    :cond_4
    return-void

    .line 717
    :cond_5
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 718
    if-lez v1, :cond_4

    .line 719
    new-array v0, v1, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    .line 720
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_4

    .line 721
    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 726
    new-instance v3, Lcom/google/googlenav/ai;

    iget-object v4, p0, Lcom/google/googlenav/ai;->h:Lat/g;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;B)V

    .line 728
    const/16 v4, 0x90

    invoke-static {v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    .line 731
    iget-object v2, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    aput-object v3, v2, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1213
    iput-boolean p1, p0, Lcom/google/googlenav/ai;->p:Z

    .line 1214
    return-void
.end method

.method public ca()Ljava/util/Vector;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 3294
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bV()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3295
    const/4 v0, 0x0

    .line 3306
    :goto_8
    return-object v0

    .line 3298
    :cond_9
    const/16 v0, 0x1f

    sget-object v1, Lbm/aj;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 3301
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 3302
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 3303
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 3304
    new-instance v4, Lcom/google/googlenav/ar;

    invoke-direct {v4, v3}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3302
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2c
    move-object v0, v1

    .line 3306
    goto :goto_8
.end method

.method public cb()Ljava/util/Vector;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 3313
    const/16 v1, 0x1f

    sget-object v2, Lbm/aj;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 3315
    if-nez v2, :cond_d

    .line 3329
    :cond_c
    return-object v0

    .line 3319
    :cond_d
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 3320
    if-eqz v3, :cond_c

    .line 3324
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3325
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_c

    .line 3326
    invoke-virtual {v2, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 3327
    new-instance v5, Lcom/google/googlenav/as;

    invoke-direct {v5, p0, v4}, Lcom/google/googlenav/as;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3325
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public cc()LaS/o;
    .registers 5

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    if-eqz v0, :cond_7

    .line 3334
    iget-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    .line 3347
    :goto_6
    return-object v0

    .line 3337
    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/ai;->M:Ljava/lang/Object;

    monitor-enter v1

    .line 3338
    :try_start_a
    iget-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    if-nez v0, :cond_21

    .line 3339
    new-instance v0, LaS/o;

    const/16 v2, 0x4c

    sget-object v3, Lbm/bm;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {}, LaS/j;->a()LaS/j;

    move-result-object v3

    invoke-direct {v0, v2, p0, v3}, LaS/o;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaS/j;)V

    iput-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    .line 3345
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_25

    .line 3347
    iget-object v0, p0, Lcom/google/googlenav/ai;->L:LaS/o;

    goto :goto_6

    .line 3345
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public cd()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xad

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ce()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cf()Z
    .registers 3

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public cg()Lcom/google/googlenav/ar;
    .registers 2

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    if-eqz v0, :cond_7

    .line 4243
    iget-object v0, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    .line 4247
    :goto_6
    return-object v0

    .line 4246
    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ai;->q()Lcom/google/googlenav/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    .line 4247
    iget-object v0, p0, Lcom/google/googlenav/ai;->O:Lcom/google/googlenav/ar;

    goto :goto_6
.end method

.method public ch()Lcom/google/googlenav/ao;
    .registers 2

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    if-eqz v0, :cond_7

    .line 4327
    iget-object v0, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    .line 4331
    :goto_6
    return-object v0

    .line 4330
    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ai;->r()Lcom/google/googlenav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    .line 4331
    iget-object v0, p0, Lcom/google/googlenav/ai;->P:Lcom/google/googlenav/ao;

    goto :goto_6
.end method

.method public d()I
    .registers 2

    .prologue
    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/16 v1, 0x76

    const/4 v3, 0x1

    .line 2532
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2533
    :cond_f
    const-string v0, ""

    .line 2554
    :goto_11
    return-object v0

    .line 2536
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2538
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2539
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    :cond_2e
    if-eqz p1, :cond_35

    .line 2542
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 2547
    :cond_35
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bk()Ljava/lang/String;

    move-result-object v0

    .line 2548
    if-eqz v0, :cond_49

    .line 2549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 2550
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    :cond_46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 1713
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1714
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ay()Ljava/util/Map;

    move-result-object v0

    .line 1715
    if-eqz v0, :cond_21

    .line 1716
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ai;->c:Lcom/google/googlenav/au;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    :cond_21
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 763
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 765
    :cond_13
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 834
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, p1}, Lcom/google/googlenav/d;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_5

    .line 1917
    :goto_4
    return-void

    .line 1916
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_4
.end method

.method public e(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3055
    iput-boolean p1, p0, Lcom/google/googlenav/ai;->C:Z

    .line 3056
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/google/googlenav/ai;->p:Z

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 1741
    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 840
    return-void
.end method

.method public f(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3066
    iput-boolean p1, p0, Lcom/google/googlenav/ai;->D:Z

    .line 3067
    return-void
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1746
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 1748
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_19

    .line 1749
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v2, "proto"

    iget-object v4, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    if-eqz v0, :cond_2d

    .line 1752
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v2, "image"

    iget-object v4, p0, Lcom/google/googlenav/ai;->o:Lcom/google/googlenav/e;

    invoke-virtual {v4}, Lcom/google/googlenav/e;->g()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1754
    :cond_2d
    iget-object v0, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    if-eqz v0, :cond_50

    move v0, v1

    move v2, v1

    .line 1756
    :goto_33
    iget-object v4, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    array-length v4, v4

    if-ge v0, v4, :cond_46

    .line 1757
    iget-object v4, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    aget-object v4, v4, v0

    .line 1758
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v4

    iget v4, v4, Lcom/google/googlenav/common/util/l;->b:I

    add-int/2addr v2, v4

    .line 1756
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1760
    :cond_46
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v4, "rbl results"

    invoke-direct {v0, v4, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_50
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ay()Ljava/util/Map;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_80

    .line 1765
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/au;

    .line 1766
    sget-object v5, Lcom/google/googlenav/ai;->c:Lcom/google/googlenav/au;

    if-eq v0, v5, :cond_a7

    .line 1767
    invoke-virtual {v0}, Lcom/google/googlenav/au;->a()I

    move-result v0

    add-int/2addr v0, v2

    :goto_74
    move v2, v0

    goto :goto_5f

    .line 1770
    :cond_76
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v4, "place page stories - soft ref"

    invoke-direct {v0, v4, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1775
    :cond_80
    iget-object v0, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 1776
    iget-object v0, p0, Lcom/google/googlenav/ai;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 1778
    :cond_8b
    iget-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 1779
    iget-object v0, p0, Lcom/google/googlenav/ai;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 1781
    :cond_96
    iget-object v0, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 1783
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "Placemark"

    invoke-direct {v1, v2, v0, v3}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_a7
    move v0, v2

    goto :goto_74
.end method

.method public g(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/google/googlenav/ai;->j:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_c

    .line 1381
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1383
    :cond_c
    return-void
.end method

.method public g(I)[Lcom/google/googlenav/aq;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 1082
    if-ltz p1, :cond_7

    if-le p1, v3, :cond_22

    .line 1083
    :cond_7
    const-string v0, "getJustifications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    sget-object v0, Lcom/google/googlenav/ai;->e:[Lcom/google/googlenav/aq;

    .line 1119
    :goto_21
    return-object v0

    .line 1087
    :cond_22
    const/16 v0, 0xe

    sget-object v4, Lbm/aa;->d:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v4}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 1089
    if-nez v4, :cond_2f

    .line 1090
    sget-object v0, Lcom/google/googlenav/ai;->e:[Lcom/google/googlenav/aq;

    goto :goto_21

    .line 1093
    :cond_2f
    invoke-static {p1}, Lcom/google/googlenav/aq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_36
    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1097
    if-nez v5, :cond_41

    .line 1098
    sget-object v0, Lcom/google/googlenav/ai;->e:[Lcom/google/googlenav/aq;

    goto :goto_21

    .line 1093
    :cond_3f
    const/4 v0, 0x2

    goto :goto_36

    .line 1101
    :cond_41
    invoke-virtual {v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 1106
    invoke-static {p1}, Lcom/google/googlenav/aq;->b(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1107
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1113
    :goto_4f
    new-array v3, v0, [Lcom/google/googlenav/aq;

    move v4, v2

    .line 1114
    :goto_52
    add-int v6, v2, v0

    if-ge v4, v6, :cond_6d

    .line 1115
    sub-int v6, v4, v2

    invoke-virtual {v5, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-static {v7}, Lcom/google/googlenav/aq;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/aq;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1114
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 1110
    :cond_65
    add-int/lit8 v0, v0, -0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    .line 1111
    goto :goto_4f

    :cond_6d
    move-object v0, v3

    .line 1119
    goto :goto_21
.end method

.method public h(I)Lcom/google/googlenav/ap;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1588
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 1589
    if-eqz v2, :cond_14

    .line 1590
    new-instance v0, Lcom/google/googlenav/ap;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlenav/ap;-><init>(Ljava/lang/String;I[B)V

    .line 1592
    :goto_13
    return-object v0

    :cond_14
    move-object v0, v1

    goto :goto_13
.end method

.method public h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2928
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bD()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ai;->n(I)V

    .line 2929
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1869
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1870
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1871
    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1872
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1874
    :cond_18
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)Lcom/google/googlenav/au;
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x9e

    .line 1648
    iget-object v2, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v2, :cond_a

    .line 1697
    :goto_9
    return-object v0

    .line 1651
    :cond_a
    iget-object v2, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 1653
    invoke-static {p1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1657
    iget-object v5, p0, Lcom/google/googlenav/ai;->y:Ljava/lang/Object;

    monitor-enter v5

    .line 1658
    :try_start_17
    iget-object v2, p0, Lcom/google/googlenav/ai;->x:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_84

    .line 1659
    iget-object v0, p0, Lcom/google/googlenav/ai;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 1664
    :goto_24
    if-nez v2, :cond_6b

    .line 1666
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 1667
    :goto_2c
    if-ge v0, v3, :cond_47

    .line 1668
    iget-object v6, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v7, 0x9e

    invoke-virtual {v6, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 1669
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/googlenav/ai;->c:Lcom/google/googlenav/au;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1674
    :cond_47
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1675
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/googlenav/ai;->x:Ljava/lang/ref/SoftReference;

    move-object v2, v0

    .line 1683
    :cond_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_77

    move v0, v1

    .line 1686
    :goto_55
    if-ge v0, v3, :cond_7d

    .line 1687
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1688
    invoke-virtual {v1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    if-ne v5, p1, :cond_7a

    .line 1690
    invoke-static {v1}, Lcom/google/googlenav/au;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/au;

    move-result-object v0

    .line 1691
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1678
    :cond_6b
    :try_start_6b
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/au;

    .line 1679
    sget-object v6, Lcom/google/googlenav/ai;->c:Lcom/google/googlenav/au;

    if-eq v0, v6, :cond_53

    .line 1680
    monitor-exit v5

    goto :goto_9

    .line 1683
    :catchall_77
    move-exception v0

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_77

    throw v0

    .line 1686
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1697
    :cond_7d
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/au;

    goto :goto_9

    :cond_84
    move-object v2, v0

    goto :goto_24
.end method

.method public i(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 2098
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2099
    invoke-direct {p0}, Lcom/google/googlenav/ai;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2102
    :cond_e
    return-void
.end method

.method public j(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2268
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aX()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/bz;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 2105
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2106
    invoke-direct {p0}, Lcom/google/googlenav/ai;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2109
    :cond_e
    return-void
.end method

.method public k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2272
    const/16 v0, 0x32

    sget-object v1, Lbm/at;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2274
    if-ltz p1, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lt p1, v1, :cond_15

    .line 2276
    :cond_13
    const/4 v0, 0x0

    .line 2279
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_14
.end method

.method public k(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 2112
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2113
    invoke-direct {p0}, Lcom/google/googlenav/ai;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2116
    :cond_f
    return-void
.end method

.method public m(I)V
    .registers 5
    .parameter

    .prologue
    .line 2867
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2868
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2869
    iget-object v1, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x99

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2870
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2493
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2494
    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2496
    :cond_19
    return-void
.end method

.method public n(I)V
    .registers 2
    .parameter

    .prologue
    .line 2985
    iput p1, p0, Lcom/google/googlenav/ai;->s:I

    .line 2986
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2886
    if-eqz p1, :cond_a

    .line 2887
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2889
    :cond_a
    return-void
.end method

.method public o(I)V
    .registers 4
    .parameter

    .prologue
    .line 3029
    invoke-static {p1}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3030
    iget-object v1, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3031
    iget-object v1, p0, Lcom/google/googlenav/ai;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3033
    :cond_11
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3020
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    .line 1790
    if-eqz v1, :cond_12

    .line 1791
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    :cond_12
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1795
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1797
    :cond_24
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1801
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    :cond_42
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1805
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->av()Z

    move-result v0

    return v0
.end method

.method public x()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/googlenav/ai;->i:Lat/g;

    if-eqz v0, :cond_b

    .line 698
    iget-object v0, p0, Lcom/google/googlenav/ai;->i:Lat/g;

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lat/g;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 702
    :goto_a
    return-object v0

    .line 699
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_17

    .line 700
    iget-object v0, p0, Lcom/google/googlenav/ai;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_a

    .line 702
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->z()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public z()I
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ai;->q:[Lcom/google/googlenav/ai;

    array-length v0, v0

    goto :goto_5
.end method
