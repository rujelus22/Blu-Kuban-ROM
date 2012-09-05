.class public LF/d;
.super LF/b;


# instance fields
.field a:I

.field final b:Ljava/lang/Runnable;

.field private final c:LI/i;


# direct methods
.method public constructor <init>(LF/o;)V
    .registers 3

    const-string v0, "gps_fixup_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    const/4 v0, 0x1

    iput v0, p0, LF/d;->a:I

    new-instance v0, LF/e;

    invoke-direct {v0, p0}, LF/e;-><init>(LF/d;)V

    iput-object v0, p0, LF/d;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, LF/o;->a()LI/i;

    move-result-object v0

    iput-object v0, p0, LF/d;->c:LI/i;

    return-void
.end method

.method public static a()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->r:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private b(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, LF/d;->i()F

    move-result v0

    invoke-virtual {p1}, LF/R;->getAccuracy()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, LF/R;->setAccuracy(F)V

    :cond_15
    return-void
.end method

.method private c(LF/R;)V
    .registers 4

    invoke-virtual {p1}, LF/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, LF/R;->getSpeed()F

    move-result v0

    invoke-static {}, LF/d;->g()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p1}, LF/R;->removeSpeed()V

    :cond_17
    return-void
.end method

.method static g()F
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->j:F

    return v0
.end method

.method static h()F
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->A:F

    return v0
.end method

.method static i()F
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->z:F

    return v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, LF/d;->c:LI/i;

    iget-object v1, p0, LF/d;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LI/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, LF/d;->c:LI/i;

    iget-object v1, p0, LF/d;->b:Ljava/lang/Runnable;

    invoke-static {}, LF/d;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LI/i;->b(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(LF/R;)V
    .registers 5

    const/4 v2, 0x2

    invoke-virtual {p1}, LF/R;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, LF/R;->getAccuracy()F

    move-result v0

    invoke-static {}, LF/d;->h()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    iget v0, p0, LF/d;->a:I

    if-eq v0, v2, :cond_25

    iput v2, p0, LF/d;->a:I

    const-string v0, "gps_fixup_provider"

    const-string v1, "gps"

    iget v2, p0, LF/d;->a:I

    invoke-virtual {p0, v0, v1, v2}, LF/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_25
    invoke-direct {p0}, LF/d;->j()V

    invoke-direct {p0}, LF/d;->k()V

    new-instance v0, LF/R;

    invoke-direct {v0, p1}, LF/R;-><init>(Landroid/location/Location;)V

    invoke-direct {p0, v0}, LF/d;->b(LF/R;)V

    invoke-direct {p0, v0}, LF/d;->c(LF/R;)V

    invoke-super {p0, v0}, LF/b;->a(LF/R;)V

    goto :goto_15
.end method
