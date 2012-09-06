.class public Lmf;
.super Lmh;
.source "NameOp.java"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LkT;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "rename"

    invoke-direct {p0, p1, v0}, Lmh;-><init>(LkT;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lmf;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(LkT;Lorg/json/JSONObject;)Lmf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lmf;

    const-string v1, "nameValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmf;-><init>(LkT;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(LkT;)Lmg;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v0, Lmf;

    invoke-virtual {p1}, LkT;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmf;-><init>(LkT;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lmf;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, LkT;->c(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 54
    invoke-super {p0}, Lmh;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    const-string v1, "operationName"

    const-string v2, "rename"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "nameValue"

    iget-object v2, p0, Lmf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    return-object v0
.end method

.method public a(LSs;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lmf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, LSs;->v(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lmf;

    if-nez v1, :cond_6

    .line 67
    :cond_5
    :goto_5
    return v0

    .line 66
    :cond_6
    check-cast p1, Lmf;

    .line 67
    invoke-virtual {p0, p1}, Lmf;->a(Lmh;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf;->c:Ljava/lang/String;

    iget-object v2, p1, Lmf;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lmf;->a()I

    move-result v0

    iget-object v1, p0, Lmf;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 77
    const-string v0, "NameOp[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lmf;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
