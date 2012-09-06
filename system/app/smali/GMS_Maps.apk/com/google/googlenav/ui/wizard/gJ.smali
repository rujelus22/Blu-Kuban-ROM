.class public Lcom/google/googlenav/ui/wizard/gj;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements LaC/r;
.implements Lan/y;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Las/h;
.implements Lcom/google/googlenav/friend/bh;
.implements Lcom/google/googlenav/ui/view/c;
.implements Lcom/google/googlenav/ui/wizard/E;
.implements Lcom/google/googlenav/ui/wizard/dG;
.implements Lcom/google/googlenav/ui/wizard/gi;


# static fields
.field private static L:Ljava/util/List;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/Object;

.field private D:Lcom/google/googlenav/ui/wizard/gx;

.field private E:Z

.field private F:J

.field private G:Lcom/google/googlenav/bc;

.field private H:Z

.field private I:Lcom/google/googlenav/ui/view/android/V;

.field private J:Lcom/google/googlenav/ui/view/android/V;

.field private K:LaC/g;

.field private final M:Lcom/google/googlenav/actionbar/b;

.field private N:Lcom/google/googlenav/ui/wizard/dG;

.field protected a:Lcom/google/googlenav/a;

.field private i:I

.field private final j:Lcom/google/googlenav/J;

.field private final k:Lan/h;

.field private final l:Lcom/google/googlenav/ui/ap;

.field private final m:Lat/u;

.field private n:LaM/am;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/google/googlenav/ai;

.field private t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private u:Ljava/util/List;

.field private v:Ljava/util/List;

.field private w:Ljava/util/List;

.field private x:Z

.field private y:Lat/B;

.field private z:Lat/H;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lan/h;Lcom/google/googlenav/ui/ap;Lat/u;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 127
    iput v2, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    .line 199
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gj;->B:Z

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->C:Ljava/lang/Object;

    .line 224
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    .line 245
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gj;->H:Z

    .line 892
    new-instance v0, Lcom/google/googlenav/ui/wizard/gv;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gv;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->N:Lcom/google/googlenav/ui/wizard/dG;

    .line 281
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    .line 282
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    .line 283
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/gj;->l:Lcom/google/googlenav/ui/ap;

    .line 284
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    .line 285
    new-instance v0, Lcom/google/googlenav/ui/wizard/gk;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gk;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->M:Lcom/google/googlenav/actionbar/b;

    .line 320
    return-void
.end method

.method public static C()V
    .registers 0

    .prologue
    .line 1590
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->i()V

    .line 1591
    return-void
.end method

.method public static D()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1757
    sget-object v0, Lcom/google/googlenav/ui/wizard/gj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static E()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1765
    sget-object v0, Lcom/google/googlenav/ui/wizard/gj;->b:Ljava/lang/String;

    return-object v0
.end method

.method private F()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 489
    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gj;->E:Z

    if-eqz v2, :cond_7

    .line 523
    :cond_6
    :goto_6
    return v0

    .line 495
    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    sget-object v3, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 496
    goto :goto_6

    .line 499
    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 503
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 504
    iget-wide v4, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_39

    iget-wide v4, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    const-wide/32 v6, 0xdbba0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_39
    move v0, v1

    .line 506
    goto :goto_6

    .line 513
    :cond_3b
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->z:Lat/H;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    if-nez v2, :cond_45

    :cond_43
    move v0, v1

    .line 514
    goto :goto_6

    .line 516
    :cond_45
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v2}, Lat/u;->c()Lat/B;

    move-result-object v2

    .line 517
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->z:Lat/H;

    invoke-virtual {v3}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v4}, Lat/u;->f()Lat/H;

    move-result-object v4

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    if-ne v3, v4, :cond_71

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    invoke-virtual {v2, v3}, Lat/B;->a(Lat/B;)J

    move-result-wide v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_71
    move v0, v1

    .line 520
    goto :goto_6
.end method

.method private G()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 532
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 533
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    .line 534
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    .line 535
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    .line 536
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    .line 537
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 538
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->u:Ljava/util/List;

    .line 539
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    .line 540
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->w:Ljava/util/List;

    .line 541
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    .line 542
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    .line 543
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    .line 544
    return-void
.end method

.method private H()V
    .registers 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->p()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->o()Z

    move-result v0

    if-nez v0, :cond_d

    .line 570
    :cond_c
    :goto_c
    return-void

    .line 563
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-nez v0, :cond_18

    .line 564
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->K()V

    .line 569
    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    goto :goto_c

    .line 566
    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->y()V

    .line 567
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->J()V

    goto :goto_14
.end method

.method private I()V
    .registers 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v0, :cond_10

    .line 582
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, LaC/g;->a(Ljava/lang/String;Z)V

    .line 584
    :cond_10
    return-void

    .line 582
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private J()V
    .registers 5

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-nez v0, :cond_5

    .line 599
    :goto_4
    return-void

    .line 595
    :cond_5
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->I()V

    .line 597
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->W()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, LaC/g;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private K()V
    .registers 13

    .prologue
    .line 608
    new-instance v0, LaC/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/D;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->W()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/gj;->w:Ljava/util/List;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    :goto_21
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v8

    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v11

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, LaC/g;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZZLcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/wizard/gi;Lcom/google/googlenav/br;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    .line 620
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-virtual {v0}, LaC/g;->show()V

    .line 621
    return-void

    .line 608
    :cond_36
    const/4 v7, 0x0

    goto :goto_21
.end method

.method private L()V
    .registers 4

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 800
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 801
    if-eqz v0, :cond_19

    .line 802
    new-instance v0, LaC/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bS()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, LaC/B;-><init>(Lcom/google/googlenav/ui/wizard/gi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    .line 805
    :cond_19
    return-void

    .line 799
    :cond_1a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private M()V
    .registers 4

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 825
    :goto_4
    return-void

    .line 811
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    .line 812
    new-instance v0, Lcom/google/googlenav/ui/wizard/gu;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gu;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    .line 823
    new-instance v1, Lcom/google/googlenav/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    goto :goto_4
.end method

.method private N()V
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->J:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_c

    .line 958
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->J:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->hide()V

    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->J:Lcom/google/googlenav/ui/view/android/V;

    .line 961
    :cond_c
    return-void
.end method

.method private O()Z
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_e

    .line 968
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->hide()V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private P()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1301
    iget v1, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    if-eq v1, v0, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->l:Lcom/google/googlenav/ui/ap;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->l:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private Q()V
    .registers 2

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1341
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->R()V

    .line 1345
    :goto_9
    return-void

    .line 1343
    :cond_a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->S()V

    goto :goto_9
.end method

.method private R()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1351
    sget-object v0, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    .line 1352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1353
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->U()Lat/B;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_19

    .line 1357
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->I()V

    .line 1358
    invoke-direct {p0, v0, v1, v1}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/B;Lat/H;Ljava/lang/String;)V

    .line 1361
    :cond_19
    return-void
.end method

.method private S()V
    .registers 4

    .prologue
    .line 1364
    sget-object v0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gx;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    .line 1365
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_23

    .line 1367
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    .line 1368
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->z:Lat/H;

    .line 1371
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->I()V

    .line 1372
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/B;Lat/H;Ljava/lang/String;)V

    .line 1374
    :cond_23
    return-void
.end method

.method private static T()Ljava/util/List;
    .registers 3

    .prologue
    const/16 v2, 0xa

    .line 1460
    sget-object v0, Lcom/google/googlenav/ui/wizard/gj;->L:Ljava/util/List;

    if-nez v0, :cond_3a

    .line 1461
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1462
    const/4 v1, 0x2

    invoke-static {v1, v2}, LaC/q;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    const/4 v1, 0x7

    invoke-static {v1, v2}, LaC/q;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    const/4 v1, 0x6

    invoke-static {v1, v2}, LaC/q;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ag()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1470
    const/4 v1, 0x4

    const/16 v2, 0x14

    invoke-static {v1, v2}, LaC/q;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_38
    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->L:Ljava/util/List;

    .line 1475
    :cond_3a
    sget-object v0, Lcom/google/googlenav/ui/wizard/gj;->L:Ljava/util/List;

    return-object v0
.end method

.method private U()Lat/B;
    .registers 8

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 1538
    if-eqz v1, :cond_3a

    .line 1539
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_3a

    .line 1541
    invoke-virtual {v1}, Lan/s;->getTime()J

    move-result-wide v1

    .line 1542
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    if-eqz v3, :cond_35

    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    invoke-virtual {v0, v3}, Lat/B;->a(Lat/B;)J

    move-result-wide v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_3a

    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3a

    .line 1547
    :cond_35
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    .line 1548
    iput-wide v1, p0, Lcom/google/googlenav/ui/wizard/gj;->F:J

    .line 1553
    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private V()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 1562
    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1561
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private W()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1568
    :cond_12
    const/4 v0, 0x0

    .line 1570
    :goto_13
    return-object v0

    :cond_14
    const/16 v0, 0x3b7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private X()V
    .registers 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aj()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1835
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Y()Lcom/google/googlenav/ui/wizard/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/js;->h()V

    .line 1837
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    .line 1838
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gj;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bd;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1050
    new-instance v0, Lcom/google/googlenav/ba;

    const-string v1, ""

    invoke-direct {v0, v5, v1, p2}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1053
    new-instance v1, Lcom/google/googlenav/aZ;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2, v0}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 1057
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1058
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x5f9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/bd;->k(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1070
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/bd;)V

    .line 1071
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/bd;)V

    .line 1072
    return-object v0
.end method

.method static a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lan/h;Lcom/google/googlenav/ui/ap;Lat/u;)Lcom/google/googlenav/ui/wizard/gj;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    new-instance v0, Lcom/google/googlenav/ui/wizard/gj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/gj;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lan/h;Lcom/google/googlenav/ui/ap;Lat/u;)V

    .line 332
    return-object v0
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/ArrayList;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x7

    .line 1672
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1673
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    .line 1676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1677
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_2c

    .line 1678
    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1679
    new-instance v4, LaC/O;

    const-string v5, "pl"

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v6}, LaC/O;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, LaC/N;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaC/O;)LaC/N;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1684
    :cond_2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_65

    .line 1685
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    .line 1686
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->g()Ljava/util/List;

    move-result-object v0

    .line 1687
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 1689
    new-instance v3, LaC/N;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    new-instance v4, LaC/O;

    const/4 v5, -0x1

    const-string v6, "pl"

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, LaC/O;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v0, v4}, LaC/N;-><init>(Ljava/lang/String;LaC/O;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1694
    :cond_65
    return-object v2
.end method

.method private a(Lat/B;Lat/H;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1479
    new-instance v0, LaC/q;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/gj;->T()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, LaC/q;-><init>(Ljava/util/List;Lat/B;LaC/r;)V

    .line 1480
    if-eqz p2, :cond_1a

    .line 1481
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v1, p2}, Lat/u;->a(Lat/H;)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v2, p2}, Lat/u;->b(Lat/H;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaC/q;->b(II)V

    .line 1484
    :cond_1a
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 1486
    return-void
.end method

.method private a(Lat/B;Lat/H;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1406
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->H:Z

    if-eqz v0, :cond_a5

    .line 1409
    const-string v0, "n"

    .line 1413
    :goto_8
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    .line 1414
    iput-boolean v6, p0, Lcom/google/googlenav/ui/wizard/gj;->H:Z

    .line 1415
    const/16 v1, 0x57

    const-string v2, "stp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1422
    new-instance v1, Lcom/google/googlenav/friend/bi;

    invoke-direct {v1}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v2

    invoke-virtual {v2}, Las/f;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/friend/bi;->d(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/friend/bi;->e(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    .line 1432
    if-eqz p2, :cond_90

    .line 1433
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v2, p2}, Lat/u;->a(Lat/H;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->d(I)Lcom/google/googlenav/friend/bi;

    .line 1434
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v2, p2}, Lat/u;->b(Lat/H;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->e(I)Lcom/google/googlenav/friend/bi;

    .line 1437
    :cond_90
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/H;)V

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/B;Lat/H;)V

    .line 1442
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v1

    invoke-virtual {v2, v1}, Lac/h;->c(Lac/g;)V

    .line 1444
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1445
    return-void

    .line 1411
    :cond_a5
    const-string v0, "a"

    goto/16 :goto_8
.end method

.method private a(Lat/H;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1451
    if-eqz p1, :cond_16

    .line 1452
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->l:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->p()V

    .line 1453
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v1

    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 1457
    :goto_15
    return-void

    .line 1455
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->l:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/googlenav/ui/ap;->a(ZZZ)V

    goto :goto_15
.end method

.method private a(Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1730
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 1734
    :cond_8
    const-string v0, "Not available yet"

    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->b:Ljava/lang/String;

    .line 1735
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->c:Ljava/lang/String;

    .line 1737
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v1

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    .line 1739
    const/4 v0, 0x0

    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_3f

    .line 1740
    aget-object v2, v1, v0

    .line 1741
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->an()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    .line 1742
    new-instance v3, LaC/O;

    const-string v4, "pl"

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/gj;->r:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v5}, LaC/O;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1745
    new-instance v4, LaC/N;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v2, v5, v3}, LaC/N;-><init>(Ljava/lang/String;Ljava/lang/String;ILaC/O;)V

    .line 1747
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1749
    :cond_3f
    return-void
.end method

.method private a(Lcom/google/googlenav/bd;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    sget-object v3, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    if-ne v0, v3, :cond_71

    .line 1103
    invoke-virtual {p1, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->V()Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {v3, v0}, Lcom/google/googlenav/bd;->d(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 1109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1110
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v3

    .line 1111
    if-eqz v3, :cond_3f

    move v0, v1

    :goto_28
    move-object v1, v3

    .line 1118
    :goto_29
    if-eqz v0, :cond_3c

    .line 1119
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 1120
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    .line 1121
    invoke-virtual {p1, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    .line 1126
    :cond_3c
    :goto_3c
    return-void

    .line 1103
    :cond_3d
    const/4 v0, 0x0

    goto :goto_14

    :cond_3f
    move v0, v2

    .line 1111
    goto :goto_28

    .line 1113
    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->b()Lan/s;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6f

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xdbba0

    cmp-long v3, v3, v5

    if-gez v3, :cond_6f

    :goto_6b
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_29

    :cond_6f
    move v1, v2

    goto :goto_6b

    .line 1123
    :cond_71
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->c:Lcom/google/googlenav/ui/wizard/gx;

    if-ne v0, v1, :cond_3c

    .line 1124
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->z:Lat/H;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    goto :goto_3c
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gj;Lat/B;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gj;->b(Lat/B;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gj;Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/ai;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gj;Ljava/lang/String;Lat/H;Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;Lat/H;Lcom/google/googlenav/aW;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/gy;)V
    .registers 9
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_a

    .line 664
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/wizard/gy;->a(Lcom/google/googlenav/ai;)V

    .line 685
    :goto_9
    return-void

    .line 666
    :cond_a
    new-instance v0, Lcom/google/googlenav/ui/wizard/gp;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/gp;-><init>(Lcom/google/googlenav/ui/wizard/gj;Lcom/google/googlenav/ui/wizard/gy;)V

    .line 680
    new-instance v2, Lcom/google/googlenav/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 683
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    goto :goto_9
.end method

.method private a(Ljava/lang/String;Lat/H;Lcom/google/googlenav/aW;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1377
    sget-object v0, Lcom/google/googlenav/ui/wizard/gx;->c:Lcom/google/googlenav/ui/wizard/gx;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    .line 1378
    invoke-virtual {p2}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 1379
    if-eqz v0, :cond_2b

    .line 1381
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->y:Lat/B;

    .line 1382
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gj;->z:Lat/H;

    .line 1384
    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2c

    .line 1389
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    .line 1390
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/H;)V

    .line 1393
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/aW;)V

    .line 1395
    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/B;Lat/H;)V

    .line 1396
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->J()V

    .line 1402
    :cond_2b
    :goto_2b
    return-void

    .line 1399
    :cond_2c
    invoke-direct {p0, v0, p2, p1}, Lcom/google/googlenav/ui/wizard/gj;->a(Lat/B;Lat/H;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gj;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/gj;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gj;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gj;Lcom/google/googlenav/ai;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;LaC/N;)Lcom/google/googlenav/bd;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1079
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->d(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->f(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->g(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bd;->a(LaC/N;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1092
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/bd;)V

    .line 1093
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/bd;)V

    .line 1094
    return-object v0
.end method

.method private b(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1324
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    if-nez v0, :cond_6

    .line 1337
    :goto_5
    return-void

    .line 1328
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    .line 1329
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 1330
    new-instance v1, Lcom/google/googlenav/bd;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    invoke-direct {v1, v2}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bd;->d(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1333
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    .line 1334
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1336
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    goto :goto_5
.end method

.method private b(Lcom/google/googlenav/ai;)V
    .registers 6
    .parameter

    .prologue
    .line 778
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_b

    .line 780
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 782
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    .line 783
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ai;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v2, v0}, Lat/u;->a(Lat/H;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    invoke-virtual {v3, v0}, Lat/u;->b(Lat/H;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 790
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->b(Lcom/google/googlenav/aW;)LaM/x;

    .line 791
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaM/i;->a(B)V

    .line 795
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->L()V

    .line 796
    return-void
.end method

.method private b(Lcom/google/googlenav/bd;)V
    .registers 3
    .parameter

    .prologue
    .line 1129
    new-instance v0, Lcom/google/googlenav/ui/wizard/gw;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gw;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    .line 1157
    invoke-virtual {p1, v0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    .line 1158
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1708
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 1715
    :goto_8
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->b:Ljava/lang/String;

    .line 1716
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->c:Ljava/lang/String;

    .line 1717
    return-void

    .line 1710
    :cond_15
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    goto :goto_8
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gj;->w:Ljava/util/List;

    .line 1948
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v0, :cond_11

    .line 1949
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->w:Ljava/util/List;

    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaC/g;->a(Ljava/util/List;Lcom/google/googlenav/br;)V

    .line 1951
    :cond_11
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gj;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/bd;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x10

    const/4 v6, 0x0

    const/16 v5, 0x57

    .line 1222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0}, Lan/h;->b()Lan/s;

    move-result-object v7

    .line 1223
    if-eqz v7, :cond_6c

    .line 1225
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-virtual {v7}, Lan/s;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1226
    const-string v2, "lkl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_36
    invoke-virtual {p1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/bc;->f:Lat/H;

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    .line 1232
    :goto_3f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v1

    if-eqz v1, :cond_47

    if-eqz v0, :cond_80

    .line 1235
    :cond_47
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v1

    if-nez v1, :cond_76

    .line 1236
    const-string v0, "f"

    const-string v1, "v"

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v1, v8}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1248
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 1284
    :cond_6b
    :goto_6b
    return-void

    .line 1228
    :cond_6c
    const-string v0, "nlkl"

    const-string v1, ""

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_74
    move v0, v6

    .line 1231
    goto :goto_3f

    .line 1239
    :cond_76
    if-eqz v0, :cond_54

    .line 1241
    const-string v0, "f"

    const-string v1, "h"

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 1253
    :cond_80
    const-string v0, "f"

    const-string v1, "w"

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    .line 1263
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x299

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, v8}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 1266
    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Lan/s;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 1267
    new-instance v0, LY/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/gl;

    invoke-direct {v2, p0, v7}, Lcom/google/googlenav/ui/wizard/gl;-><init>(Lcom/google/googlenav/ui/wizard/gj;Lan/s;)V

    invoke-direct {v0, v1, v2}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 1281
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 1282
    invoke-virtual {v0}, LY/d;->g()V

    goto :goto_6b
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->G()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/gj;)Lan/h;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->R()V

    return-void
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/gj;)Lat/u;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->m:Lat/u;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/gj;)Lcom/google/googlenav/bc;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/wizard/gj;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->C:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public A()V
    .registers 5

    .prologue
    .line 1499
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1531
    :goto_6
    return-void

    .line 1507
    :cond_7
    new-instance v0, Lcom/google/googlenav/ui/wizard/gn;

    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bj;->h()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/gn;-><init>(Lcom/google/googlenav/ui/wizard/gj;Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 1530
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_6
.end method

.method public B()I
    .registers 2

    .prologue
    .line 1585
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    return v0
.end method

.method public D_()V
    .registers 3

    .prologue
    .line 2006
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v1, :cond_12

    .line 2009
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-virtual {v1, v0}, LaC/g;->b(Lcom/google/googlenav/br;)V

    .line 2010
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-virtual {v1, v0}, LaC/g;->a(Lcom/google/googlenav/br;)V

    .line 2015
    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->Q()V

    .line 2016
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 2021
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 2026
    return-void
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 2002
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 2031
    return-void
.end method

.method public R_()Z
    .registers 2

    .prologue
    .line 1850
    const/4 v0, 0x1

    return v0
.end method

.method public S_()V
    .registers 1

    .prologue
    .line 1856
    return-void
.end method

.method public T_()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    .line 480
    iget v1, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    .line 482
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/gj;->a(LaM/am;I)V

    .line 484
    return-void
.end method

.method public U_()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/E;)V

    .line 654
    return-void
.end method

.method public V_()V
    .registers 3

    .prologue
    .line 716
    const/16 v0, 0x57

    const-string v1, "ph"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    .line 723
    new-instance v0, Lcom/google/googlenav/ui/wizard/gr;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gr;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gy;)V

    .line 730
    return-void
.end method

.method public W_()V
    .registers 4

    .prologue
    .line 754
    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/ep;-><init>()V

    .line 755
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-interface {v1}, Lcom/google/googlenav/J;->m()LaM/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    .line 756
    new-instance v1, Lcom/google/googlenav/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    invoke-direct {v1, v2}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ai;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ui/wizard/ep;->c:Z

    .line 758
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    .line 759
    return-void
.end method

.method public X_()V
    .registers 3

    .prologue
    .line 763
    const/16 v0, 0x57

    const-string v1, "p"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    .line 769
    new-instance v0, Lcom/google/googlenav/ui/wizard/gt;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gt;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gy;)V

    .line 775
    return-void
.end method

.method public Y_()V
    .registers 7

    .prologue
    const/16 v5, 0xc9

    const/4 v4, 0x1

    .line 842
    const/16 v0, 0x57

    const-string v1, "d"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v2}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    const/16 v3, 0x510

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    const/16 v3, 0x61e

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->u:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/dO;->e(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 858
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 859
    return-void
.end method

.method public Z_()V
    .registers 4

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_18

    .line 864
    new-instance v0, LaC/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->s:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bS()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, LaC/B;-><init>(Lcom/google/googlenav/ui/wizard/gi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    .line 866
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->show()V

    .line 868
    :cond_18
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 977
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 978
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->h()V

    .line 979
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gj;->g:I

    .line 986
    :goto_d
    return v0

    .line 981
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-nez v0, :cond_14

    .line 983
    const/4 v0, 0x4

    goto :goto_d

    .line 986
    :cond_14
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gj;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-nez v0, :cond_6

    .line 993
    const/4 v0, 0x4

    .line 996
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gj;->g:I

    goto :goto_5
.end method

.method public a(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 1005
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/C;->a(Lat/B;)I

    move-result v0

    goto :goto_b
.end method

.method public a(ILan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->X()V

    .line 1831
    return-void
.end method

.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    .line 1774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    .line 1775
    return-void
.end method

.method public a(LaC/o;)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x4

    .line 1955
    invoke-virtual {p1}, LaC/o;->c()Ljava/util/List;

    move-result-object v1

    .line 1956
    invoke-virtual {p1}, LaC/o;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, ""

    .line 1957
    :goto_e
    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_23

    .line 1959
    :cond_16
    invoke-virtual {p1}, LaC/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;Ljava/lang/String;LaC/N;)V

    .line 1995
    :goto_1d
    return-void

    .line 1956
    :cond_1e
    invoke-virtual {p1}, LaC/o;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1963
    :cond_23
    invoke-virtual {p1}, LaC/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/lang/String;Ljava/lang/String;LaC/N;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1966
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    .line 1968
    invoke-virtual {p1, v7}, LaC/o;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1971
    const/16 v2, 0x58

    const-string v3, "s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "t=l"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ub=f"

    aput-object v6, v4, v5

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_4e
    invoke-virtual {p1, v7}, LaC/o;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1983
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/J;->b(Ljava/util/List;Lcom/google/googlenav/bc;)LaM/aI;

    move-result-object v0

    .line 1988
    :goto_5e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->e(LaM/i;)V

    .line 1989
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/bj;->a(B)V

    .line 1991
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1993
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    goto :goto_1d

    .line 1985
    :cond_7b
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/J;->a(Ljava/util/List;Lcom/google/googlenav/bc;)LaM/bj;

    move-result-object v0

    goto :goto_5e
.end method

.method public a(LaM/am;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    .line 338
    const/16 v0, 0x57

    const-string v1, "ac"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x4

    if-eq p2, v0, :cond_19

    .line 344
    iput p2, p0, Lcom/google/googlenav/ui/wizard/gj;->i:I

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->E:Z

    .line 352
    :goto_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->j()V

    .line 353
    return-void

    .line 348
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->E:Z

    goto :goto_15
.end method

.method public a(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 2062
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    .line 2063
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 2065
    :cond_a
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    .line 1862
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->b()V

    .line 1863
    const/4 v0, 0x4

    invoke-static {p3, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 1864
    const/4 v0, 0x3

    invoke-static {p3, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    .line 1865
    const/16 v0, 0xa

    invoke-static {p3, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    .line 1869
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_2b

    .line 1870
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->hide()V

    .line 1871
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->Z_()V

    .line 1875
    :cond_2b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->M()V

    .line 1876
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1796
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->D:Lcom/google/googlenav/ui/wizard/gx;

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    if-ne v0, v1, :cond_f

    .line 1799
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 1800
    :try_start_a
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->B:Z

    if-eqz v0, :cond_10

    .line 1801
    monitor-exit v1

    .line 1826
    :cond_f
    :goto_f
    return-void

    .line 1803
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->B:Z

    .line 1804
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_23

    .line 1806
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/go;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/go;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_f

    .line 1804
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 6
    .parameter

    .prologue
    .line 706
    const/16 v0, 0x57

    const-string v1, "rpc"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    const/4 v2, 0x0

    const-string v3, "plrp"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 712
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1624
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 1625
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gj;->t:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1626
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gj;->u:Ljava/util/List;

    .line 1627
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1628
    const/4 v1, 0x0

    .line 1629
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->a:Lcom/google/googlenav/a;

    invoke-static {v3}, Lcom/google/googlenav/friend/aK;->a(Lcom/google/googlenav/a;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 1630
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->a:Lcom/google/googlenav/a;

    invoke-virtual {v1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1632
    :goto_21
    if-eqz v4, :cond_41

    move v1, v2

    move-object v3, v0

    .line 1634
    :goto_25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 1635
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1636
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v3, v0

    .line 1634
    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_41
    move-object v3, v0

    .line 1643
    :cond_42
    const/4 v0, 0x3

    invoke-static {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->p:Ljava/lang/String;

    .line 1644
    const/16 v0, 0xa

    invoke-static {v3, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->q:Ljava/lang/String;

    .line 1647
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1648
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    .line 1651
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    if-nez v0, :cond_69

    .line 1652
    const/4 v0, 0x4

    invoke-static {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    .line 1653
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->o:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/gj;->c:Ljava/lang/String;

    .line 1658
    :cond_69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->M()V

    .line 1665
    :goto_6c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->J()V

    .line 1666
    return-void

    .line 1661
    :cond_70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->v:Ljava/util/List;

    goto :goto_6c

    :cond_78
    move-object v4, v1

    goto :goto_21
.end method

.method public a(Lcom/google/googlenav/ui/wizard/F;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x57

    .line 1029
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1030
    iget v0, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 1031
    const-string v0, "u"

    iget-object v1, p1, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    :goto_12
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;)V

    .line 1039
    :cond_17
    return-void

    .line 1034
    :cond_18
    const-string v0, "c"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1165
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;Ljava/lang/String;LaC/N;)V

    .line 1166
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LaC/N;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1203
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/lang/String;Ljava/lang/String;LaC/N;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1209
    if-eqz p3, :cond_11

    .line 1210
    const/16 v1, 0x57

    const-string v2, "t"

    invoke-virtual {p3}, LaC/N;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_11
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->c(Lcom/google/googlenav/bd;)V

    .line 1216
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    .line 1920
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "t="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1922
    const/4 v0, 0x0

    .line 1924
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1926
    new-instance v5, LaC/o;

    invoke-direct {v5, v0, p0}, LaC/o;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/gi;)V

    .line 1927
    invoke-virtual {v5}, LaC/o;->e()LaC/w;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_52

    .line 1929
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1930
    if-eqz v1, :cond_37

    .line 1931
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1933
    :cond_37
    const/4 v0, 0x1

    .line 1934
    invoke-virtual {v5}, LaC/o;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3f
    move v1, v0

    .line 1936
    goto :goto_16

    .line 1937
    :cond_41
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/util/List;)V

    .line 1940
    if-eqz v1, :cond_51

    .line 1941
    const/16 v0, 0x6f

    const-string v1, "pi"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1944
    :cond_51
    return-void

    :cond_52
    move v0, v1

    goto :goto_3f
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    .line 632
    sparse-switch p1, :sswitch_data_38

    .line 648
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 634
    :sswitch_8
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->h()V

    .line 637
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 638
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_7

    .line 642
    :sswitch_25
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 645
    :sswitch_33
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->U_()V

    goto :goto_7

    .line 632
    nop

    :sswitch_data_38
    .sparse-switch
        0x70e -> :sswitch_33
        0x9cd -> :sswitch_25
        0x9d4 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 5
    .parameter

    .prologue
    .line 1786
    check-cast p1, Lcom/google/googlenav/ui/view/a;

    .line 1787
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gj;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public aa_()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 875
    const/16 v0, 0xc

    .line 878
    const/16 v1, 0x57

    const-string v2, "sloc"

    const-string v3, ""

    invoke-static {v1, v2, v3}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 882
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v3, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v3}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    const/16 v4, 0xc9

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/dO;->a(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/dO;->e(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->N:Lcom/google/googlenav/ui/wizard/dG;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 890
    return-void
.end method

.method public ab_()Z
    .registers 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public ac_()V
    .registers 4

    .prologue
    .line 1173
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_12

    .line 1175
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-interface {v1}, Lcom/google/googlenav/J;->l()Lcom/google/googlenav/L;

    move-result-object v1

    iget-object v0, v0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 1177
    :cond_12
    return-void
.end method

.method public ad_()V
    .registers 5

    .prologue
    .line 1184
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_24

    .line 1187
    iget-object v1, v0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 1190
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->c(Lcom/google/googlenav/bd;)V

    .line 1192
    :cond_24
    return-void
.end method

.method public ae_()Z
    .registers 2

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->o()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aj()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    if-nez v0, :cond_f

    .line 412
    const-string v0, "PLACES_NULL_LAYER"

    invoke-static {v0}, LaT/k;->a(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 475
    :goto_e
    return-void

    .line 418
    :cond_f
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 419
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bj;->a(Las/h;)V

    .line 422
    :cond_1c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->F()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 423
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->G()V

    .line 424
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v0, :cond_32

    .line 425
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->P()Z

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, LaC/g;->a(Ljava/lang/String;ZZ)V

    .line 429
    :cond_32
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    .line 430
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    .line 431
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    .line 432
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gj;->H:Z

    .line 439
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_58

    .line 441
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 445
    :cond_58
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->E:Z

    if-nez v0, :cond_74

    .line 449
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->A:Ljava/lang/String;

    if-nez v0, :cond_63

    .line 450
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->Q()V

    .line 453
    :cond_63
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-nez v0, :cond_74

    .line 464
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->h()V

    .line 467
    :cond_74
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->A()V

    .line 468
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->H()V

    .line 470
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_83

    .line 471
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->I:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->show()V

    .line 474
    :cond_83
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->J()V

    goto :goto_e
.end method

.method public b(Lcom/google/googlenav/ui/wizard/F;)V
    .registers 3
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/F;Lcom/google/googlenav/ui/wizard/E;)V

    .line 659
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1309
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 1310
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->n:LaM/am;

    invoke-virtual {v0}, LaM/am;->y()LaM/bx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaM/bx;->a(Ljava/lang/String;Z)V

    .line 1311
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 1781
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    if-eqz v0, :cond_9

    .line 1012
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->H()V

    .line 1013
    const/4 v0, 0x1

    .line 1015
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/C;->b(Z)Z

    move-result v0

    goto :goto_8
.end method

.method public c()V
    .registers 2

    .prologue
    .line 380
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 383
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 384
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bj;->b(Las/h;)V

    .line 387
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    if-eqz v0, :cond_19

    .line 388
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->k:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->b(Lan/y;)V

    .line 392
    :cond_19
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    .line 393
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v0, :cond_28

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-virtual {v0}, LaC/g;->hide()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    .line 398
    :cond_28
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->Z()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->d()Lcom/google/googlenav/ui/wizard/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    .line 406
    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->j:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    .line 407
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/util/List;)V

    .line 1911
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gj;->x:Z

    .line 2038
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->y()V

    .line 2039
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    move-result v0

    .line 928
    if-eqz v0, :cond_7

    .line 948
    :goto_6
    return-void

    .line 933
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->J:Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_f

    .line 934
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->N()V

    goto :goto_6

    .line 940
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_33

    .line 942
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 944
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->a()V

    .line 947
    :cond_33
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    goto :goto_6
.end method

.method public i()V
    .registers 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public k()I
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1e

    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->j()V

    .line 372
    const/16 v0, 0xa

    .line 375
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public l()V
    .registers 3

    .prologue
    .line 689
    const/16 v0, 0x57

    const-string v1, "r"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 693
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    .line 695
    new-instance v0, Lcom/google/googlenav/ui/wizard/gq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gq;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gy;)V

    .line 702
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 549
    return-void
.end method

.method public q()V
    .registers 2

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->O()Z

    .line 737
    new-instance v0, Lcom/google/googlenav/ui/wizard/gs;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gs;-><init>(Lcom/google/googlenav/ui/wizard/gj;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gy;)V

    .line 750
    return-void
.end method

.method public w()Lcom/google/googlenav/actionbar/b;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->M:Lcom/google/googlenav/actionbar/b;

    return-object v0
.end method

.method public y()V
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    if-eqz v0, :cond_17

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->b()Lcom/google/googlenav/ui/wizard/D;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gj;->K:LaC/g;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, LaC/g;->a(Ljava/util/List;)V

    .line 577
    :cond_17
    return-void
.end method

.method public z()V
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gj;->G:Lcom/google/googlenav/bc;

    if-eqz v0, :cond_7

    .line 1023
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gj;->X()V

    .line 1025
    :cond_7
    return-void
.end method
