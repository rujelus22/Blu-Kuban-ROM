.class abstract LahX;
.super LahI;
.source "AbstractSetMultimap.java"

# interfaces
.implements LakW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LahI",
        "<TK;TV;>;",
        "LakW",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, LahI;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, LahX;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, LahI;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, LahI;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, LahI;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, LahX;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract b()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, LahI;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
