.class public LlP;
.super Lmh;
.source "LastViewedOp.java"


# instance fields
.field protected final a:Ljava/util/Date;


# direct methods
.method private constructor <init>(LkT;Ljava/util/Date;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, "viewed"

    invoke-direct {p0, p1, v0}, Lmh;-><init>(LkT;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, LlP;->a:Ljava/util/Date;

    .line 60
    return-void
.end method

.method public static a(LkT;Ljava/util/Date;)LlP;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, LkT;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, LkT;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40
    invoke-virtual {p0}, LkT;->c()Ljava/util/Date;

    move-result-object p1

    .line 43
    :cond_17
    new-instance v0, LlP;

    invoke-direct {v0, p0, p1}, LlP;-><init>(LkT;Ljava/util/Date;)V

    return-object v0
.end method

.method public static a(LkT;Lorg/json/JSONObject;)LlP;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    const-string v1, "lastViewed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 52
    new-instance v0, Ljava/util/Date;

    const-string v1, "lastViewed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 54
    :cond_14
    new-instance v1, LlP;

    invoke-direct {v1, p0, v0}, LlP;-><init>(LkT;Ljava/util/Date;)V

    return-object v1
.end method


# virtual methods
.method public a(LkT;)Lmg;
    .registers 4
    .parameter

    .prologue
    .line 72
    new-instance v0, LlP;

    invoke-virtual {p1}, LkT;->c()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LlP;-><init>(LkT;Ljava/util/Date;)V

    .line 73
    iget-object v1, p0, LlP;->a:Ljava/util/Date;

    invoke-virtual {p1, v1}, LkT;->c(Ljava/util/Date;)V

    .line 74
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 79
    invoke-super {p0}, Lmh;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    const-string v1, "operationName"

    const-string v2, "viewed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v1, p0, LlP;->a:Ljava/util/Date;

    if-eqz v1, :cond_1a

    .line 82
    const-string v1, "lastViewed"

    iget-object v2, p0, LlP;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    :cond_1a
    return-object v0
.end method

.method public a(LSs;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, LlP;->a:Ljava/util/Date;

    if-eqz v0, :cond_e

    iget-object v0, p0, LlP;->a:Ljava/util/Date;

    invoke-static {v0}, Llf;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_a
    invoke-virtual {p1, v0}, LSs;->e(Ljava/lang/String;)V

    .line 66
    return-void

    .line 64
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    instance-of v1, p1, LlP;

    if-nez v1, :cond_6

    .line 93
    :cond_5
    :goto_5
    return v0

    .line 92
    :cond_6
    check-cast p1, LlP;

    .line 93
    invoke-virtual {p0, p1}, LlP;->a(Lmh;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LlP;->a:Ljava/util/Date;

    iget-object v2, p1, LlP;->a:Ljava/util/Date;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, LlP;->a()I

    move-result v1

    iget-object v0, p0, LlP;->a:Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-object v0, p0, LlP;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 103
    const-string v0, "LastViewedOp[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LlP;->a:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LlP;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
