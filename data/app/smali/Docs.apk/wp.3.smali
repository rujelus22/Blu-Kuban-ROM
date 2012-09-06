.class public Lwp;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Trix.java"

# interfaces
.implements Lwo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LwA;",
        ">;",
        "Lwo;"
    }
.end annotation


# direct methods
.method constructor <init>(LwA;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 739
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 740
    return-void
.end method


# virtual methods
.method public a(ILwz;)Lws;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 781
    invoke-virtual {p0}, Lwp;->a()J

    move-result-wide v0

    .line 782
    invoke-virtual {p2}, Lwz;->a()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(JIJ)J

    move-result-wide v2

    .line 785
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Lwt;

    iget-object v0, p0, Lwp;->a:Lvo;

    check-cast v0, LwA;

    invoke-direct {v1, v0, v2, v3}, Lwt;-><init>(LwA;J)V

    move-object v0, v1

    goto :goto_13
.end method

.method public a()[I
    .registers 3

    .prologue
    .line 798
    invoke-virtual {p0}, Lwp;->a()J

    move-result-wide v0

    .line 799
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(J)[I

    move-result-object v0

    .line 802
    return-object v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 767
    invoke-virtual {p0}, Lwp;->a()J

    move-result-wide v0

    .line 768
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(J)V

    .line 769
    return-void
.end method
