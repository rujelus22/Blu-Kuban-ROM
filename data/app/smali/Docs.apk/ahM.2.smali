.class LahM;
.super LakB;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LakB",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahI;

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LahI;Ljava/util/Map;)V
    .registers 3
    .parameter
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
    .line 883
    iput-object p1, p0, LahM;->a:LahI;

    invoke-direct {p0}, LakB;-><init>()V

    .line 884
    iput-object p2, p0, LahM;->a:Ljava/util/Map;

    .line 885
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
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
    .line 889
    iget-object v0, p0, LahM;->a:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 933
    invoke-virtual {p0}, LahM;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)V

    .line 934
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, LahM;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 941
    if-eq p0, p1, :cond_e

    iget-object v0, p0, LahM;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, LahM;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v0, LahN;

    invoke-direct {v0, p0}, LahN;-><init>(LahM;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 921
    .line 922
    iget-object v0, p0, LahM;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 923
    if-eqz v0, :cond_1e

    .line 924
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 925
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 926
    iget-object v0, p0, LahM;->a:LahI;

    invoke-static {v0, v2}, LahI;->b(LahI;I)I

    move v0, v2

    .line 928
    :goto_18
    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :cond_1e
    move v0, v1

    goto :goto_18
.end method
