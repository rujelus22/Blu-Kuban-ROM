.class public abstract Lbc/h;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lau/s;

.field protected final b:Lau/v;

.field protected final c:I

.field private final d:Lbc/q;

.field private final e:Ljava/util/List;

.field private f:LK/bn;

.field private g:[F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method protected constructor <init>(Lbc/q;Lau/v;Lau/s;ILjava/util/List;)V
    .registers 8

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lbc/h;->h:F

    iput v0, p0, Lbc/h;->i:I

    iput v0, p0, Lbc/h;->j:I

    iput v0, p0, Lbc/h;->k:I

    iput v1, p0, Lbc/h;->l:F

    iput-object p1, p0, Lbc/h;->d:Lbc/q;

    iput-object p2, p0, Lbc/h;->b:Lau/v;

    iput-object p3, p0, Lbc/h;->a:Lau/s;

    iput p4, p0, Lbc/h;->c:I

    if-eqz p5, :cond_21

    invoke-static {p5}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    iput-object v0, p0, Lbc/h;->e:Ljava/util/List;

    :goto_20
    return-void

    :cond_21
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    iput-object v0, p0, Lbc/h;->e:Ljava/util/List;

    goto :goto_20
.end method

.method private static A()F
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->y:F

    return v0
.end method

.method static synthetic a(Ljava/util/Date;Ljava/util/Date;)I
    .registers 3

    invoke-static {p0, p1}, Lbc/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method static a(LaJ/B;LaJ/B;Ljava/util/List;F)LK/bn;
    .registers 8

    invoke-static {p2}, LK/bR;->b(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/B;

    invoke-static {p0, v0}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_20
    move-object p0, v0

    goto :goto_8

    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/B;

    invoke-static {v0, p1}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3a

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_22

    :cond_3a
    invoke-static {v1}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method private a(Lau/m;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lbc/h;->b:Lau/v;

    invoke-virtual {v0, p1}, Lau/v;->a(Lau/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Lau/s;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lbc/h;->b(Lau/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lau/x;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/ui/bJ;->b(Lau/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lam/b;)Ljava/util/Date;
    .registers 2

    invoke-static {p0}, Lbc/h;->b(Lam/b;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static a(Lau/v;ILbc/h;)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->y()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0}, Lau/m;->r()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v0}, Lau/m;->n()Z

    move-result v4

    if-eqz v4, :cond_30

    check-cast v0, Lau/a;

    invoke-virtual {v0}, Lau/a;->j()I

    move-result v3

    invoke-virtual {v0}, Lau/a;->i()I

    move-result v0

    int-to-float v1, v0

    :cond_23
    cmpl-float v0, v1, v2

    if-lez v0, :cond_2a

    invoke-virtual {p2, v1}, Lbc/h;->a(F)V

    :cond_2a
    if-lez v3, :cond_2f

    invoke-virtual {p2, v3}, Lbc/h;->a(I)V

    :cond_2f
    return-void

    :cond_30
    move v0, v1

    move v1, v2

    :goto_32
    invoke-virtual {p0}, Lau/v;->ag()I

    move-result v4

    if-ge v0, v4, :cond_23

    invoke-virtual {p0, v0}, Lau/v;->n(I)Lau/s;

    move-result-object v4

    invoke-virtual {v4}, Lau/s;->C()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_23

    invoke-virtual {v4}, Lau/s;->v()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lau/s;->t()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method private static b(Ljava/util/Date;Ljava/util/Date;)I
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static b(Lau/s;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lau/s;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lau/s;->B()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static b(Lam/b;)Ljava/util/Date;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/ui/bq;->e(Lam/b;)Ljava/util/Date;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic b(Lau/v;ILbc/h;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lbc/h;->c(Lau/v;ILbc/h;)V

    return-void
.end method

.method private static c(Lau/v;ILbc/h;)V
    .registers 5

    invoke-static {p0, p1, p2}, Lbc/h;->a(Lau/v;ILbc/h;)V

    invoke-virtual {p2}, Lbc/h;->p()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p2}, Lbc/h;->w()F

    move-result v0

    invoke-virtual {p2, v0}, Lbc/h;->a(F)V

    :cond_14
    iget v0, p2, Lbc/h;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p2}, Lbc/h;->q()V

    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)J
    .registers 4

    invoke-virtual {p0}, Lbc/h;->l()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p1, v0}, Lbc/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_8
.end method

.method public a()Lau/s;
    .registers 2

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    return-object v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lbc/h;->l:F

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lbc/h;->k:I

    return-void
.end method

.method public b(F)I
    .registers 5

    invoke-virtual {p0}, Lbc/h;->w()F

    move-result v0

    mul-float v1, p1, v0

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Lbc/h;->c(I)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public b(I)LaJ/B;
    .registers 7

    const/4 v4, -0x1

    invoke-virtual {p0}, Lbc/h;->v()LK/bn;

    move-result-object v1

    if-gt v4, p1, :cond_2b

    invoke-virtual {v1}, LK/bn;->size()I

    move-result v0

    if-gt p1, v0, :cond_2b

    const/4 v0, 0x1

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index not in range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    if-ne p1, v4, :cond_2d

    invoke-virtual {p0}, Lbc/h;->s()LaJ/B;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_e

    :cond_2d
    invoke-virtual {v1}, LK/bn;->size()I

    move-result v0

    if-ne p1, v0, :cond_38

    invoke-virtual {p0}, Lbc/h;->t()LaJ/B;

    move-result-object v0

    goto :goto_2a

    :cond_38
    invoke-virtual {v1, p1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/B;

    goto :goto_2a
.end method

.method public b()Lbc/q;
    .registers 2

    iget-object v0, p0, Lbc/h;->d:Lbc/q;

    return-object v0
.end method

.method public c(I)F
    .registers 9

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lbc/h;->v()LK/bn;

    move-result-object v0

    invoke-virtual {v0}, LK/bn;->size()I

    move-result v5

    if-gt v6, p1, :cond_4f

    if-gt p1, v5, :cond_4f

    const/4 v0, 0x1

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shapePointIndex not in range [0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lbc/h;->g:[F

    if-nez v0, :cond_51

    add-int/lit8 v0, v5, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lbc/h;->g:[F

    invoke-virtual {p0}, Lbc/h;->s()LaJ/B;

    move-result-object v0

    move v4, v2

    :goto_3b
    if-gt v1, v5, :cond_51

    invoke-virtual {p0, v1}, Lbc/h;->b(I)LaJ/B;

    move-result-object v3

    invoke-static {v0, v3}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v0

    add-float/2addr v0, v4

    iget-object v4, p0, Lbc/h;->g:[F

    aput v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move-object v0, v3

    goto :goto_3b

    :cond_4f
    move v0, v1

    goto :goto_10

    :cond_51
    if-ne p1, v6, :cond_55

    move v0, v2

    :goto_54
    return v0

    :cond_55
    iget-object v0, p0, Lbc/h;->g:[F

    aget v0, v0, p1

    goto :goto_54
.end method

.method public c(F)V
    .registers 2

    iput p1, p0, Lbc/h;->h:F

    return-void
.end method

.method public c()Z
    .registers 3

    sget-object v0, Lbc/i;->a:[I

    iget-object v1, p0, Lbc/h;->d:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x1

    :goto_e
    return v0

    :pswitch_f
    const/4 v0, 0x0

    goto :goto_e

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public d(I)F
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lbc/h;->c(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lbc/h;->c(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lbc/h;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbc/h;->b:Lau/v;

    iget v1, p0, Lbc/h;->c:I

    invoke-virtual {v0, v1}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-direct {p0, v0}, Lbc/h;->a(Lau/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lbc/h;->i:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lbc/h;->j:I

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .registers 3

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbc/h;->a:Lau/s;

    invoke-virtual {v0}, Lau/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract l()Ljava/util/Date;
.end method

.method public abstract m()Ljava/util/Date;
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Lbc/h;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o()I
    .registers 2

    invoke-virtual {p0}, Lbc/h;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lbc/h;->k:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public p()F
    .registers 2

    iget v0, p0, Lbc/h;->l:F

    return v0
.end method

.method protected q()V
    .registers 3

    invoke-virtual {p0}, Lbc/h;->l()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lbc/h;->m()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lbc/h;->l()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lbc/h;->m()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lbc/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lbc/h;->k:I

    goto :goto_c
.end method

.method protected r()Z
    .registers 2

    invoke-virtual {p0}, Lbc/h;->s()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbc/h;->t()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract s()LaJ/B;
.end method

.method public abstract t()LaJ/B;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public v()LK/bn;
    .registers 5

    iget-object v0, p0, Lbc/h;->f:LK/bn;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lbc/h;->s()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, Lbc/h;->t()LaJ/B;

    move-result-object v1

    iget-object v2, p0, Lbc/h;->e:Ljava/util/List;

    invoke-static {}, Lbc/h;->A()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lbc/h;->a(LaJ/B;LaJ/B;Ljava/util/List;F)LK/bn;

    move-result-object v0

    iput-object v0, p0, Lbc/h;->f:LK/bn;

    :cond_18
    iget-object v0, p0, Lbc/h;->f:LK/bn;

    return-object v0
.end method

.method public w()F
    .registers 2

    invoke-virtual {p0}, Lbc/h;->v()LK/bn;

    move-result-object v0

    invoke-virtual {v0}, LK/bn;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lbc/h;->c(I)F

    move-result v0

    return v0
.end method

.method public x()F
    .registers 2

    iget v0, p0, Lbc/h;->h:F

    return v0
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lbc/h;->i:I

    return v0
.end method

.method public z()I
    .registers 2

    iget v0, p0, Lbc/h;->j:I

    return v0
.end method
