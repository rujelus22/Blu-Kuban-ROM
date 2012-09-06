.class public LwC;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Trix.java"

# interfaces
.implements LwB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LwA;",
        ">;",
        "LwB;"
    }
.end annotation


# direct methods
.method constructor <init>(LwA;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1833
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 1834
    return-void
.end method


# virtual methods
.method public a()LwD;
    .registers 5

    .prologue
    .line 1847
    invoke-virtual {p0}, LwC;->a()J

    move-result-wide v0

    .line 1848
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(J)J

    move-result-wide v2

    .line 1851
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, LwE;

    iget-object v0, p0, LwC;->a:Lvo;

    check-cast v0, LwA;

    invoke-direct {v1, v0, v2, v3}, LwE;-><init>(LwA;J)V

    move-object v0, v1

    goto :goto_f
.end method

.method public a(Lww;Ljava/lang/String;Ljava/lang/String;)Lwo;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1864
    invoke-virtual {p0}, LwC;->a()J

    move-result-wide v0

    .line 1865
    invoke-virtual {p1}, Lww;->a()J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(JJLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1868
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    new-instance v1, Lwp;

    iget-object v0, p0, LwC;->a:Lvo;

    check-cast v0, LwA;

    invoke-direct {v1, v0, v2, v3}, Lwp;-><init>(LwA;J)V

    move-object v0, v1

    goto :goto_15
.end method
