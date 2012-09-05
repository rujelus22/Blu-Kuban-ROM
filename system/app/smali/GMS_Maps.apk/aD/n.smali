.class public LaD/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/a;

.field private b:LaD/h;

.field private c:LaD/d;

.field private d:LaD/d;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/n;->a:Lcom/google/googlenav/a;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaD/n;->e:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, LaD/n;->f:Ljava/lang/String;

    return-void
.end method

.method static a(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    const/16 v0, 0x8d

    :goto_8
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    const/16 v0, 0x8c

    goto :goto_8
.end method

.method static a(JJ)Ljava/lang/String;
    .registers 10

    const-wide/16 v4, 0x1

    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p2

    sub-long/2addr v0, p0

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    invoke-static {v0, v1}, LaD/n;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(JLjava/util/TimeZone;)Ljava/lang/String;
    .registers 8

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    sub-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(LaD/d;I)Ljava/util/List;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, LaD/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p2, :cond_d

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    const/4 v3, -0x1

    move v2, v4

    :goto_f
    if-ge v2, v5, :cond_5b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-virtual {v0}, LaD/f;->j()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    :goto_1e
    if-gez v0, :cond_28

    invoke-interface {v1, v4, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_28
    if-nez v0, :cond_2f

    invoke-interface {v1, v4, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_2f
    add-int/lit8 v2, p2, -0x2

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    add-int/2addr v3, v0

    const/4 v0, 0x1

    if-gt v2, v0, :cond_46

    invoke-interface {v1, v4, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_46
    invoke-static {p2}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_5b
    move v0, v3

    goto :goto_1e
.end method

.method private b(Ljava/util/List;)LaD/f;
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-virtual {v0}, LaD/f;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, LaD/n;->a:Lcom/google/googlenav/a;

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, LaD/n;->c:LaD/d;

    invoke-direct {p0, v0, p1}, LaD/n;->a(LaD/d;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(LaD/d;)V
    .registers 2

    iput-object p1, p0, LaD/n;->c:LaD/d;

    return-void
.end method

.method a(LaD/h;)V
    .registers 2

    iput-object p1, p0, LaD/n;->b:LaD/h;

    return-void
.end method

.method a(LaD/h;JJ)V
    .registers 8

    sget-object v0, LaD/o;->a:[I

    invoke-virtual {p1}, LaD/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    const-string v0, ""

    iput-object v0, p0, LaD/n;->f:Ljava/lang/String;

    :goto_f
    return-void

    :pswitch_10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p4, p5, v0}, LaD/n;->a(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaD/n;->f:Ljava/lang/String;

    goto :goto_f

    :pswitch_1b
    invoke-static {p2, p3, p4, p5}, LaD/n;->a(JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaD/n;->f:Ljava/lang/String;

    goto :goto_f

    :pswitch_22
    const-string v0, ""

    iput-object v0, p0, LaD/n;->f:Ljava/lang/String;

    goto :goto_f

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1b
        :pswitch_22
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, LaD/n;->e:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaD/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, LaD/n;->d:LaD/d;

    invoke-direct {p0, v0, p1}, LaD/n;->a(LaD/d;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method b(LaD/d;)V
    .registers 2

    iput-object p1, p0, LaD/n;->d:LaD/d;

    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaD/n;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaD/n;->d:LaD/d;

    invoke-virtual {v0}, LaD/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 3

    iget-object v0, p0, LaD/n;->c:LaD/d;

    invoke-virtual {v0}, LaD/d;->c()I

    move-result v0

    iget-object v1, p0, LaD/n;->d:LaD/d;

    invoke-virtual {v1}, LaD/d;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public f()I
    .registers 3

    iget-object v0, p0, LaD/n;->c:LaD/d;

    invoke-virtual {v0}, LaD/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, LaD/n;->b(Ljava/util/List;)LaD/f;

    move-result-object v0

    iget-object v1, p0, LaD/n;->d:LaD/d;

    invoke-virtual {v1}, LaD/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, LaD/n;->b(Ljava/util/List;)LaD/f;

    move-result-object v1

    if-eqz v0, :cond_18

    if-nez v1, :cond_1a

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {v1}, LaD/f;->c()I

    move-result v1

    invoke-virtual {v0}, LaD/f;->c()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_19
.end method
