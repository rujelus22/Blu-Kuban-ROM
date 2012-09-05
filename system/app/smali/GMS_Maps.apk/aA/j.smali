.class public LaA/j;
.super LaA/v;


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

.field private final f:LaA/e;

.field private final g:LaA/e;

.field private final h:LaA/e;

.field private final i:LaA/e;

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
.method public constructor <init>(Landroid/content/Context;LaA/l;)V
    .registers 6

    invoke-direct {p0, p1, p2}, LaA/v;-><init>(Landroid/content/Context;LaA/w;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaA/j;->d:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaA/j;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, LaA/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LaA/j;->D:F

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->A()Z

    move-result v0

    iget-object v1, p0, LaA/j;->d:Ljava/util/List;

    new-instance v2, LaA/A;

    invoke-direct {v2, p2}, LaA/A;-><init>(LaA/l;)V

    iput-object v2, p0, LaA/j;->g:LaA/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_65

    iget-object v1, p0, LaA/j;->d:Ljava/util/List;

    new-instance v2, LaA/s;

    invoke-direct {v2, p2}, LaA/s;-><init>(LaA/l;)V

    iput-object v2, p0, LaA/j;->h:LaA/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MD"

    const-string v2, "T"

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4c
    iget-object v1, p0, LaA/j;->d:Ljava/util/List;

    new-instance v2, LaA/u;

    invoke-direct {v2, p2, v0}, LaA/u;-><init>(LaA/l;Z)V

    iput-object v2, p0, LaA/j;->f:LaA/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaA/j;->d:Ljava/util/List;

    new-instance v1, LaA/C;

    invoke-direct {v1, p2}, LaA/C;-><init>(LaA/l;)V

    iput-object v1, p0, LaA/j;->i:LaA/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_65
    iget-object v1, p0, LaA/j;->d:Ljava/util/List;

    new-instance v2, LaA/y;

    invoke-direct {v2, p2}, LaA/y;-><init>(LaA/l;)V

    iput-object v2, p0, LaA/j;->h:LaA/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MD"

    const-string v2, "F"

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4c
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private a(LaA/e;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, LaA/e;->a()Z

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

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, LaA/j;->k:J

    :cond_13
    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    new-instance v2, LaA/a;

    invoke-direct {v2, p1}, LaA/a;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_32

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->d()V

    :cond_32
    :goto_32
    invoke-direct {p0}, LaA/j;->m()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_4d

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->d()V

    goto :goto_32

    :cond_4d
    sparse-switch v1, :sswitch_data_9c

    :goto_50
    move v4, v6

    :goto_51
    iget-boolean v0, p0, LaA/j;->J:Z

    if-eqz v0, :cond_83

    iget-object v0, p0, LaA/j;->d:Ljava/util/List;

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

    check-cast v0, LaA/e;

    invoke-virtual {v0}, LaA/e;->a()Z

    move-result v1

    if-nez v1, :cond_5b

    sget-object v8, LaA/k;->a:[I

    iget-wide v1, p0, LaA/j;->k:J

    iget-object v3, p0, LaA/j;->j:Ljava/util/LinkedList;

    iget-object v5, p0, LaA/j;->e:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, LaA/e;->a(JLjava/util/LinkedList;ZLjava/util/List;)LaA/f;

    move-result-object v1

    invoke-virtual {v1}, LaA/f;->ordinal()I

    move-result v1

    aget v1, v8, v1

    packed-switch v1, :pswitch_data_aa

    goto :goto_5b

    :cond_83
    :pswitch_83
    if-eqz v4, :cond_8a

    invoke-direct {p0}, LaA/j;->l()V

    iput-boolean v6, p0, LaA/j;->J:Z

    :cond_8a
    return-void

    :sswitch_8b
    const/4 v4, 0x1

    goto :goto_51

    :sswitch_8d
    iput-boolean v6, p0, LaA/j;->J:Z

    goto :goto_50

    :pswitch_90
    invoke-virtual {v0, p0}, LaA/e;->a(LaA/j;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, LaA/j;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_8d
        0x6 -> :sswitch_8b
        0x106 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_83
        :pswitch_90
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 14

    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LaA/j;->c:Landroid/view/MotionEvent;

    iput v1, p0, LaA/j;->t:F

    iput v1, p0, LaA/j;->u:F

    iput v1, p0, LaA/j;->x:F

    const/4 v0, 0x0

    iput v0, p0, LaA/j;->y:F

    iput-boolean v9, p0, LaA/j;->H:Z

    iput-boolean v9, p0, LaA/j;->I:Z

    iget-object v0, p0, LaA/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    iput v3, p0, LaA/j;->p:F

    iput v4, p0, LaA/j;->q:F

    iput v7, p0, LaA/j;->r:F

    iput v8, p0, LaA/j;->s:F

    iput v2, p0, LaA/j;->v:F

    iput v6, p0, LaA/j;->w:F

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, LaA/j;->l:F

    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, LaA/j;->m:F

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, LaA/j;->n:F

    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, LaA/j;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, LaA/j;->C:J

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, LaA/j;->A:F

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, LaA/j;->B:F

    return-void
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, LaA/j;->e:Ljava/util/List;

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

    const/4 v0, 0x0

    iget-object v1, p0, LaA/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/e;

    invoke-virtual {v0, p0}, LaA/e;->e(LaA/j;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    :cond_1b
    return v1
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, LaA/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/e;

    invoke-virtual {v0, p0}, LaA/e;->c(LaA/j;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private m()Z
    .registers 6

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->a()J

    move-result-wide v1

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->a()J

    move-result-wide v3

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

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, LaA/j;->b:Landroid/view/MotionEvent;

    iput-object v1, p0, LaA/j;->c:Landroid/view/MotionEvent;

    iput-boolean v0, p0, LaA/j;->G:Z

    iput-boolean v0, p0, LaA/j;->J:Z

    iget-object v0, p0, LaA/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, LaA/j;->o()V

    iget-object v0, p0, LaA/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/e;

    invoke-virtual {v0}, LaA/e;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0, p0}, LaA/e;->c(LaA/j;)V

    goto :goto_18

    :cond_2e
    return-void
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaA/h;

    invoke-virtual {v0}, LaA/h;->d()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, LaA/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, LaA/j;->l:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13

    const v5, 0xff00

    const/4 v4, 0x2

    const/high16 v10, -0x4080

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, p0, LaA/j;->J:Z

    if-nez v3, :cond_143

    const/4 v3, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x105

    if-ne v2, v3, :cond_b3

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_b3

    iget-object v2, p0, LaA/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, LaA/j;->D:F

    sub-float/2addr v3, v4

    iput v3, p0, LaA/j;->E:F

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, LaA/j;->D:F

    sub-float/2addr v2, v3

    iput v2, p0, LaA/j;->F:F

    invoke-direct {p0}, LaA/j;->n()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, LaA/j;->b:Landroid/view/MotionEvent;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LaA/j;->C:J

    invoke-direct {p0, p1}, LaA/j;->c(Landroid/view/MotionEvent;)V

    iget v2, p0, LaA/j;->D:F

    iget v4, p0, LaA/j;->E:F

    iget v5, p0, LaA/j;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {p1, v1}, LaA/j;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, LaA/j;->b(Landroid/view/MotionEvent;I)F

    move-result v8

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

    :goto_7f
    if-eqz v3, :cond_8e

    if-eqz v2, :cond_8e

    iput v10, p0, LaA/j;->l:F

    iput v10, p0, LaA/j;->m:F

    iput-boolean v1, p0, LaA/j;->G:Z

    :cond_89
    :goto_89
    return v1

    :cond_8a
    move v3, v0

    goto :goto_6e

    :cond_8c
    move v2, v0

    goto :goto_7f

    :cond_8e
    if-eqz v3, :cond_9f

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, LaA/j;->l:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    iput-boolean v1, p0, LaA/j;->G:Z

    goto :goto_89

    :cond_9f
    if-eqz v2, :cond_b0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/j;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    iput-boolean v1, p0, LaA/j;->G:Z

    goto :goto_89

    :cond_b0
    iput-boolean v1, p0, LaA/j;->J:Z

    goto :goto_89

    :cond_b3
    if-ne v2, v4, :cond_124

    iget-boolean v3, p0, LaA/j;->G:Z

    if-eqz v3, :cond_124

    iget v2, p0, LaA/j;->D:F

    iget v4, p0, LaA/j;->E:F

    iget v5, p0, LaA/j;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {p1, v1}, LaA/j;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, LaA/j;->b(Landroid/view/MotionEvent;I)F

    move-result v8

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

    :goto_f1
    if-eqz v3, :cond_fe

    if-eqz v2, :cond_fe

    iput v10, p0, LaA/j;->l:F

    iput v10, p0, LaA/j;->m:F

    goto :goto_89

    :cond_fa
    move v3, v0

    goto :goto_e0

    :cond_fc
    move v2, v0

    goto :goto_f1

    :cond_fe
    if-eqz v3, :cond_10e

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, LaA/j;->l:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    goto/16 :goto_89

    :cond_10e
    if-eqz v2, :cond_11e

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/j;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    goto/16 :goto_89

    :cond_11e
    iput-boolean v0, p0, LaA/j;->G:Z

    iput-boolean v1, p0, LaA/j;->J:Z

    goto/16 :goto_89

    :cond_124
    const/4 v3, 0x6

    if-eq v2, v3, :cond_12b

    const/16 v3, 0x106

    if-ne v2, v3, :cond_89

    :cond_12b
    iget-boolean v3, p0, LaA/j;->G:Z

    if-eqz v3, :cond_89

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_135

    move v0, v1

    :cond_135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/j;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    goto/16 :goto_89

    :cond_143
    invoke-direct {p0}, LaA/j;->j()Z

    move-result v3

    if-nez v3, :cond_152

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, LaA/j;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_89

    :cond_152
    sparse-switch v2, :sswitch_data_1a6

    goto/16 :goto_89

    :sswitch_157
    invoke-direct {p0, p1}, LaA/j;->c(Landroid/view/MotionEvent;)V

    iget-object v0, p0, LaA/j;->c:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, LaA/j;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, LaA/j;->A:F

    iget v2, p0, LaA/j;->B:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_89

    invoke-direct {p0}, LaA/j;->k()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LaA/j;->b:Landroid/view/MotionEvent;

    goto/16 :goto_89

    :sswitch_179
    invoke-direct {p0, p1}, LaA/j;->c(Landroid/view/MotionEvent;)V

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_182

    move v0, v1

    :cond_182
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/j;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/j;->m:F

    iget-boolean v0, p0, LaA/j;->G:Z

    if-nez v0, :cond_195

    invoke-direct {p0}, LaA/j;->l()V

    :cond_195
    invoke-direct {p0}, LaA/j;->n()V

    goto/16 :goto_89

    :sswitch_19a
    iget-boolean v0, p0, LaA/j;->G:Z

    if-nez v0, :cond_1a1

    invoke-direct {p0}, LaA/j;->l()V

    :cond_1a1
    invoke-direct {p0}, LaA/j;->n()V

    goto/16 :goto_89

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

    iget v0, p0, LaA/j;->m:F

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, LaA/j;->n:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, LaA/j;->o:F

    return v0
.end method

.method public e()F
    .registers 3

    iget v0, p0, LaA/j;->t:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, LaA/j;->r:F

    iget v1, p0, LaA/j;->s:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LaA/j;->t:F

    :cond_17
    iget v0, p0, LaA/j;->t:F

    return v0
.end method

.method public f()F
    .registers 3

    iget v0, p0, LaA/j;->u:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, LaA/j;->p:F

    iget v1, p0, LaA/j;->q:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LaA/j;->u:F

    :cond_17
    iget v0, p0, LaA/j;->u:F

    return v0
.end method

.method public g()F
    .registers 3

    iget-object v0, p0, LaA/j;->f:LaA/e;

    invoke-direct {p0, v0}, LaA/j;->a(LaA/e;)Z

    move-result v0

    if-nez v0, :cond_b

    const/high16 v0, 0x3f80

    :goto_a
    return v0

    :cond_b
    iget v0, p0, LaA/j;->x:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    invoke-virtual {p0}, LaA/j;->e()F

    move-result v0

    invoke-virtual {p0}, LaA/j;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, LaA/j;->x:F

    :cond_1e
    iget v0, p0, LaA/j;->x:F

    goto :goto_a
.end method

.method public h()F
    .registers 3

    iget-object v0, p0, LaA/j;->g:LaA/e;

    invoke-direct {p0, v0}, LaA/j;->a(LaA/e;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, LaA/j;->H:Z

    if-nez v0, :cond_1b

    iget v0, p0, LaA/j;->w:F

    iget v1, p0, LaA/j;->v:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    iput v0, p0, LaA/j;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, LaA/j;->H:Z

    :cond_1b
    iget v0, p0, LaA/j;->y:F

    goto :goto_9
.end method

.method public i()F
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, LaA/j;->h:LaA/e;

    invoke-direct {p0, v0}, LaA/j;->a(LaA/e;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-boolean v0, p0, LaA/j;->I:Z

    if-nez v0, :cond_50

    iget-object v0, p0, LaA/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, LaA/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, LaA/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, LaA/j;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, LaA/h;->a(FFFF)F

    move-result v0

    iget-object v1, p0, LaA/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, LaA/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, LaA/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, LaA/j;->b:Landroid/view/MotionEvent;

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, LaA/h;->a(FFFF)F

    move-result v1

    invoke-static {v1, v0}, LaA/e;->a(FF)F

    move-result v0

    iput v0, p0, LaA/j;->z:F

    iput-boolean v5, p0, LaA/j;->I:Z

    :cond_50
    iget v0, p0, LaA/j;->z:F

    goto :goto_b
.end method
