.class public Ld/G;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/G;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/G;->b:J

    return-void
.end method


# virtual methods
.method protected a(J)V
    .registers 5

    iget-wide v0, p0, Ld/G;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ld/G;->b:J

    return-void
.end method

.method protected a()Z
    .registers 5

    iget-wide v0, p0, Ld/G;->b:J

    const-wide/16 v2, 0x7800

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ld/G;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected b()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/G;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/G;->b:J

    return-void
.end method
