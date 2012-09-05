.class public LF/U;
.super LF/b;


# instance fields
.field final a:Ljava/lang/Runnable;

.field private final b:Laf/a;

.field private final c:LI/i;

.field private d:[F

.field private e:[J

.field private f:I

.field private volatile g:F


# direct methods
.method public constructor <init>(LF/o;Laf/a;)V
    .registers 6

    const/16 v2, 0xa

    const/high16 v1, -0x4080

    const-string v0, "speed_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    const/4 v0, 0x0

    iput v0, p0, LF/U;->f:I

    iput v1, p0, LF/U;->g:F

    new-instance v0, LF/V;

    invoke-direct {v0, p0}, LF/V;-><init>(LF/U;)V

    iput-object v0, p0, LF/U;->a:Ljava/lang/Runnable;

    iput-object p2, p0, LF/U;->b:Laf/a;

    invoke-interface {p1}, LF/o;->a()LI/i;

    move-result-object v0

    iput-object v0, p0, LF/U;->c:LI/i;

    new-array v0, v2, [F

    iput-object v0, p0, LF/U;->d:[F

    new-array v0, v2, [J

    iput-object v0, p0, LF/U;->e:[J

    iget-object v0, p0, LF/U;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method static synthetic a(LF/U;)F
    .registers 2

    iget v0, p0, LF/U;->g:F

    return v0
.end method

.method static a()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic a(LF/U;LF/R;)V
    .registers 2

    invoke-super {p0, p1}, LF/b;->a(LF/R;)V

    return-void
.end method

.method static synthetic a(LF/U;Landroid/location/Location;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, LF/U;->a(Landroid/location/Location;F)V

    return-void
.end method

.method private a(Landroid/location/Location;F)V
    .registers 4

    const/high16 v0, -0x4080

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/location/Location;->removeSpeed()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1, p2}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_9
.end method

.method static synthetic b(LF/U;)Laf/a;
    .registers 2

    iget-object v0, p0, LF/U;->b:Laf/a;

    return-object v0
.end method

.method static synthetic c(LF/U;)LI/i;
    .registers 2

    iget-object v0, p0, LF/U;->c:LI/i;

    return-object v0
.end method

.method private g()F
    .registers 10

    const/4 v0, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    iget-object v3, p0, LF/U;->b:Laf/a;

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    sub-long v4, v3, v5

    move v3, v0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_13
    const/16 v6, 0xa

    if-ge v3, v6, :cond_31

    iget-object v6, p0, LF/U;->d:[F

    aget v6, v6, v3

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_2e

    iget-object v6, p0, LF/U;->e:[J

    aget-wide v6, v6, v3

    cmp-long v6, v6, v4

    if-ltz v6, :cond_2e

    iget-object v6, p0, LF/U;->d:[F

    aget v6, v6, v3

    add-float/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3a

    move v0, v2

    :goto_35
    iput v0, p0, LF/U;->g:F

    iget v0, p0, LF/U;->g:F

    return v0

    :cond_3a
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_35
.end method


# virtual methods
.method public a(LF/R;)V
    .registers 6

    iget-object v1, p0, LF/U;->d:[F

    iget v2, p0, LF/U;->f:I

    invoke-virtual {p1}, LF/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, LF/R;->getSpeed()F

    move-result v0

    :goto_e
    aput v0, v1, v2

    iget-object v0, p0, LF/U;->e:[J

    iget v1, p0, LF/U;->f:I

    invoke-virtual {p1}, LF/R;->getTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, LF/U;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, LF/U;->f:I

    invoke-virtual {p0}, LF/U;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, LF/S;->c:LF/S;

    invoke-virtual {p1, v0}, LF/R;->a(LF/S;)V

    invoke-direct {p0}, LF/U;->g()F

    move-result v0

    invoke-direct {p0, p1, v0}, LF/U;->a(Landroid/location/Location;F)V

    invoke-super {p0, p1}, LF/b;->a(LF/R;)V

    :cond_37
    return-void

    :cond_38
    const/high16 v0, -0x4080

    goto :goto_e
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, LF/U;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-super {p0}, LF/b;->b()V

    invoke-direct {p0}, LF/U;->g()F

    iget-object v0, p0, LF/U;->c:LI/i;

    iget-object v1, p0, LF/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LI/i;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, LF/U;->c:LI/i;

    iget-object v1, p0, LF/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LI/i;->b(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, LF/U;->d()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, LF/U;->c:LI/i;

    iget-object v1, p0, LF/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LI/i;->a(Ljava/lang/Runnable;)V

    invoke-super {p0}, LF/b;->d()V

    return-void
.end method
