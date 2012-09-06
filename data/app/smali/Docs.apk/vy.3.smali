.class public Lvy;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lvx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lvx;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2002
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2003
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2008
    invoke-virtual {p0}, Lvy;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 2010
    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 2016
    invoke-virtual {p0}, Lvy;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)Z

    move-result v0

    .line 2018
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2040
    invoke-virtual {p0}, Lvy;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 2042
    return-object v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 2048
    invoke-virtual {p0}, Lvy;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->b(J)Z

    move-result v0

    .line 2050
    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 2064
    invoke-virtual {p0}, Lvy;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->c(J)Z

    move-result v0

    .line 2066
    return v0
.end method
