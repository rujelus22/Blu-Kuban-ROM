.class public LaS/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(LaS/h;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, LaS/h;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, LaS/h;->h()LaS/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LaS/g;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 113
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 116
    :cond_9
    :goto_9
    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    if-eqz p2, :cond_25

    invoke-virtual {p2}, LaS/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qvalue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, LaS/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_24
    :goto_24
    return-object v0

    .line 96
    :cond_25
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 97
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaS/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_35
    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qvalue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 98
    :cond_4b
    const-string v1, "homepage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 99
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    .line 100
    :cond_58
    const-string v1, "location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "direction"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 101
    :cond_68
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    .line 102
    :cond_71
    const-string v1, "ap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 103
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaS/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_82
    move-object v1, v0

    goto :goto_35
.end method

.method public static a(LaS/h;LaS/c;Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, LaS/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaS/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, LaS/a;->a(LaS/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LaS/c;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, LaS/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)V

    .line 64
    return-void
.end method

.method public static a(LaS/h;Lcom/google/googlenav/ai;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, LaS/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    move-object v4, v3

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, LaS/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)V

    .line 73
    return-void
.end method

.method public static a(Lat/B;LaS/h;Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p1}, LaS/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "el"

    invoke-virtual {p0}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, LaS/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)V

    .line 155
    return-void
.end method

.method public static a(Lcom/google/googlenav/ai;LaS/h;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    .line 137
    const/16 v2, 0x54

    const-string v3, "ac"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "uf"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    aput-object v0, v4, v5

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LaS/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qas="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_6f

    const-string v0, "oninit"

    :goto_5a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 137
    :cond_6c
    const-string v0, ""

    goto :goto_2e

    :cond_6f
    const-string v0, "useraction"

    goto :goto_5a
.end method

.method public static a(Ljava/lang/String;LaS/h;Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p1}, LaS/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apc"

    invoke-static {p1}, LaS/a;->a(LaS/h;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, LaS/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)V

    .line 81
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {p5}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const/16 v3, 0x6a

    const-string v4, "go"

    const/16 v0, 0x9

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "oi=uddq_experiment"

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "experimentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p5}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-static {p1, p5, p6}, LaS/a;->a(Ljava/lang/String;Lcom/google/googlenav/ai;LaS/h;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x6

    if-nez p3, :cond_8f

    move-object v0, v1

    :goto_79
    aput-object v0, v5, v6

    const/4 v6, 0x7

    if-nez v2, :cond_a3

    move-object v0, v1

    :goto_7f
    aput-object v0, v5, v6

    const/16 v0, 0x8

    if-nez p4, :cond_b7

    :goto_85
    aput-object v1, v5, v0

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 39
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ph="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rli="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_85
.end method
