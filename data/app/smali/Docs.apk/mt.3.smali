.class public Lmt;
.super Lmh;
.source "StarredOp.java"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(LkT;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, LkT;->c()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, p1, v0}, Lmt;-><init>(LkT;Z)V

    .line 43
    return-void

    .line 42
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(LkT;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "starred"

    invoke-direct {p0, p1, v0}, Lmh;-><init>(LkT;Ljava/lang/String;)V

    .line 32
    iput-boolean p2, p0, Lmt;->a:Z

    .line 33
    return-void
.end method

.method public static a(LkT;Lorg/json/JSONObject;)Lmt;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lmt;

    const-string v1, "starValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lmt;-><init>(LkT;Z)V

    return-object v0
.end method


# virtual methods
.method public a(LkT;)Lmg;
    .registers 4
    .parameter

    .prologue
    .line 56
    new-instance v0, Lmt;

    invoke-virtual {p1}, LkT;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lmt;-><init>(LkT;Z)V

    .line 57
    iget-boolean v1, p0, Lmt;->a:Z

    invoke-virtual {p1, v1}, LkT;->c(Z)V

    .line 58
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 63
    invoke-super {p0}, Lmh;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    const-string v1, "operationName"

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "starValue"

    iget-boolean v2, p0, Lmt;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    return-object v0
.end method

.method public a(LSs;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lmt;->a:Z

    invoke-virtual {p1, v0}, LSs;->a(Z)V

    .line 52
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    instance-of v1, p1, Lmt;

    if-nez v1, :cond_6

    .line 76
    :cond_5
    :goto_5
    return v0

    .line 75
    :cond_6
    check-cast p1, Lmt;

    .line 76
    invoke-virtual {p0, p1}, Lmt;->a(Lmh;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lmt;->a:Z

    iget-boolean v2, p1, Lmt;->a:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lmt;->a()I

    move-result v1

    iget-boolean v0, p0, Lmt;->a:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    const-string v0, "StarredOp[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lmt;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lmt;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
