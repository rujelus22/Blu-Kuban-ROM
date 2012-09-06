.class public Lcom/google/googlenav/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Ljava/lang/String;Lcom/google/googlenav/P;)Lcom/google/googlenav/O;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "6.9.2"

    invoke-static {p0, v0}, Lcom/google/googlenav/K;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2c

    :cond_10
    move v0, v2

    .line 82
    :goto_11
    invoke-static {p0}, Lcom/google/googlenav/M;->a(Ljava/lang/String;)Z

    move-result v4

    .line 86
    if-eqz v0, :cond_2e

    .line 88
    invoke-virtual {p1}, Lcom/google/googlenav/P;->c()Z

    move-result v3

    .line 94
    :goto_1b
    if-eqz v3, :cond_33

    invoke-virtual {p1}, Lcom/google/googlenav/P;->a()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 96
    :goto_23
    if-eqz v4, :cond_35

    .line 103
    :goto_25
    new-instance v2, Lcom/google/googlenav/O;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/google/googlenav/O;-><init>(ZZZLcom/google/googlenav/N;)V

    .line 105
    return-object v2

    :cond_2c
    move v0, v1

    .line 78
    goto :goto_11

    .line 91
    :cond_2e
    invoke-virtual {p1}, Lcom/google/googlenav/P;->b()Z

    move-result v3

    goto :goto_1b

    :cond_33
    move v2, v1

    .line 94
    goto :goto_23

    :cond_35
    move v1, v2

    goto :goto_25
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "6.8.0"

    invoke-static {p0, v0}, Lcom/google/googlenav/K;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/googlenav/P;

    invoke-direct {v0}, Lcom/google/googlenav/P;-><init>()V

    invoke-static {p0, v0}, Lcom/google/googlenav/M;->a(Ljava/lang/String;Lcom/google/googlenav/P;)Lcom/google/googlenav/O;

    move-result-object v0

    return-object v0
.end method
