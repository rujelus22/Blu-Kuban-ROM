.class public LvM;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvL;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvL;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2490
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2491
    return-void
.end method


# virtual methods
.method public a()LvK;
    .registers 5

    .prologue
    .line 2504
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2505
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->f(J)J

    move-result-wide v2

    .line 2508
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvN;

    iget-object v0, p0, LvM;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvN;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(LvQ;)V
    .registers 6
    .parameter

    .prologue
    .line 2563
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2564
    invoke-virtual {p1}, LvQ;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JJ)V

    .line 2565
    return-void
.end method

.method public a(LvT;)V
    .registers 6
    .parameter

    .prologue
    .line 2591
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2592
    invoke-virtual {p1}, LvT;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(JJ)V

    .line 2593
    return-void
.end method

.method public a(LvY;)V
    .registers 6
    .parameter

    .prologue
    .line 2577
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2578
    invoke-virtual {p1}, LvY;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JJ)V

    .line 2579
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 2521
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2522
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JZ)V

    .line 2523
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 2549
    invoke-virtual {p0}, LvM;->a()J

    move-result-wide v0

    .line 2550
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(JZ)V

    .line 2551
    return-void
.end method
