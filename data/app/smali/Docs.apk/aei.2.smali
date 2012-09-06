.class final Laei;
.super Ljava/util/AbstractMap;
.source "DataMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laef;

.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 45
    iput-object p1, p0, Laei;->a:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Laef;->a(Ljava/lang/Class;Z)Laef;

    move-result-object v0

    iput-object v0, p0, Laei;->a:Laef;

    .line 47
    iget-object v0, p0, Laei;->a:Laef;

    invoke-virtual {v0}, Laef;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, LafQ;->a(Z)V

    .line 48
    return-void

    .line 47
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public a()Lael;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lael;

    invoke-direct {v0, p0}, Lael;-><init>(Laei;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Laei;->a:Laef;

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no field of key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Laei;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    iget-object v2, p0, Laei;->a:Ljava/lang/Object;

    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Laei;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Laei;->a()Lael;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_6

    .line 69
    :cond_5
    :goto_5
    return-object v0

    .line 65
    :cond_6
    iget-object v1, p0, Laei;->a:Laef;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    .line 69
    iget-object v0, p0, Laei;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Laei;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
