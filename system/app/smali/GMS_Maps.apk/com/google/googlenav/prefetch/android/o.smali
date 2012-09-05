.class public Lcom/google/googlenav/prefetch/android/o;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;


# instance fields
.field private a:LaJ/B;

.field private b:J

.field private c:J

.field private d:LaR/i;


# direct methods
.method public constructor <init>(LaR/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/o;->d:LaR/i;

    return-void
.end method


# virtual methods
.method public a(ILaE/h;)V
    .registers 3

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 14

    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/prefetch/android/o;->c:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    iput-wide v2, p0, Lcom/google/googlenav/prefetch/android/o;->c:J

    invoke-virtual {p2}, LaE/h;->q()LaJ/B;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {p2}, LaE/h;->i()I

    move-result v5

    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_18

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaJ/B;

    if-nez v5, :cond_39

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/o;->d:LaR/i;

    invoke-interface {v5, v4, v1, v10}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    :goto_32
    if-eqz v0, :cond_18

    iput-object v4, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaJ/B;

    iput-wide v2, p0, Lcom/google/googlenav/prefetch/android/o;->b:J

    goto :goto_18

    :cond_39
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaJ/B;

    invoke-virtual {v5, v4}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-wide v6, p0, Lcom/google/googlenav/prefetch/android/o;->b:J

    sub-long v6, v2, v6

    const/16 v8, 0x64

    if-ge v5, v8, :cond_54

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5a

    :cond_54
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/o;->d:LaR/i;

    invoke-interface {v5, v4, v1, v10}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    goto :goto_32

    :cond_5a
    move v0, v1

    goto :goto_32
.end method
