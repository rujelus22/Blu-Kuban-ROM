.class public LC/N;
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
    const-string v0, "network_fixup_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, LC/N;->a:I

    .line 29
    new-instance v0, LC/O;

    invoke-direct {v0, p0}, LC/O;-><init>(LC/N;)V

    iput-object v0, p0, LC/N;->b:Ljava/lang/Runnable;

    .line 41
    invoke-interface {p1}, LC/l;->a()LF/i;

    move-result-object v0

    iput-object v0, p0, LC/N;->c:LF/i;

    .line 42
    return-void
.end method

.method static a()F
    .registers 1

    .prologue
    .line 66
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->A:F

    return v0
.end method

.method static g()J
    .registers 2

    .prologue
    .line 83
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->s:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, LC/N;->c:LF/i;

    iget-object v1, p0, LC/N;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LF/i;->a(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, LC/N;->c:LF/i;

    iget-object v1, p0, LC/N;->b:Ljava/lang/Runnable;

    invoke-static {}, LC/N;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LF/i;->b(Ljava/lang/Runnable;J)Z

    .line 75
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

    invoke-static {}, LC/N;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_16

    .line 58
    :goto_15
    return-void

    .line 49
    :cond_16
    iget v0, p0, LC/N;->a:I

    if-eq v0, v2, :cond_25

    .line 50
    iput v2, p0, LC/N;->a:I

    .line 51
    const-string v0, "network"

    const-string v1, "network"

    iget v2, p0, LC/N;->a:I

    invoke-virtual {p0, v0, v1, v2}, LC/N;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    :cond_25
    invoke-direct {p0}, LC/N;->h()V

    .line 55
    invoke-direct {p0}, LC/N;->i()V

    .line 57
    invoke-super {p0, p1}, LC/b;->a(LC/R;)V

    goto :goto_15
.end method
