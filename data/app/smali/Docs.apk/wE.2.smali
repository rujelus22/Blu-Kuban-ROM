.class public LwE;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Trix.java"

# interfaces
.implements LwD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LwA;",
        ">;",
        "LwD;"
    }
.end annotation


# direct methods
.method constructor <init>(LwA;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1759
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 1760
    return-void
.end method


# virtual methods
.method public a(D)I
    .registers 5
    .parameter

    .prologue
    .line 1815
    invoke-virtual {p0}, LwE;->a()J

    move-result-wide v0

    .line 1816
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(JD)I

    move-result v0

    .line 1819
    return v0
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1801
    invoke-virtual {p0}, LwE;->a()J

    move-result-wide v0

    .line 1802
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(JII)V

    .line 1803
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
    .line 1787
    invoke-virtual {p0}, LwE;->a()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1788
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    return-void
.end method
