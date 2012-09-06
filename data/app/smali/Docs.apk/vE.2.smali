.class public LvE;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvD;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2271
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2272
    return-void
.end method


# virtual methods
.method public a()D
    .registers 3

    .prologue
    .line 2285
    invoke-virtual {p0}, LvE;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)D

    move-result-wide v0

    .line 2287
    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2277
    invoke-virtual {p0}, LvE;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 2279
    return-object v0
.end method

.method public b()D
    .registers 3

    .prologue
    .line 2293
    invoke-virtual {p0}, LvE;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)D

    move-result-wide v0

    .line 2295
    return-wide v0
.end method
