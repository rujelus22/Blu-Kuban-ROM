.class public Lcom/google/googlenav/bN;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/aW;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 91
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->an()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 94
    :cond_12
    const/4 v0, 0x0

    .line 96
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static a(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 60
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    :cond_12
    const/4 v0, 0x0

    .line 65
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bN()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static a(Lcom/google/googlenav/h;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 76
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    :cond_12
    const/4 v0, 0x0

    .line 81
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_19
.end method
