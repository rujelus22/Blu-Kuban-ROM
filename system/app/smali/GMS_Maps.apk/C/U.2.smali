.class public LC/U;
.super LC/b;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Runnable;

.field private final b:Lcom/google/googlenav/common/a;

.field private final c:LF/i;

.field private d:[F

.field private e:[J

.field private f:I

.field private volatile g:F


# direct methods
.method public constructor <init>(LC/l;Lcom/google/googlenav/common/a;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    const/high16 v1, -0x4080

    .line 63
    const-string v0, "speed_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, LC/U;->f:I

    .line 45
    iput v1, p0, LC/U;->g:F

    .line 47
    new-instance v0, LC/V;

    invoke-direct {v0, p0}, LC/V;-><init>(LC/U;)V

    iput-object v0, p0, LC/U;->a:Ljava/lang/Runnable;

    .line 65
    iput-object p2, p0, LC/U;->b:Lcom/google/googlenav/common/a;

    .line 66
    invoke-interface {p1}, LC/l;->a()LF/i;

    move-result-object v0

    iput-object v0, p0, LC/U;->c:LF/i;

    .line 68
    new-array v0, v2, [F

    iput-object v0, p0, LC/U;->d:[F

    .line 69
    new-array v0, v2, [J

    iput-object v0, p0, LC/U;->e:[J

    .line 70
    iget-object v0, p0, LC/U;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 71
    return-void
.end method

.method static synthetic a(LC/U;)F
    .registers 2
    .parameter

    .prologue
    .line 20
    iget v0, p0, LC/U;->g:F

    return v0
.end method

.method static a()J
    .registers 2

    .prologue
    .line 146
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic a(LC/U;LC/R;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, LC/b;->a(LC/R;)V

    return-void
.end method

.method static synthetic a(LC/U;Landroid/location/Location;F)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, LC/U;->a(Landroid/location/Location;F)V

    return-void
.end method

.method private a(Landroid/location/Location;F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    const/high16 v0, -0x4080

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 113
    invoke-virtual {p1}, Landroid/location/Location;->removeSpeed()V

    .line 117
    :goto_9
    return-void

    .line 115
    :cond_a
    invoke-virtual {p1, p2}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_9
.end method

.method static synthetic b(LC/U;)Lcom/google/googlenav/common/a;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LC/U;->b:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method static synthetic c(LC/U;)LF/i;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LC/U;->c:LF/i;

    return-object v0
.end method

.method private g()F
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x4080

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    iget-object v3, p0, LC/U;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    sub-long v4, v3, v5

    move v3, v0

    move v8, v1

    move v1, v0

    move v0, v8

    .line 98
    :goto_13
    const/16 v6, 0xa

    if-ge v3, v6, :cond_31

    .line 99
    iget-object v6, p0, LC/U;->d:[F

    aget v6, v6, v3

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_2e

    iget-object v6, p0, LC/U;->e:[J

    aget-wide v6, v6, v3

    cmp-long v6, v6, v4

    if-ltz v6, :cond_2e

    .line 100
    iget-object v6, p0, LC/U;->d:[F

    aget v6, v6, v3

    add-float/2addr v0, v6

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 104
    :cond_31
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3a

    move v0, v2

    :goto_35
    iput v0, p0, LC/U;->g:F

    .line 105
    iget v0, p0, LC/U;->g:F

    return v0

    .line 104
    :cond_3a
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_35
.end method


# virtual methods
.method public a(LC/R;)V
    .registers 6
    .parameter

    .prologue
    .line 78
    iget-object v1, p0, LC/U;->d:[F

    iget v2, p0, LC/U;->f:I

    invoke-virtual {p1}, LC/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, LC/R;->getSpeed()F

    move-result v0

    :goto_e
    aput v0, v1, v2

    .line 79
    iget-object v0, p0, LC/U;->e:[J

    iget v1, p0, LC/U;->f:I

    invoke-virtual {p1}, LC/R;->getTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 80
    iget v0, p0, LC/U;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, LC/U;->f:I

    .line 81
    invoke-virtual {p0}, LC/U;->e()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 82
    sget-object v0, LC/S;->c:LC/S;

    invoke-virtual {p1, v0}, LC/R;->a(LC/S;)V

    .line 83
    invoke-direct {p0}, LC/U;->g()F

    move-result v0

    invoke-direct {p0, p1, v0}, LC/U;->a(Landroid/location/Location;F)V

    .line 84
    invoke-super {p0, p1}, LC/b;->a(LC/R;)V

    .line 86
    :cond_37
    return-void

    .line 78
    :cond_38
    const/high16 v0, -0x4080

    goto :goto_e
.end method

.method public b()V
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, LC/U;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    :goto_6
    return-void

    .line 124
    :cond_7
    invoke-super {p0}, LC/b;->b()V

    .line 125
    invoke-direct {p0}, LC/U;->g()F

    .line 126
    iget-object v0, p0, LC/U;->c:LF/i;

    iget-object v1, p0, LC/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LF/i;->a(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, LC/U;->c:LF/i;

    iget-object v1, p0, LC/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LF/i;->b(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public c()V
    .registers 1

    .prologue
    .line 138
    invoke-virtual {p0}, LC/U;->d()V

    .line 139
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, LC/U;->c:LF/i;

    iget-object v1, p0, LC/U;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LF/i;->a(Ljava/lang/Runnable;)V

    .line 133
    invoke-super {p0}, LC/b;->d()V

    .line 134
    return-void
.end method
