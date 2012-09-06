.class public LvN;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvK;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2351
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2352
    return-void
.end method


# virtual methods
.method public a()LvU;
    .registers 5

    .prologue
    .line 2413
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2414
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->d(J)J

    move-result-wide v2

    .line 2417
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvV;

    iget-object v0, p0, LvN;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvV;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Lwb;
    .registers 5

    .prologue
    .line 2379
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2380
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)J

    move-result-wide v2

    .line 2383
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwc;

    iget-object v0, p0, LvN;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwc;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Lwe;
    .registers 5

    .prologue
    .line 2430
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2431
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->e(J)J

    move-result-wide v2

    .line 2434
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwf;

    iget-object v0, p0, LvN;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwf;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Lwg;
    .registers 5

    .prologue
    .line 2396
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2397
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(J)J

    move-result-wide v2

    .line 2400
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwh;

    iget-object v0, p0, LvN;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwh;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 2475
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2476
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)V

    .line 2477
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 2365
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2366
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)V

    .line 2367
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 2447
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2448
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)V

    .line 2449
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 2461
    invoke-virtual {p0}, LvN;->a()J

    move-result-wide v0

    .line 2462
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(J)V

    .line 2463
    return-void
.end method
