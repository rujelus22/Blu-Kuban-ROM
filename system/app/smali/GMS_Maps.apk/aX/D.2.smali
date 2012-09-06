.class public Lax/D;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lax/A;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lax/A;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 48
    const/16 v0, 0x2ec

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_c
    return-object v0

    :cond_d
    const/16 v0, 0x2ed

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lax/D;->a(Lax/A;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lax/D;->a(Ljava/lang/String;Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    if-eqz p0, :cond_2a

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lax/A;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_29
    return-object v0

    :cond_2a
    invoke-virtual {p1}, Lax/A;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method static b(Lax/A;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lax/D;->c(Lax/A;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lax/D;->b(Lax/A;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lax/D;->a(Ljava/lang/String;Lax/A;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lax/A;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Lax/A;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    const/16 v0, 0x2ef

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_c
    return-object v0

    .line 33
    :cond_d
    invoke-virtual {p0}, Lax/A;->o()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 34
    const/16 v0, 0x2ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 36
    :cond_1a
    invoke-virtual {p0}, Lax/A;->p()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 37
    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 39
    :cond_27
    invoke-virtual {p0}, Lax/A;->r()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 40
    const/16 v0, 0x71

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 42
    :cond_34
    const/4 v0, 0x0

    goto :goto_c
.end method
