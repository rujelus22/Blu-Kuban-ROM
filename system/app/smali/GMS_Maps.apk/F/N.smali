.class public LF/N;
.super LF/b;


# instance fields
.field a:I

.field final b:Ljava/lang/Runnable;

.field private final c:LI/i;


# direct methods
.method public constructor <init>(LF/o;)V
    .registers 3

    const-string v0, "network_fixup_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    const/4 v0, 0x1

    iput v0, p0, LF/N;->a:I

    new-instance v0, LF/O;

    invoke-direct {v0, p0}, LF/O;-><init>(LF/N;)V

    iput-object v0, p0, LF/N;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, LF/o;->a()LI/i;

    move-result-object v0

    iput-object v0, p0, LF/N;->c:LI/i;

    return-void
.end method

.method static a()F
    .registers 1

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->A:F

    return v0
.end method

.method static g()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->s:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, LF/N;->c:LI/i;

    iget-object v1, p0, LF/N;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LI/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, LF/N;->c:LI/i;

    iget-object v1, p0, LF/N;->b:Ljava/lang/Runnable;

    invoke-static {}, LF/N;->g()J

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

    invoke-static {}, LF/N;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    iget v0, p0, LF/N;->a:I

    if-eq v0, v2, :cond_25

    iput v2, p0, LF/N;->a:I

    const-string v0, "network"

    const-string v1, "network"

    iget v2, p0, LF/N;->a:I

    invoke-virtual {p0, v0, v1, v2}, LF/N;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_25
    invoke-direct {p0}, LF/N;->h()V

    invoke-direct {p0}, LF/N;->i()V

    invoke-super {p0, p1}, LF/b;->a(LF/R;)V

    goto :goto_15
.end method
