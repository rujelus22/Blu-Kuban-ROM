.class final Lcom/google/common/collect/SortedLists;
.super Ljava/lang/Object;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SortedLists$1;,
        Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;,
        Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter "presentBehavior"
    .parameter "absentBehavior"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/common/collect/SortedLists$KeyPresentBehavior;",
            "Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;",
            ")I"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    instance-of v4, p0, Ljava/util/RandomAccess;

    if-nez v4, :cond_14

    .line 263
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 267
    :cond_14
    const/4 v1, 0x0

    .line 268
    .local v1, lower:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 270
    .local v3, upper:I
    :goto_1b
    if-gt v1, v3, :cond_41

    .line 271
    add-int v4, v1, v3

    ushr-int/lit8 v2, v4, 0x1

    .line 272
    .local v2, middle:I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 273
    .local v0, c:I
    if-gez v0, :cond_2e

    .line 274
    add-int/lit8 v3, v2, -0x1

    goto :goto_1b

    .line 275
    :cond_2e
    if-lez v0, :cond_33

    .line 276
    add-int/lit8 v1, v2, 0x1

    goto :goto_1b

    .line 278
    :cond_33
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    sub-int v5, v2, v1

    invoke-virtual {p3, p2, p1, v4, v5}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v4

    add-int/2addr v4, v1

    .line 282
    .end local v0           #c:I
    .end local v2           #middle:I
    :goto_40
    return v4

    :cond_41
    invoke-virtual {p4, v1}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->resultIndex(I)I

    move-result v4

    goto :goto_40
.end method
