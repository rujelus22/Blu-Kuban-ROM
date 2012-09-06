.class public LaM/C;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements LaH/e;
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field private B:Z

.field private C:Z

.field private D:[Ljava/lang/String;

.field private E:Z

.field private F:Lcom/google/googlenav/friend/bg;

.field private G:LaH/d;

.field private H:Z

.field private I:Z

.field private J:[Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final P:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;Z[Ljava/lang/String;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 11
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
    .line 172
    invoke-direct/range {p0 .. p5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaM/C;->P:Ljava/lang/Object;

    .line 174
    iput-boolean p6, p0, LaM/C;->I:Z

    .line 175
    iput-object p7, p0, LaM/C;->J:[Ljava/lang/String;

    .line 176
    iput-boolean p8, p0, LaM/C;->M:Z

    .line 177
    iput-object p9, p0, LaM/C;->O:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 178
    if-eqz p7, :cond_22

    array-length v0, p7

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, LaM/C;->K:Z

    .line 179
    new-instance v0, LaM/B;

    invoke-direct {v0, p0}, LaM/B;-><init>(LaM/C;)V

    iput-object v0, p0, LaM/C;->A:LaM/bd;

    .line 180
    return-void

    .line 178
    :cond_22
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 626
    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_49

    .line 629
    invoke-virtual {p0}, LaM/C;->bt()Lcom/google/googlenav/ai;

    move-result-object v3

    .line 630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/googlenav/ai;

    move v1, v2

    .line 631
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 632
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;B)Lcom/google/googlenav/ai;

    move-result-object v0

    aput-object v0, v4, v1

    .line 631
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 635
    :cond_2b
    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->a([Lcom/google/googlenav/ai;)V

    .line 637
    iget-boolean v0, p0, LaM/C;->M:Z

    if-nez v0, :cond_49

    .line 642
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    invoke-virtual {p0}, LaM/C;->bl()Z

    move-result v1

    invoke-static {v3, v1}, LaM/aR;->c(Lcom/google/googlenav/ai;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, LaM/C;->J:[Ljava/lang/String;

    .line 645
    iput-boolean v5, p0, LaM/C;->K:Z

    .line 648
    :cond_49
    return-void
.end method

.method private static b(Ljava/lang/String;)Lat/B;
    .registers 6
    .parameter

    .prologue
    const v4, 0x49742400

    const/4 v0, 0x0

    .line 854
    if-nez p0, :cond_7

    .line 872
    :cond_6
    :goto_6
    return-object v0

    .line 857
    :cond_7
    const-string v1, "http://maps.google.com/?q="

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 858
    const-string v1, "http://maps.google.com/?q="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 860
    if-lez v2, :cond_6

    .line 861
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 862
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 864
    :try_start_2c
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 865
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 866
    new-instance v1, Lat/B;

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lat/B;-><init>(II)V
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_3d} :catch_3f

    move-object v0, v1

    goto :goto_6

    .line 867
    :catch_3f
    move-exception v1

    goto :goto_6
.end method

.method private bM()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0, v0}, LaM/C;->b(B)V

    .line 201
    iput-object v2, p0, LaM/C;->D:[Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, LaM/C;->E:Z

    .line 203
    iput-object v2, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    .line 204
    iput-object v2, p0, LaM/C;->G:LaH/d;

    .line 206
    iget-boolean v2, p0, LaM/C;->K:Z

    if-nez v2, :cond_15

    :goto_12
    iput-boolean v0, p0, LaM/C;->H:Z

    .line 207
    return-void

    :cond_15
    move v0, v1

    .line 206
    goto :goto_12
.end method

.method private bN()Ln/B;
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, LaM/C;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->b()Ljava/util/List;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 299
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 302
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private bO()V
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    if-nez v0, :cond_d

    invoke-virtual {p0}, LaM/C;->bG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 507
    invoke-direct {p0}, LaM/C;->bP()V

    .line 509
    :cond_d
    invoke-virtual {p0}, LaM/C;->m()V

    .line 510
    return-void
.end method

.method private bP()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 517
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 518
    iput-object v1, p0, LaM/C;->G:LaH/d;

    .line 519
    iput-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    .line 520
    iput-boolean v4, p0, LaM/C;->B:Z

    .line 522
    iput-boolean v5, p0, LaM/C;->C:Z

    .line 524
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    invoke-virtual {p0, p0, v1}, LaM/C;->a(LaH/e;Lat/B;)LaH/d;

    move-result-object v1

    iput-object v1, p0, LaM/C;->G:LaH/d;

    .line 525
    iget-boolean v1, p0, LaM/C;->H:Z

    if-eqz v1, :cond_26

    .line 527
    iget-object v1, p0, LaM/C;->G:LaH/d;

    sget v2, Lcom/google/googlenav/ui/bn;->bx:I

    sget v3, Lcom/google/googlenav/ui/bn;->by:I

    invoke-virtual {v1, v2, v3}, LaH/d;->a(II)V

    .line 532
    :cond_26
    iput-boolean v5, p0, LaM/C;->B:Z

    .line 535
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    invoke-virtual {p0, v1}, LaM/C;->d(Lat/B;)Lcom/google/googlenav/friend/bg;

    move-result-object v1

    iput-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    .line 537
    iget-object v1, p0, LaM/C;->G:LaH/d;

    if-eqz v1, :cond_40

    .line 541
    iget-object v1, p0, LaM/C;->G:LaH/d;

    invoke-virtual {v1, v4}, LaH/d;->a(Z)V

    .line 542
    iget-object v1, p0, LaM/C;->G:LaH/d;

    invoke-virtual {v1}, LaH/d;->o()V

    .line 544
    :cond_40
    iget-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    if-eqz v1, :cond_49

    .line 545
    iget-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 547
    :cond_49
    return-void
.end method

.method private bQ()V
    .registers 3

    .prologue
    .line 687
    iget-object v1, p0, LaM/C;->P:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_3
    iget-boolean v0, p0, LaM/C;->C:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, LaM/C;->B:Z

    if-eqz v0, :cond_d

    .line 691
    :cond_b
    monitor-exit v1

    .line 706
    :goto_c
    return-void

    .line 694
    :cond_d
    invoke-virtual {p0}, LaM/C;->ag()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 698
    invoke-virtual {p0}, LaM/C;->an()Z

    .line 705
    :cond_16
    :goto_16
    monitor-exit v1

    goto :goto_c

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    .line 699
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, LaM/C;->af()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 703
    invoke-virtual {p0}, LaM/C;->bo()V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_18

    goto :goto_16
.end method

.method private bR()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    const v2, 0x49742400

    .line 786
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 787
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 792
    :goto_16
    return-object v0

    .line 789
    :cond_17
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 791
    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, LaM/C;->I:Z

    if-eqz v0, :cond_c

    .line 381
    invoke-super {p0}, LaM/m;->Z()V

    .line 382
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 384
    :cond_c
    return-void
.end method

.method protected a(LaH/e;Lat/B;)LaH/d;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 733
    new-instance v0, LaH/d;

    invoke-direct {v0, p1, p2}, LaH/d;-><init>(LaH/e;Lat/B;)V

    return-object v0
.end method

.method public a()Lat/B;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, LaM/C;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 654
    iput-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/C;->B:Z

    .line 656
    iput-object v1, p0, LaM/C;->D:[Ljava/lang/String;

    .line 660
    invoke-direct {p0}, LaM/C;->bQ()V

    .line 661
    return-void
.end method

.method public a(LaH/d;)V
    .registers 3
    .parameter

    .prologue
    .line 670
    invoke-virtual {p0}, LaM/C;->ax()Z

    move-result v0

    if-nez v0, :cond_7

    .line 680
    :cond_6
    :goto_6
    return-void

    .line 673
    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, LaM/C;->G:LaH/d;

    if-ne p1, v0, :cond_6

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/C;->C:Z

    .line 678
    invoke-virtual {p1}, LaH/d;->k()Z

    move-result v0

    iput-boolean v0, p0, LaM/C;->E:Z

    .line 679
    invoke-direct {p0}, LaM/C;->bQ()V

    goto :goto_6
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, LaM/C;->f:Lcom/google/googlenav/F;

    .line 185
    invoke-direct {p0}, LaM/C;->bM()V

    .line 189
    invoke-virtual {p0}, LaM/C;->bG()Z

    move-result v0

    if-nez v0, :cond_e

    .line 190
    invoke-direct {p0}, LaM/C;->bP()V

    .line 194
    :cond_e
    invoke-virtual {p0}, LaM/C;->ax()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 195
    invoke-virtual {p0}, LaM/C;->y()V

    .line 197
    :cond_17
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    invoke-virtual {p0}, LaM/C;->ax()Z

    move-result v1

    if-nez v1, :cond_b

    .line 615
    :cond_a
    :goto_a
    return-void

    .line 569
    :cond_b
    iget-object v1, p0, LaM/C;->F:Lcom/google/googlenav/friend/bg;

    if-eqz v1, :cond_a

    .line 577
    iput-boolean v3, p0, LaM/C;->B:Z

    .line 582
    if-eqz p1, :cond_7d

    .line 583
    invoke-static {p1, v3}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;B)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2e

    .line 588
    :cond_27
    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(Ln/B;)V

    .line 590
    :cond_2e
    iget-object v1, p0, LaM/C;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    .line 591
    new-instance v2, Lcom/google/googlenav/bi;

    invoke-direct {v2, v0}, Lcom/google/googlenav/bi;-><init>(Lcom/google/googlenav/ai;)V

    iput-object v2, p0, LaM/C;->f:Lcom/google/googlenav/F;

    .line 592
    invoke-virtual {p0, v1}, LaM/C;->b(B)V

    .line 593
    invoke-virtual {p0}, LaM/C;->R()V

    .line 597
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_49
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 604
    new-array v0, v5, [Ljava/lang/String;

    const/16 v1, 0x5e9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    .line 610
    :goto_65
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/C;->L:Ljava/lang/String;

    .line 612
    invoke-direct {p0, p2}, LaM/C;->a(Ljava/util/List;)V

    .line 614
    invoke-direct {p0}, LaM/C;->bQ()V

    goto :goto_a

    .line 606
    :cond_74
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    iput-object v2, p0, LaM/C;->D:[Ljava/lang/String;

    goto :goto_65

    :cond_7d
    move-object v1, v0

    goto :goto_49
.end method

.method public a(Ljava/util/Vector;Lat/B;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 388
    .line 389
    sparse-switch p1, :sswitch_data_1be

    move v0, v6

    .line 479
    :goto_8
    const/4 v1, -0x1

    if-eq p1, v1, :cond_33

    if-eqz v0, :cond_33

    .line 480
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "a=s"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    const/16 v2, 0x10

    const-string v3, "c"

    invoke-static {v2, v3, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_33
    if-nez v0, :cond_39

    .line 487
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    .line 490
    :cond_39
    return v0

    .line 391
    :sswitch_3a
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v5}, LaM/C;->b(ILjava/lang/Object;)V

    .line 392
    iget-boolean v0, p0, LaM/C;->M:Z

    if-eqz v0, :cond_5b

    .line 393
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v0

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v1

    invoke-static {v0, v1}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 394
    iget-object v1, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/C;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v0, v8

    .line 396
    goto :goto_8

    .line 397
    :cond_5b
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x18

    iget-object v3, p0, LaM/C;->f:Lcom/google/googlenav/F;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 402
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    if-nez v0, :cond_8b

    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v0

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v1

    invoke-static {v0, v1}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 406
    :goto_7d
    iget-object v1, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/C;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v0, v8

    .line 409
    goto/16 :goto_8

    .line 402
    :cond_8b
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v0

    iget-object v1, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v1, v2}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lad/y;->a(Lat/B;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v0

    goto :goto_7d

    .line 414
    :sswitch_a4
    const/16 v0, 0x25d

    if-ne p1, v0, :cond_cf

    move v0, v7

    .line 420
    :goto_a9
    const/16 v1, 0x45

    const-string v2, "n"

    const-string v3, "c"

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, LaM/C;->n()V

    .line 424
    iget-object v1, p0, LaM/C;->D:[Ljava/lang/String;

    if-nez v1, :cond_d5

    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v2

    invoke-static {v1, v2}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v1

    .line 428
    :goto_c5
    iget-object v2, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    const-string v3, "c"

    invoke-virtual {v2, v1, v0, v5, v3}, Lcom/google/googlenav/ui/v;->a(Lad/y;I[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    move v0, v8

    .line 430
    goto/16 :goto_8

    .line 416
    :cond_cf
    const/16 v0, 0x25e

    if-ne p1, v0, :cond_1bb

    move v0, v8

    .line 417
    goto :goto_a9

    .line 424
    :cond_d5
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v2, v3}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lad/y;->a(Lat/B;Ljava/lang/String;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v1

    goto :goto_c5

    .line 432
    :sswitch_ee
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 433
    const-string v0, "Street View"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 436
    :cond_f9
    invoke-virtual {p0}, LaM/C;->n()V

    .line 437
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->c(Lat/B;)V

    .line 438
    invoke-static {}, LaH/c;->a()V

    move v0, v8

    .line 439
    goto/16 :goto_8

    .line 441
    :sswitch_10b
    invoke-virtual {p0}, LaM/C;->n()V

    .line 442
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    const-string v1, "9"

    invoke-virtual {p0}, LaM/C;->s()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2, v8}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v8

    .line 444
    goto/16 :goto_8

    .line 450
    :sswitch_124
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    if-eqz v0, :cond_1b8

    .line 451
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v0, v1}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    :goto_134
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    invoke-direct {p0}, LaM/C;->bN()Ln/B;

    move-result-object v2

    invoke-virtual {p0}, LaM/C;->bL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, LaM/C;->bG()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v8

    .line 455
    goto/16 :goto_8

    .line 457
    :sswitch_14c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 458
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/ai;

    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v1

    iget-boolean v3, p0, LaM/C;->M:Z

    if-eqz v3, :cond_189

    const/16 v3, 0x533

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_178
    iget-object v3, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v9, v0}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ai;)V

    move v0, v8

    .line 463
    goto/16 :goto_8

    :cond_189
    move-object v2, v5

    .line 458
    goto :goto_178

    .line 465
    :sswitch_18b
    new-instance v1, Lax/A;

    iget-object v2, p0, LaM/C;->L:Ljava/lang/String;

    invoke-direct {p0}, LaM/C;->bR()Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lax/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 466
    invoke-virtual {p0}, LaM/C;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lax/A;->a(Lat/B;)V

    .line 467
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    iget-object v2, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v2

    const-string v3, "p"

    invoke-interface {v0, v1, v5, v2, v3}, Lax/m;->a(Lax/A;Lax/E;LaM/am;Ljava/lang/String;)Lax/A;

    .line 469
    invoke-virtual {p0}, LaM/C;->bo()V

    move v0, v8

    .line 470
    goto/16 :goto_8

    :sswitch_1b5
    move v0, v6

    .line 474
    goto/16 :goto_8

    :cond_1b8
    move-object v3, v5

    goto/16 :goto_134

    :cond_1bb
    move v0, v6

    goto/16 :goto_a9

    .line 389
    :sswitch_data_1be
    .sparse-switch
        0x4 -> :sswitch_14c
        0xf -> :sswitch_1b5
        0x258 -> :sswitch_ee
        0x25a -> :sswitch_10b
        0x25b -> :sswitch_3a
        0x25c -> :sswitch_a4
        0x25d -> :sswitch_a4
        0x25e -> :sswitch_a4
        0x578 -> :sswitch_18b
        0x5dc -> :sswitch_124
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, LaM/C;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaM/C;->g:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v0, :cond_d

    .line 496
    invoke-direct {p0}, LaM/C;->bO()V

    .line 497
    const/4 v0, 0x1

    .line 499
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, LaM/m;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    goto :goto_c
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method protected aq()V
    .registers 1

    .prologue
    .line 896
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 326
    const/16 v0, 0xd

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 353
    iget-boolean v0, p0, LaM/C;->B:Z

    return v0
.end method

.method public b(Lat/g;)Z
    .registers 3
    .parameter

    .prologue
    .line 738
    iget-boolean v0, p0, LaM/C;->M:Z

    if-eqz v0, :cond_6

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, LaM/m;->b(Lat/g;)Z

    move-result v0

    goto :goto_5
.end method

.method public bE()LS/f;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, LaM/C;->G:LaH/d;

    invoke-virtual {v0}, LaH/d;->m()LS/f;

    move-result-object v0

    return-object v0
.end method

.method public bF()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, LaM/C;->H:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, LaM/C;->C:Z

    if-nez v0, :cond_12

    iget-object v0, p0, LaM/C;->G:LaH/d;

    invoke-virtual {v0}, LaH/d;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bG()Z
    .registers 2

    .prologue
    .line 753
    iget-boolean v0, p0, LaM/C;->M:Z

    return v0
.end method

.method public bH()Z
    .registers 2

    .prologue
    .line 757
    iget-boolean v0, p0, LaM/C;->M:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, LaM/C;->N:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bI()Z
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->s()Z

    move-result v0

    return v0
.end method

.method public bJ()Z
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, LaM/C;->L:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bK()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 773
    invoke-virtual {p0}, LaM/C;->bJ()Z

    move-result v1

    if-nez v1, :cond_8

    .line 778
    :cond_7
    :goto_7
    return v0

    .line 776
    :cond_8
    iget-object v1, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    iget-object v2, p0, LaM/C;->L:Ljava/lang/String;

    invoke-interface {v1, v2}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lax/A;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method bL()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 804
    iget-object v0, p0, LaM/C;->L:Ljava/lang/String;

    invoke-static {v0}, LaM/C;->b(Ljava/lang/String;)Lat/B;

    move-result-object v2

    .line 805
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    if-eqz v0, :cond_f

    if-nez v2, :cond_12

    .line 809
    :cond_f
    iget-object v0, p0, LaM/C;->L:Ljava/lang/String;

    .line 843
    :goto_11
    return-object v0

    .line 814
    :cond_12
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    const-string v3, " "

    const-string v4, "+"

    invoke-static {v3, v4, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 819
    :goto_2c
    iget-object v3, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, LaM/C;->D:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    const-string v3, " "

    const-string v4, "+"

    invoke-static {v3, v4, v1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 824
    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://maps.google.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    const-string v4, "maps?f=q&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    if-eqz v0, :cond_57

    .line 827
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 829
    :cond_57
    if-eqz v1, :cond_63

    .line 830
    if-eqz v0, :cond_60

    .line 831
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 836
    :cond_63
    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/C;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sspn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/C;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->a()I

    move-result v1

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/C;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->b()I

    move-result v1

    invoke-static {v1}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :cond_b2
    move-object v0, v1

    goto/16 :goto_2c
.end method

.method public bo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, LaM/C;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, LaM/C;->af()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, LaM/C;->bz()Z

    move-result v0

    if-nez v0, :cond_12

    .line 245
    :cond_11
    :goto_11
    return-void

    .line 223
    :cond_12
    iget v0, p0, LaM/C;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 224
    iput v2, p0, LaM/C;->v:I

    .line 228
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/C;->f(Z)V

    .line 230
    iget-object v0, p0, LaM/C;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ac;

    if-eqz v0, :cond_2b

    .line 231
    iget-object v0, p0, LaM/C;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ac;

    .line 232
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ac;->i()V

    goto :goto_11

    .line 233
    :cond_2b
    iget-object v0, p0, LaM/C;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ah;

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, LaM/C;->A:LaM/bd;

    invoke-virtual {v0, v2}, LaM/bd;->a(I)Lcom/google/googlenav/ui/view/android/V;

    .line 243
    iget-object v0, p0, LaM/C;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ah;->l()V

    goto :goto_11
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-boolean v1, p0, LaM/C;->M:Z

    if-eqz v1, :cond_12

    .line 273
    invoke-static {}, Lcom/google/googlenav/ui/bn;->U()[LS/f;

    move-result-object v1

    aget-object v0, v1, v0

    .line 276
    invoke-interface {v0}, LS/f;->b()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 278
    :cond_12
    return v0
.end method

.method public c(Lat/g;)Z
    .registers 3
    .parameter

    .prologue
    .line 746
    iget-boolean v0, p0, LaM/C;->M:Z

    if-eqz v0, :cond_6

    .line 747
    const/4 v0, 0x0

    .line 749
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, LaM/m;->c(Lat/g;)Z

    move-result v0

    goto :goto_5
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, LaM/C;->D:[Ljava/lang/String;

    return-object v0
.end method

.method protected d(Lat/B;)Lcom/google/googlenav/friend/bg;
    .registers 4
    .parameter

    .prologue
    .line 718
    new-instance v0, Lcom/google/googlenav/friend/bi;

    invoke-direct {v0}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    iget-object v1, p0, LaM/C;->O:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method public d(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 341
    iget-boolean v0, p0, LaM/C;->C:Z

    if-eqz v0, :cond_6

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, LaM/C;->E:Z

    goto :goto_5
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    return-void
.end method

.method public e()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, LaM/C;->J:[Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, LaM/C;->K:Z

    return v0
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, LaM/C;->ag()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 251
    iget-object v1, p0, LaM/C;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 262
    :cond_14
    :goto_14
    return v0

    .line 256
    :cond_15
    invoke-virtual {p0}, LaM/C;->ah()Z

    move-result v1

    if-nez v1, :cond_14

    .line 257
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_14

    invoke-virtual {p0}, LaM/C;->ag()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 258
    invoke-direct {p0}, LaM/C;->bO()V

    .line 259
    const/4 v0, 0x1

    goto :goto_14
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 316
    new-instance v0, LaO/g;

    invoke-direct {v0, p0}, LaO/g;-><init>(LaM/i;)V

    return-object v0
.end method

.method public k(Z)V
    .registers 2
    .parameter

    .prologue
    .line 761
    iput-boolean p1, p0, LaM/C;->N:Z

    .line 762
    return-void
.end method

.method protected l()V
    .registers 1

    .prologue
    .line 322
    return-void
.end method
