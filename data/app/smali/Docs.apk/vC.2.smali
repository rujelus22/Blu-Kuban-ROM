.class public LvC;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvB;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2234
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2235
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 2240
    invoke-virtual {p0}, LvC;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)I

    move-result v0

    .line 2242
    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 2248
    invoke-virtual {p0}, LvC;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)I

    move-result v0

    .line 2250
    return v0
.end method
