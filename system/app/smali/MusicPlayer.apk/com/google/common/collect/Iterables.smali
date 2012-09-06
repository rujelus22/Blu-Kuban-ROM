.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterables$IterableWithToString;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_15

    .line 184
    check-cast p0, Ljava/util/List;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z

    move-result v0

    .line 187
    :goto_14
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    goto :goto_14
.end method

.method private static removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v4, 0x1

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, from:I
    const/4 v3, 0x0

    .line 197
    .local v3, to:I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_22

    .line 198
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 200
    if-le v2, v3, :cond_18

    .line 202
    :try_start_15
    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_18} :catch_1d

    .line 208
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 197
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    :catch_1d
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    invoke-static {p0, p1, v3, v2}, Lcom/google/common/collect/Iterables;->slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V

    .line 214
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .end local v1           #element:Ljava/lang/Object;,"TT;"
    :cond_21
    :goto_21
    return v4

    .line 213
    :cond_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 214
    if-ne v2, v3, :cond_21

    const/4 v4, 0x0

    goto :goto_21
.end method

.method private static slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V
    .registers 6
    .parameter
    .parameter
    .parameter "to"
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, n:I
    :goto_6
    if-le v0, p3, :cond_18

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 231
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 235
    :cond_18
    add-int/lit8 v0, p3, -0x1

    :goto_1a
    if-lt v0, p2, :cond_22

    .line 236
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 238
    :cond_22
    return-void
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TF;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lcom/google/common/collect/Iterables$8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$8;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Function;)V

    return-object v0
.end method
