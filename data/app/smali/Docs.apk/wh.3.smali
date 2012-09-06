.class public Lwh;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lwg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lwg;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4354
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 4355
    return-void
.end method


# virtual methods
.method public a()LvI;
    .registers 5

    .prologue
    .line 4447
    invoke-virtual {p0}, Lwh;->a()J

    move-result-wide v0

    .line 4448
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->h(J)J

    move-result-wide v2

    .line 4451
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvJ;

    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvJ;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(Ljava/lang/String;)LvZ;
    .registers 6
    .parameter

    .prologue
    .line 4368
    invoke-virtual {p0}, Lwh;->a()J

    move-result-wide v0

    .line 4369
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JLjava/lang/String;)J

    move-result-wide v2

    .line 4372
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lwa;

    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lwa;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Lvx;
    .registers 5

    .prologue
    .line 4385
    invoke-virtual {p0}, Lwh;->a()J

    move-result-wide v0

    .line 4386
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->g(J)J

    move-result-wide v2

    .line 4389
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lvy;

    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lvy;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 4437
    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->s(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4438
    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, Lwh;->a()J

    move-result-wide v1

    const/16 v3, 0x7a

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->s(LvF;Z)Z

    .line 4441
    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->t(LvF;Z)Z

    .line 4443
    :cond_23
    iget-object v0, p0, Lwh;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->t(LvF;)Z

    move-result v0

    return v0
.end method
