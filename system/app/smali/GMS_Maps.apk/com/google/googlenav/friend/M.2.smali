.class public Lcom/google/googlenav/friend/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lat/B;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    if-nez p0, :cond_9

    .line 92
    const/16 v0, 0x169

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_8
    :goto_8
    return-object p1

    .line 96
    :cond_9
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    const/16 v0, 0x164

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static a(Lcom/google/googlenav/friend/aK;JZZ)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/google/googlenav/friend/aJ;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 57
    :cond_d
    :goto_d
    return-object v0

    .line 38
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->F()J

    move-result-wide v1

    .line 43
    add-long/2addr v1, p1

    .line 46
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_d

    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p4, :cond_2e

    .line 52
    const/16 v0, 0x237

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 54
    :cond_2e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    invoke-static {v1, v2, p3, v0}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method static a(Lcom/google/googlenav/friend/aK;ZZZ)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0, p2, p3}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->E()Lat/B;

    move-result-object v1

    .line 83
    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/googlenav/ui/bn;->be:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_2d
    invoke-static {v1, v0}, Lcom/google/googlenav/friend/M;->a(Lat/B;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/friend/aK;ZZZZ)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-eqz p1, :cond_7

    .line 67
    invoke-static {p0, p2, p3, p4}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/google/googlenav/friend/aK;->g(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/M;->a(Lat/B;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
