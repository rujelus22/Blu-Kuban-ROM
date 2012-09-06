.class public LvH;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvG;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvG;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4737
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 4738
    return-void
.end method


# virtual methods
.method public a()Lvs;
    .registers 5

    .prologue
    .line 4751
    invoke-virtual {p0}, LvH;->a()J

    move-result-wide v0

    .line 4752
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->i(J)J

    move-result-wide v2

    .line 4755
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Lvt;

    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lvt;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lvs;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4768
    invoke-virtual {p0}, LvH;->a()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4769
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)J

    move-result-wide v2

    .line 4772
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    new-instance v1, Lvt;

    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, Lvt;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_14
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 4741
    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->u(LvF;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4742
    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, LvH;->a()J

    move-result-wide v1

    const/16 v3, 0x7f

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->d(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->u(LvF;Z)Z

    .line 4745
    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->v(LvF;Z)Z

    .line 4747
    :cond_23
    iget-object v0, p0, LvH;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->v(LvF;)Z

    move-result v0

    return v0
.end method
