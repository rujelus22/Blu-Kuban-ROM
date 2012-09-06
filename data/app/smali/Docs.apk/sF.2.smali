.class public LsF;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field final synthetic a:LsE;

.field b:J


# direct methods
.method public constructor <init>(LsE;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, LsF;->a:LsE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .registers 9

    .prologue
    const-wide/16 v6, 0xd0

    .line 543
    iget-object v0, p0, LsF;->a:LsE;

    invoke-virtual {v0}, LsE;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 544
    const/16 v0, 0xd0

    .line 553
    :goto_d
    return v0

    .line 547
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 548
    iget-wide v2, p0, LsF;->a:J

    iget-wide v4, p0, LsF;->b:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    .line 549
    const/4 v0, 0x0

    goto :goto_d

    .line 551
    :cond_1d
    iget-wide v2, p0, LsF;->a:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v6

    iget-wide v2, p0, LsF;->b:J

    div-long/2addr v0, v2

    sub-long v0, v6, v0

    long-to-int v0, v0

    goto :goto_d
.end method

.method a()V
    .registers 3

    .prologue
    .line 537
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, LsF;->b:J

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LsF;->a:J

    .line 539
    iget-object v0, p0, LsF;->a:LsE;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LsE;->a(I)V

    .line 540
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, LsF;->a:LsE;

    invoke-virtual {v0}, LsE;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 559
    invoke-virtual {p0}, LsF;->a()V

    .line 568
    :goto_c
    return-void

    .line 563
    :cond_d
    invoke-virtual {p0}, LsF;->a()I

    move-result v0

    if-lez v0, :cond_1d

    .line 564
    iget-object v0, p0, LsF;->a:LsE;

    invoke-static {v0}, LsE;->a(LsE;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 566
    :cond_1d
    iget-object v0, p0, LsF;->a:LsE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LsE;->a(I)V

    goto :goto_c
.end method
