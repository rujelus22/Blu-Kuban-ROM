.class public Lys;
.super Ljava/lang/Object;
.source "SimpleFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field final synthetic a:Lyr;

.field b:J


# direct methods
.method public constructor <init>(Lyr;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lys;->a:Lyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .registers 9

    .prologue
    const-wide/16 v6, 0xd0

    .line 369
    iget-object v0, p0, Lys;->a:Lyr;

    invoke-virtual {v0}, Lyr;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 370
    const/16 v0, 0xd0

    .line 379
    :goto_d
    return v0

    .line 373
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 374
    iget-wide v2, p0, Lys;->a:J

    iget-wide v4, p0, Lys;->b:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 375
    const/4 v0, 0x0

    goto :goto_d

    .line 377
    :cond_1d
    iget-wide v2, p0, Lys;->a:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v6

    iget-wide v2, p0, Lys;->b:J

    div-long/2addr v0, v2

    sub-long v0, v6, v0

    long-to-int v0, v0

    goto :goto_d
.end method

.method a()V
    .registers 3

    .prologue
    .line 363
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lys;->b:J

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lys;->a:J

    .line 365
    iget-object v0, p0, Lys;->a:Lyr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lyr;->a(I)V

    .line 366
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lys;->a:Lyr;

    invoke-virtual {v0}, Lyr;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 385
    invoke-virtual {p0}, Lys;->a()V

    .line 394
    :goto_c
    return-void

    .line 389
    :cond_d
    invoke-virtual {p0}, Lys;->a()I

    move-result v0

    if-lez v0, :cond_1d

    .line 390
    iget-object v0, p0, Lys;->a:Lyr;

    invoke-static {v0}, Lyr;->a(Lyr;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 392
    :cond_1d
    iget-object v0, p0, Lys;->a:Lyr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyr;->a(I)V

    goto :goto_c
.end method
