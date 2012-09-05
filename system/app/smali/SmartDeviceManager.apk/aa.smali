.class public abstract Laa;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Long;
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Laa;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Laa;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_20

    .line 39
    :cond_12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Laa;->a(Ljava/lang/Long;)V

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Laa;->b(Ljava/lang/Long;)V

    .line 42
    :cond_20
    return-void
.end method

.method protected abstract a(Ljava/lang/Long;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Ljava/lang/Long;)V
.end method

.method protected abstract c()V
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laa;->a(Ljava/lang/Long;)V

    .line 34
    invoke-virtual {p0}, Laa;->c()V

    .line 35
    return-void
.end method

.method public final e()V
    .registers 6

    .prologue
    .line 45
    invoke-virtual {p0}, Laa;->a()Ljava/lang/Long;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_16

    .line 47
    :cond_12
    invoke-virtual {p0, v0}, Laa;->b(Ljava/lang/Long;)V

    .line 52
    :goto_15
    return-void

    .line 49
    :cond_16
    invoke-virtual {p0}, Laa;->d()V

    .line 50
    invoke-virtual {p0}, Laa;->b()V

    goto :goto_15
.end method
