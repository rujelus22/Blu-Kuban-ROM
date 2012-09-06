.class public final Lcom/google/ads/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/ads/w;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/w;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/y;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/w;I)V
    .registers 7

    iput-object p1, p0, Lcom/google/ads/y;->a:Lcom/google/ads/w;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/y;->b:J

    return-void
.end method

.method public final a()Z
    .registers 5

    iget-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/w;

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/y;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Lcom/google/ads/w;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/y;->a:Lcom/google/ads/w;

    return-object v0
.end method
