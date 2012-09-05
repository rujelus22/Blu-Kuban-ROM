.class public Lc/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:LW/a;

.field private b:J


# direct methods
.method public constructor <init>(LW/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/r;->b:J

    iput-object p1, p0, Lc/r;->a:LW/a;

    return-void
.end method

.method private a(JJJJ)J
    .registers 11

    add-long v0, p3, p1

    sub-long/2addr v0, p5

    invoke-static {p7, p8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lc/r;)LW/a;
    .registers 2

    iget-object v0, p0, Lc/r;->a:LW/a;

    return-object v0
.end method

.method private a(F)V
    .registers 4

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, LW/a;->a(IF)V

    return-void
.end method

.method private a(JJJ)V
    .registers 16

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long v3, v0, v2

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lc/r;->a(JJJJ)J

    move-result-wide v0

    iget-object v2, p0, Lc/r;->a:LW/a;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1}, Lc/r;->d(J)I

    move-result v0

    invoke-virtual {v2, v3, v0}, LW/a;->g(II)V

    :cond_28
    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long v3, v0, v2

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lc/r;->a(JJJJ)J

    move-result-wide v0

    iget-object v2, p0, Lc/r;->a:LW/a;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1}, Lc/r;->d(J)I

    move-result v0

    invoke-virtual {v2, v3, v0}, LW/a;->g(II)V

    :cond_50
    return-void
.end method

.method static synthetic a(Lc/r;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lc/r;->c(J)V

    return-void
.end method

.method static synthetic a(Lc/r;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lc/r;->a(JJJ)V

    return-void
.end method

.method private b(J)V
    .registers 7

    const/4 v3, 0x6

    const/4 v2, 0x0

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v3}, LW/a;->c(I)I

    move-result v0

    iget-object v1, p0, Lc/r;->a:LW/a;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v3, v0}, LW/a;->g(II)V

    invoke-virtual {p0}, Lc/r;->d()F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_22

    const v1, 0x3dcccccd

    sub-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lc/r;->a(F)V

    :cond_22
    iput-wide p1, p0, Lc/r;->b:J

    return-void
.end method

.method static synthetic b(Lc/r;)V
    .registers 1

    invoke-direct {p0}, Lc/r;->f()V

    return-void
.end method

.method static synthetic b(Lc/r;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lc/r;->b(J)V

    return-void
.end method

.method private c(J)V
    .registers 6

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Lc/r;->d(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    return-void
.end method

.method private d(J)I
    .registers 11

    const-wide/32 v6, 0x5265c00

    const-wide/32 v2, 0x927c0

    long-to-double v0, p1

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v0, v4

    const-wide v4, 0x4194997000000000L

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long v4, v0, v6

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v2, v6, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_25

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_25
    long-to-int v0, v0

    return v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ll/b;->a(LW/a;I)V

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ll/b;->a(LW/a;I)V

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ll/b;->a(LW/a;I)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lc/r;->b:J

    return-wide v0
.end method

.method a(J)V
    .registers 6

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Lc/r;->d(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    return-void
.end method

.method a(JFI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p4}, Lc/r;->a(JI)V

    invoke-direct {p0, p3}, Lc/r;->a(F)V

    return-void
.end method

.method a(JI)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lc/r;->a(J)V

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ll/b;->a(LW/a;I)V

    iget-object v0, p0, Lc/r;->a:LW/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, LW/a;->g(II)V

    return-void
.end method

.method public b()I
    .registers 3

    const/4 v1, 0x5

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public c()I
    .registers 3

    const/4 v1, 0x3

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const v0, 0x7fffffff

    goto :goto_f
.end method

.method public d()F
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->e(I)F

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/high16 v0, -0x4080

    goto :goto_f
.end method

.method public e()I
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc/r;->a:LW/a;

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const v0, 0x7fffffff

    goto :goto_f
.end method
