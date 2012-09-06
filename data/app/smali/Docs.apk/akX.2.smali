.class public final LakX;
.super Ljava/lang/Object;
.source "Sets.java"


# direct methods
.method static a(Ljava/util/Set;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1252
    .line 1253
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    goto :goto_6

    :cond_18
    move v2, v1

    goto :goto_16

    .line 1256
    :cond_1a
    return v0
.end method

.method public static a()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lakz;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static a()Ljava/util/LinkedHashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 1277
    :cond_5
    :goto_5
    return v1

    .line 1266
    :cond_6
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 1267
    check-cast p1, Ljava/util/Set;

    .line 1270
    :try_start_c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1e

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_20

    move-result v2

    if-eqz v2, :cond_1e

    :goto_1c
    move v1, v0

    goto :goto_5

    :cond_1e
    move v0, v1

    goto :goto_1c

    .line 1273
    :catch_20
    move-exception v0

    goto :goto_5

    .line 1271
    :catch_22
    move-exception v0

    goto :goto_5
.end method
