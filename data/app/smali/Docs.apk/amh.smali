.class public final Lamh;
.super Lame;
.source "JsonObject.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lame;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lamh;->a:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lame;
    .registers 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lamh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 153
    iget-object v0, p0, Lamh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    .line 154
    if-nez v0, :cond_14

    sget-object v0, Lamg;->a:Lamg;

    .line 156
    :cond_14
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lame;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lamh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lame;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p2, :cond_4

    .line 55
    sget-object p2, Lamg;->a:Lamg;

    .line 57
    :cond_4
    iget-object v0, p0, Lamh;->a:Ljava/util/Map;

    invoke-static {p1}, Lamo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 191
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lamh;

    if-eqz v0, :cond_14

    check-cast p1, Lamh;

    iget-object v0, p1, Lamh;->a:Ljava/util/Map;

    iget-object v1, p0, Lamh;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lamh;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
