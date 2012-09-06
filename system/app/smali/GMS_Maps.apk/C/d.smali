.class public LC/d;
.super LC/b;
.source "SourceFile"


# instance fields
.field a:I

.field final b:Ljava/lang/Runnable;

.field private final c:LF/i;


# direct methods
.method public constructor <init>(LC/l;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    const-string v0, "gps_fixup_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, LC/d;->a:I

    .line 30
    new-instance v0, LC/e;

    invoke-direct {v0, p0}, LC/e;-><init>(LC/d;)V

    iput-object v0, p0, LC/d;->b:Ljava/lang/Runnable;

    .line 41
    invoke-interface {p1}, LC/l;->a()LF/i;

    move-result-object v0

    iput-object v0, p0, LC/d;->c:LF/i;

    .line 42
    return-void
.end method

.method public static a()J
    .registers 2

    .prologue
    .line 73
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->r:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private b(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, LC/R;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 79
    invoke-static {}, LC/d;->i()F

    move-result v0

    invoke-virtual {p1}, LC/R;->getAccuracy()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, LC/R;->setAccuracy(F)V

    .line 81
    :cond_15
    return-void
.end method

.method private c(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    invoke-virtual {p1}, LC/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, LC/R;->getSpeed()F

    move-result v0

    invoke-static {}, LC/d;->g()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_17

    .line 86
    invoke-virtual {p1}, LC/R;->removeSpeed()V

    .line 88
    :cond_17
    return-void
.end method

.method static g()F
    .registers 1

    .prologue
    .line 92
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->j:F

    return v0
.end method

.method static h()F
    .registers 1

    .prologue
    .line 101
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->A:F

    return v0
.end method

.method static i()F
    .registers 1

    .prologue
    .line 107
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->z:F

    return v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, LC/d;->c:LF/i;

    iget-object v1, p0, LC/d;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LF/i;->a(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, LC/d;->c:LF/i;

    iget-object v1, p0, LC/d;->b:Ljava/lang/Runnable;

    invoke-static {}, LC/d;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LF/i;->b(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method


# virtual methods
.method public a(LC/R;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 46
    invoke-virtual {p1}, LC/R;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, LC/R;->getAccuracy()F

    move-result v0

    invoke-static {}, LC/d;->h()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_16

    .line 61
    :goto_15
    return-void

    .line 50
    :cond_16
    iget v0, p0, LC/d;->a:I

    if-eq v0, v2, :cond_25

    .line 51
    iput v2, p0, LC/d;->a:I

    .line 52
    const-string v0, "gps_fixup_provider"

    const-string v1, "gps"

    iget v2, p0, LC/d;->a:I

    invoke-virtual {p0, v0, v1, v2}, LC/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    :cond_25
    invoke-direct {p0}, LC/d;->j()V

    .line 55
    invoke-direct {p0}, LC/d;->k()V

    .line 57
    new-instance v0, LC/R;

    invoke-direct {v0, p1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 58
    invoke-direct {p0, v0}, LC/d;->b(LC/R;)V

    .line 59
    invoke-direct {p0, v0}, LC/d;->c(LC/R;)V

    .line 60
    invoke-super {p0, v0}, LC/b;->a(LC/R;)V

    goto :goto_15
.end method
