.class public Laj/j;
.super Laj/v;
.source "SourceFile"


# instance fields
.field private A:F

.field private B:F

.field private C:J

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/view/MotionEvent;

.field private c:Landroid/view/MotionEvent;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Laj/e;

.field private final g:Laj/e;

.field private final h:Laj/e;

.field private final i:Laj/e;

.field private final j:Ljava/util/LinkedList;

.field private k:J

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Laj/l;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Laj/v;-><init>(Landroid/content/Context;Laj/w;)V

    .line 286
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laj/j;->d:Ljava/util/List;

    .line 287
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laj/j;->e:Ljava/util/List;

    .line 294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    .line 336
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 337
    iput-object p1, p0, Laj/j;->a:Landroid/content/Context;

    .line 338
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laj/j;->D:F

    .line 340
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->A()Z

    move-result v0

    .line 345
    iget-object v1, p0, Laj/j;->d:Ljava/util/List;

    new-instance v2, Laj/A;

    invoke-direct {v2, p2}, Laj/A;-><init>(Laj/l;)V

    iput-object v2, p0, Laj/j;->g:Laj/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    if-eqz v0, :cond_65

    .line 348
    iget-object v1, p0, Laj/j;->d:Ljava/util/List;

    new-instance v2, Laj/s;

    invoke-direct {v2, p2}, Laj/s;-><init>(Laj/l;)V

    iput-object v2, p0, Laj/j;->h:Laj/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v1, "MD"

    const-string v2, "T"

    invoke-static {v1, v2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_4c
    iget-object v1, p0, Laj/j;->d:Ljava/util/List;

    new-instance v2, Laj/u;

    invoke-direct {v2, p2, v0}, Laj/u;-><init>(Laj/l;Z)V

    iput-object v2, p0, Laj/j;->f:Laj/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Laj/j;->d:Ljava/util/List;

    new-instance v1, Laj/C;

    invoke-direct {v1, p2}, Laj/C;-><init>(Laj/l;)V

    iput-object v1, p0, Laj/j;->i:Laj/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void

    .line 351
    :cond_65
    iget-object v1, p0, Laj/j;->d:Ljava/util/List;

    new-instance v2, Laj/y;

    invoke-direct {v2, p2}, Laj/y;-><init>(Laj/l;)V

    iput-object v2, p0, Laj/j;->h:Laj/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v1, "MD"

    const-string v2, "F"

    invoke-static {v1, v2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 617
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private a(Laj/e;)Z
    .registers 3
    .parameter

    .prologue
    .line 511
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Laj/e;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 625
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 536
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Laj/j;->k:J

    .line 541
    :cond_13
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    new-instance v2, Laj/a;

    invoke-direct {v2, p1}, Laj/a;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_32

    .line 545
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    invoke-virtual {v0}, Laj/h;->d()V

    .line 550
    :cond_32
    :goto_32
    invoke-direct {p0}, Laj/j;->m()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_4d

    .line 551
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    invoke-virtual {v0}, Laj/h;->d()V

    goto :goto_32

    .line 556
    :cond_4d
    sparse-switch v1, :sswitch_data_9c

    :goto_50
    move v4, v6

    .line 571
    :goto_51
    iget-boolean v0, p0, Laj/j;->J:Z

    if-eqz v0, :cond_83

    .line 572
    iget-object v0, p0, Laj/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5b
    :goto_5b
    :pswitch_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 575
    invoke-virtual {v0}, Laj/e;->a()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 579
    sget-object v8, Laj/k;->a:[I

    iget-wide v1, p0, Laj/j;->k:J

    iget-object v3, p0, Laj/j;->j:Ljava/util/LinkedList;

    iget-object v5, p0, Laj/j;->e:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Laj/e;->a(JLjava/util/LinkedList;ZLjava/util/List;)Laj/f;

    move-result-object v1

    invoke-virtual {v1}, Laj/f;->ordinal()I

    move-result v1

    aget v1, v8, v1

    packed-switch v1, :pswitch_data_aa

    goto :goto_5b

    .line 600
    :cond_83
    :pswitch_83
    if-eqz v4, :cond_8a

    .line 601
    invoke-direct {p0}, Laj/j;->l()V

    .line 602
    iput-boolean v6, p0, Laj/j;->J:Z

    .line 604
    :cond_8a
    return-void

    .line 562
    :sswitch_8b
    const/4 v4, 0x1

    .line 563
    goto :goto_51

    .line 566
    :sswitch_8d
    iput-boolean v6, p0, Laj/j;->J:Z

    goto :goto_50

    .line 591
    :pswitch_90
    invoke-virtual {v0, p0}, Laj/e;->a(Laj/j;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 592
    iget-object v1, p0, Laj/j;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 556
    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_8d
        0x6 -> :sswitch_8b
        0x106 -> :sswitch_8b
    .end sparse-switch

    .line 579
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_83
        :pswitch_90
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 629
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Laj/j;->c:Landroid/view/MotionEvent;

    .line 631
    iput v1, p0, Laj/j;->t:F

    .line 632
    iput v1, p0, Laj/j;->u:F

    .line 633
    iput v1, p0, Laj/j;->x:F

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Laj/j;->y:F

    .line 635
    iput-boolean v9, p0, Laj/j;->H:Z

    .line 636
    iput-boolean v9, p0, Laj/j;->I:Z

    .line 638
    iget-object v0, p0, Laj/j;->b:Landroid/view/MotionEvent;

    .line 640
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 641
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 642
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 643
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 644
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 645
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 646
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 647
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 649
    sub-float/2addr v3, v1

    .line 650
    sub-float/2addr v4, v2

    .line 651
    sub-float/2addr v7, v5

    .line 652
    sub-float/2addr v8, v6

    .line 653
    iput v3, p0, Laj/j;->p:F

    .line 654
    iput v4, p0, Laj/j;->q:F

    .line 655
    iput v7, p0, Laj/j;->r:F

    .line 656
    iput v8, p0, Laj/j;->s:F

    .line 657
    iput v2, p0, Laj/j;->v:F

    .line 658
    iput v6, p0, Laj/j;->w:F

    .line 660
    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, Laj/j;->l:F

    .line 661
    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, Laj/j;->m:F

    .line 662
    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, Laj/j;->n:F

    .line 663
    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, Laj/j;->o:F

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Laj/j;->C:J

    .line 665
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Laj/j;->A:F

    .line 666
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Laj/j;->B:F

    .line 667
    return-void
.end method

.method private j()Z
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Laj/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private k()Z
    .registers 4

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Laj/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 518
    invoke-virtual {v0, p0}, Laj/e;->e(Laj/j;)Z

    move-result v0

    .line 519
    or-int/2addr v0, v1

    move v1, v0

    .line 520
    goto :goto_8

    .line 521
    :cond_1b
    return v1
.end method

.method private l()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Laj/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 527
    invoke-virtual {v0, p0}, Laj/e;->c(Laj/j;)V

    goto :goto_6

    .line 529
    :cond_16
    return-void
.end method

.method private m()Z
    .registers 6

    .prologue
    .line 607
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    invoke-virtual {v0}, Laj/h;->a()J

    move-result-wide v1

    .line 608
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    invoke-virtual {v0}, Laj/h;->a()J

    move-result-wide v3

    .line 609
    sub-long v0, v3, v1

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private n()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 670
    iput-object v1, p0, Laj/j;->b:Landroid/view/MotionEvent;

    .line 671
    iput-object v1, p0, Laj/j;->c:Landroid/view/MotionEvent;

    .line 672
    iput-boolean v0, p0, Laj/j;->G:Z

    .line 673
    iput-boolean v0, p0, Laj/j;->J:Z

    .line 674
    iget-object v0, p0, Laj/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 675
    invoke-direct {p0}, Laj/j;->o()V

    .line 676
    iget-object v0, p0, Laj/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/e;

    .line 677
    invoke-virtual {v0}, Laj/e;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 678
    invoke-virtual {v0, p0}, Laj/e;->c(Laj/j;)V

    goto :goto_18

    .line 681
    :cond_2e
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj/h;

    .line 685
    invoke-virtual {v0}, Laj/h;->d()V

    goto :goto_6

    .line 687
    :cond_16
    iget-object v0, p0, Laj/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 688
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 703
    iget v0, p0, Laj/j;->l:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const v5, 0xff00

    const/4 v4, 0x2

    const/high16 v10, -0x4080

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 363
    iget-boolean v3, p0, Laj/j;->J:Z

    if-nez v3, :cond_143

    .line 364
    const/4 v3, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x105

    if-ne v2, v3, :cond_b3

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_b3

    .line 370
    iget-object v2, p0, Laj/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 371
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Laj/j;->D:F

    sub-float/2addr v3, v4

    iput v3, p0, Laj/j;->E:F

    .line 372
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Laj/j;->D:F

    sub-float/2addr v2, v3

    iput v2, p0, Laj/j;->F:F

    .line 375
    invoke-direct {p0}, Laj/j;->n()V

    .line 377
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Laj/j;->b:Landroid/view/MotionEvent;

    .line 378
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laj/j;->C:J

    .line 380
    invoke-direct {p0, p1}, Laj/j;->c(Landroid/view/MotionEvent;)V

    .line 386
    iget v2, p0, Laj/j;->D:F

    .line 387
    iget v4, p0, Laj/j;->E:F

    .line 388
    iget v5, p0, Laj/j;->F:F

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 391
    invoke-static {p1, v1}, Laj/j;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 392
    invoke-static {p1, v1}, Laj/j;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 394
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_6d

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_6d

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6d

    cmpl-float v3, v6, v5

    if-lez v3, :cond_8a

    :cond_6d
    move v3, v1

    .line 396
    :goto_6e
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_7e

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_7e

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_7e

    cmpl-float v2, v8, v5

    if-lez v2, :cond_8c

    :cond_7e
    move v2, v1

    .line 399
    :goto_7f
    if-eqz v3, :cond_8e

    if-eqz v2, :cond_8e

    .line 400
    iput v10, p0, Laj/j;->l:F

    .line 401
    iput v10, p0, Laj/j;->m:F

    .line 402
    iput-boolean v1, p0, Laj/j;->G:Z

    .line 503
    :cond_89
    :goto_89
    return v1

    :cond_8a
    move v3, v0

    .line 394
    goto :goto_6e

    :cond_8c
    move v2, v0

    .line 396
    goto :goto_7f

    .line 403
    :cond_8e
    if-eqz v3, :cond_9f

    .line 404
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Laj/j;->l:F

    .line 405
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    .line 406
    iput-boolean v1, p0, Laj/j;->G:Z

    goto :goto_89

    .line 407
    :cond_9f
    if-eqz v2, :cond_b0

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/j;->l:F

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    .line 410
    iput-boolean v1, p0, Laj/j;->G:Z

    goto :goto_89

    .line 412
    :cond_b0
    iput-boolean v1, p0, Laj/j;->J:Z

    goto :goto_89

    .line 414
    :cond_b3
    if-ne v2, v4, :cond_124

    iget-boolean v3, p0, Laj/j;->G:Z

    if-eqz v3, :cond_124

    .line 416
    iget v2, p0, Laj/j;->D:F

    .line 417
    iget v4, p0, Laj/j;->E:F

    .line 418
    iget v5, p0, Laj/j;->F:F

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 421
    invoke-static {p1, v1}, Laj/j;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 422
    invoke-static {p1, v1}, Laj/j;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 424
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_df

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_df

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_df

    cmpl-float v3, v6, v5

    if-lez v3, :cond_fa

    :cond_df
    move v3, v1

    .line 426
    :goto_e0
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_f0

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_f0

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_f0

    cmpl-float v2, v8, v5

    if-lez v2, :cond_fc

    :cond_f0
    move v2, v1

    .line 429
    :goto_f1
    if-eqz v3, :cond_fe

    if-eqz v2, :cond_fe

    .line 430
    iput v10, p0, Laj/j;->l:F

    .line 431
    iput v10, p0, Laj/j;->m:F

    goto :goto_89

    :cond_fa
    move v3, v0

    .line 424
    goto :goto_e0

    :cond_fc
    move v2, v0

    .line 426
    goto :goto_f1

    .line 432
    :cond_fe
    if-eqz v3, :cond_10e

    .line 433
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Laj/j;->l:F

    .line 434
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    goto/16 :goto_89

    .line 435
    :cond_10e
    if-eqz v2, :cond_11e

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/j;->l:F

    .line 437
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    goto/16 :goto_89

    .line 439
    :cond_11e
    iput-boolean v0, p0, Laj/j;->G:Z

    .line 440
    iput-boolean v1, p0, Laj/j;->J:Z

    goto/16 :goto_89

    .line 442
    :cond_124
    const/4 v3, 0x6

    if-eq v2, v3, :cond_12b

    const/16 v3, 0x106

    if-ne v2, v3, :cond_89

    :cond_12b
    iget-boolean v3, p0, Laj/j;->G:Z

    if-eqz v3, :cond_89

    .line 446
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_135

    move v0, v1

    .line 448
    :cond_135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/j;->l:F

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    goto/16 :goto_89

    .line 451
    :cond_143
    invoke-direct {p0}, Laj/j;->j()Z

    move-result v3

    if-nez v3, :cond_152

    .line 454
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Laj/j;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_89

    .line 459
    :cond_152
    sparse-switch v2, :sswitch_data_1a6

    goto/16 :goto_89

    .line 487
    :sswitch_157
    invoke-direct {p0, p1}, Laj/j;->c(Landroid/view/MotionEvent;)V

    .line 490
    iget-object v0, p0, Laj/j;->c:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Laj/j;->b(Landroid/view/MotionEvent;)V

    .line 495
    iget v0, p0, Laj/j;->A:F

    iget v2, p0, Laj/j;->B:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_89

    .line 496
    invoke-direct {p0}, Laj/j;->k()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 497
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Laj/j;->b:Landroid/view/MotionEvent;

    goto/16 :goto_89

    .line 463
    :sswitch_179
    invoke-direct {p0, p1}, Laj/j;->c(Landroid/view/MotionEvent;)V

    .line 466
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_182

    move v0, v1

    .line 468
    :cond_182
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/j;->l:F

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/j;->m:F

    .line 471
    iget-boolean v0, p0, Laj/j;->G:Z

    if-nez v0, :cond_195

    .line 472
    invoke-direct {p0}, Laj/j;->l()V

    .line 475
    :cond_195
    invoke-direct {p0}, Laj/j;->n()V

    goto/16 :goto_89

    .line 479
    :sswitch_19a
    iget-boolean v0, p0, Laj/j;->G:Z

    if-nez v0, :cond_1a1

    .line 480
    invoke-direct {p0}, Laj/j;->l()V

    .line 483
    :cond_1a1
    invoke-direct {p0}, Laj/j;->n()V

    goto/16 :goto_89

    .line 459
    :sswitch_data_1a6
    .sparse-switch
        0x2 -> :sswitch_157
        0x3 -> :sswitch_19a
        0x6 -> :sswitch_179
        0x106 -> :sswitch_179
    .end sparse-switch
.end method

.method public b()F
    .registers 2

    .prologue
    .line 719
    iget v0, p0, Laj/j;->m:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 733
    iget v0, p0, Laj/j;->n:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 747
    iget v0, p0, Laj/j;->o:F

    return v0
.end method

.method public e()F
    .registers 3

    .prologue
    .line 758
    iget v0, p0, Laj/j;->t:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 759
    iget v0, p0, Laj/j;->r:F

    .line 760
    iget v1, p0, Laj/j;->s:F

    .line 761
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Laj/j;->t:F

    .line 763
    :cond_17
    iget v0, p0, Laj/j;->t:F

    return v0
.end method

.method public f()F
    .registers 3

    .prologue
    .line 774
    iget v0, p0, Laj/j;->u:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 775
    iget v0, p0, Laj/j;->p:F

    .line 776
    iget v1, p0, Laj/j;->q:F

    .line 777
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Laj/j;->u:F

    .line 779
    :cond_17
    iget v0, p0, Laj/j;->u:F

    return v0
.end method

.method public g()F
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Laj/j;->f:Laj/e;

    invoke-direct {p0, v0}, Laj/j;->a(Laj/e;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 792
    const/high16 v0, 0x3f80

    .line 797
    :goto_a
    return v0

    .line 794
    :cond_b
    iget v0, p0, Laj/j;->x:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    .line 795
    invoke-virtual {p0}, Laj/j;->e()F

    move-result v0

    invoke-virtual {p0}, Laj/j;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Laj/j;->x:F

    .line 797
    :cond_1e
    iget v0, p0, Laj/j;->x:F

    goto :goto_a
.end method

.method public h()F
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Laj/j;->g:Laj/e;

    invoke-direct {p0, v0}, Laj/j;->a(Laj/e;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 812
    const/4 v0, 0x0

    .line 820
    :goto_9
    return v0

    .line 814
    :cond_a
    iget-boolean v0, p0, Laj/j;->H:Z

    if-nez v0, :cond_1b

    .line 817
    iget v0, p0, Laj/j;->w:F

    iget v1, p0, Laj/j;->v:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    iput v0, p0, Laj/j;->y:F

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Laj/j;->H:Z

    .line 820
    :cond_1b
    iget v0, p0, Laj/j;->y:F

    goto :goto_9
.end method

.method public i()F
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 828
    iget-object v0, p0, Laj/j;->h:Laj/e;

    invoke-direct {p0, v0}, Laj/j;->a(Laj/e;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 829
    const/4 v0, 0x0

    .line 839
    :goto_b
    return v0

    .line 831
    :cond_c
    iget-boolean v0, p0, Laj/j;->I:Z

    if-nez v0, :cond_50

    .line 832
    iget-object v0, p0, Laj/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Laj/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, Laj/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Laj/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Laj/h;->a(FFFF)F

    move-result v0

    .line 834
    iget-object v1, p0, Laj/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Laj/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Laj/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Laj/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Laj/h;->a(FFFF)F

    move-result v1

    .line 836
    invoke-static {v1, v0}, Laj/e;->a(FF)F

    move-result v0

    iput v0, p0, Laj/j;->z:F

    .line 837
    iput-boolean v5, p0, Laj/j;->I:Z

    .line 839
    :cond_50
    iget v0, p0, Laj/j;->z:F

    goto :goto_b
.end method
