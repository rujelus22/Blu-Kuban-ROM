.class public Lvt;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lvs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lvs;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1780
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 1781
    return-void
.end method


# virtual methods
.method public a(D)I
    .registers 5
    .parameter

    .prologue
    .line 1870
    invoke-virtual {p0}, Lvt;->a()J

    move-result-wide v0

    .line 1871
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JD)I

    move-result v0

    .line 1874
    return v0
.end method

.method public a()LvK;
    .registers 5

    .prologue
    .line 1794
    invoke-virtual {p0}, Lvt;->a()J

    move-result-wide v0

    .line 1795
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)J

    move-result-wide v2

    .line 1798
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvN;

    iget-object v0, p0, Lvt;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvN;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LvL;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1811
    invoke-virtual {p0}, Lvt;->a()J

    move-result-wide v0

    .line 1812
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1815
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LvM;

    iget-object v0, p0, Lvt;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, v2, v3}, LvM;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1856
    invoke-virtual {p0}, Lvt;->a()J

    move-result-wide v0

    .line 1857
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JII)V

    .line 1858
    return-void
.end method

.method public a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1842
    invoke-virtual {p0}, Lvt;->a()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1843
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    return-void
.end method
