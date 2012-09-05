.class public final Lcom/google/common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final standardJoiner:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 300
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Collections2;->standardJoiner:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setEquals(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter "object"
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
    .local p0, thisSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-ne p1, p0, :cond_5

    .line 297
    :cond_4
    :goto_4
    return v1

    .line 292
    :cond_5
    instance-of v3, p1, Ljava/util/Set;

    if-eqz v3, :cond_1e

    move-object v0, p1

    .line 293
    check-cast v0, Ljava/util/Set;

    .line 294
    .local v0, thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1c

    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1c
    move v1, v2

    goto :goto_4

    .end local v0           #thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_1e
    move v1, v2

    .line 297
    goto :goto_4
.end method

.method static toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :goto_6
    return-object p0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :cond_7
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_6
.end method
