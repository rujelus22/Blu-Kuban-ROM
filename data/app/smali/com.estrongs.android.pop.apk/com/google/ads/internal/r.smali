.class public Lcom/google/ads/internal/r;
.super Ljava/lang/Object;


# static fields
.field private static f:J

.field private static h:J


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/ads/internal/r;->f:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/ads/internal/r;->h:J

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/ads/internal/r;->i:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/r;->j:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/internal/r;->a()V

    return-void
.end method

.method public static q()J
    .registers 4

    sget-wide v0, Lcom/google/ads/internal/r;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/internal/r;->h:J

    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/ads/internal/r;->h:J

    sub-long/2addr v0, v2

    goto :goto_10
.end method


# virtual methods
.method protected a()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-wide v2, p0, Lcom/google/ads/internal/r;->c:J

    iput-wide v2, p0, Lcom/google/ads/internal/r;->d:J

    iget-object v0, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/r;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/ads/internal/r;->i:Z

    iput-boolean v1, p0, Lcom/google/ads/internal/r;->j:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior ad identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/internal/r;->g:Ljava/lang/String;

    return-void
.end method

.method protected b()V
    .registers 4

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior impression ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/internal/r;->a:Ljava/lang/String;

    return-void
.end method

.method protected c()V
    .registers 3

    const-string v0, "Ad request loaded."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/r;->c:J

    return-void
.end method

.method protected d()V
    .registers 5

    const-string v0, "Ad request started."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/r;->d:J

    sget-wide v0, Lcom/google/ads/internal/r;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/r;->f:J

    return-void
.end method

.method protected e()J
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_11

    const-wide/16 v0, -0x1

    :goto_10
    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_10
.end method

.method protected f()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    if-eqz v1, :cond_2e

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v0, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method protected g()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    if-eqz v1, :cond_20

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v0, p0, Lcom/google/ads/internal/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/ads/internal/r;->c:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method protected h()J
    .registers 5

    iget-wide v0, p0, Lcom/google/ads/internal/r;->c:J

    iget-wide v2, p0, Lcom/google/ads/internal/r;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected i()J
    .registers 3

    sget-wide v0, Lcom/google/ads/internal/r;->f:J

    return-wide v0
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/internal/r;->i:Z

    return v0
.end method

.method protected l()V
    .registers 2

    const-string v0, "Interstitial network error."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/r;->i:Z

    return-void
.end method

.method protected m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/internal/r;->j:Z

    return v0
.end method

.method protected n()V
    .registers 2

    const-string v0, "Interstitial no fill."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/r;->j:Z

    return-void
.end method

.method public o()V
    .registers 4

    const-string v0, "Landing page dismissed."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/r;->e:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/r;->a:Ljava/lang/String;

    return-object v0
.end method
