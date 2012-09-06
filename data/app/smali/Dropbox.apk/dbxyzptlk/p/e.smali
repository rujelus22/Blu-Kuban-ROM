.class final Ldbxyzptlk/p/e;
.super Ldbxyzptlk/l/q;
.source "panda.py"


# instance fields
.field private final a:Ldbxyzptlk/l/q;

.field private final b:D

.field private final c:J

.field private final d:J


# direct methods
.method private constructor <init>(DDJLdbxyzptlk/l/q;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Ldbxyzptlk/l/q;-><init>()V

    .line 402
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_15

    .line 403
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 405
    :cond_15
    iput-object p7, p0, Ldbxyzptlk/p/e;->a:Ldbxyzptlk/l/q;

    .line 406
    iput-wide p1, p0, Ldbxyzptlk/p/e;->b:D

    .line 407
    iput-wide p5, p0, Ldbxyzptlk/p/e;->c:J

    .line 408
    iget-wide v0, p0, Ldbxyzptlk/p/e;->c:J

    long-to-double v0, v0

    mul-double/2addr v0, p3

    double-to-long v0, v0

    iput-wide v0, p0, Ldbxyzptlk/p/e;->d:J

    .line 409
    return-void
.end method

.method synthetic constructor <init>(DDJLdbxyzptlk/l/q;Ldbxyzptlk/p/b;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    invoke-direct/range {p0 .. p7}, Ldbxyzptlk/p/e;-><init>(DDJLdbxyzptlk/l/q;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Ldbxyzptlk/p/e;->a:Ldbxyzptlk/l/q;

    invoke-virtual {v0}, Ldbxyzptlk/l/q;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 419
    long-to-double v0, p1

    long-to-double v2, p3

    div-double/2addr v0, v2

    iget-wide v2, p0, Ldbxyzptlk/p/e;->b:D

    mul-double/2addr v0, v2

    .line 420
    iget-object v2, p0, Ldbxyzptlk/p/e;->a:Ldbxyzptlk/l/q;

    iget-wide v3, p0, Ldbxyzptlk/p/e;->d:J

    iget-wide v5, p0, Ldbxyzptlk/p/e;->c:J

    long-to-double v5, v5

    mul-double/2addr v0, v5

    double-to-long v0, v0

    add-long/2addr v0, v3

    iget-wide v3, p0, Ldbxyzptlk/p/e;->c:J

    invoke-virtual {v2, v0, v1, v3, v4}, Ldbxyzptlk/l/q;->a(JJ)V

    .line 421
    return-void
.end method
