.class public Lcom/vlingo/client/core/util/SortUtils;
.super Ljava/lang/Object;
.source "SortUtils.java"

# interfaces
.implements Lcom/vlingo/client/core/util/SortAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/util/SortUtils$Comparable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static quicksort(Ljava/util/Vector;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, v:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/core/util/SortUtils;->quicksort(Ljava/util/Vector;II)V

    .line 32
    return-void
.end method

.method public static quicksort(Ljava/util/Vector;II)V
    .registers 8
    .parameter
    .parameter "left"
    .parameter "right"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, v:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    if-lt p1, p2, :cond_3

    .line 53
    :goto_2
    return-void

    .line 41
    :cond_3
    add-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    invoke-static {p0, p1, v4}, Lcom/vlingo/client/core/util/SortUtils;->swap(Ljava/util/Vector;II)V

    .line 42
    move v3, p1

    .line 43
    .local v3, last:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_d
    if-gt v0, p2, :cond_29

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/util/SortUtils$Comparable;

    .line 45
    .local v1, ic:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/util/SortUtils$Comparable;

    .line 46
    .local v2, icleft:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    invoke-interface {v1, v2}, Lcom/vlingo/client/core/util/SortUtils$Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_26

    .line 47
    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3, v0}, Lcom/vlingo/client/core/util/SortUtils;->swap(Ljava/util/Vector;II)V

    .line 43
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 50
    .end local v1           #ic:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    .end local v2           #icleft:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    :cond_29
    invoke-static {p0, p1, v3}, Lcom/vlingo/client/core/util/SortUtils;->swap(Ljava/util/Vector;II)V

    .line 51
    add-int/lit8 v4, v3, -0x1

    invoke-static {p0, p1, v4}, Lcom/vlingo/client/core/util/SortUtils;->quicksort(Ljava/util/Vector;II)V

    .line 52
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4, p2}, Lcom/vlingo/client/core/util/SortUtils;->quicksort(Ljava/util/Vector;II)V

    goto :goto_2
.end method

.method public static quicksort([Ljava/lang/Object;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/core/util/SortUtils;->quicksort([Ljava/lang/Object;II)V

    .line 63
    return-void
.end method

.method public static quicksort([Ljava/lang/Object;II)V
    .registers 8
    .parameter "v"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 69
    if-lt p1, p2, :cond_3

    .line 84
    :goto_2
    return-void

    .line 72
    :cond_3
    add-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    invoke-static {p0, p1, v4}, Lcom/vlingo/client/core/util/SortUtils;->swap([Ljava/lang/Object;II)V

    .line 73
    move v3, p1

    .line 74
    .local v3, last:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_d
    if-gt v0, p2, :cond_25

    .line 75
    aget-object v1, p0, v0

    check-cast v1, Lcom/vlingo/client/core/util/SortUtils$Comparable;

    .line 76
    .local v1, ic:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    aget-object v2, p0, p1

    check-cast v2, Lcom/vlingo/client/core/util/SortUtils$Comparable;

    .line 77
    .local v2, icleft:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    invoke-interface {v1, v2}, Lcom/vlingo/client/core/util/SortUtils$Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_22

    .line 78
    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3, v0}, Lcom/vlingo/client/core/util/SortUtils;->swap([Ljava/lang/Object;II)V

    .line 74
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 81
    .end local v1           #ic:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    .end local v2           #icleft:Lcom/vlingo/client/core/util/SortUtils$Comparable;
    :cond_25
    invoke-static {p0, p1, v3}, Lcom/vlingo/client/core/util/SortUtils;->swap([Ljava/lang/Object;II)V

    .line 82
    add-int/lit8 v4, v3, -0x1

    invoke-static {p0, p1, v4}, Lcom/vlingo/client/core/util/SortUtils;->quicksort([Ljava/lang/Object;II)V

    .line 83
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4, p2}, Lcom/vlingo/client/core/util/SortUtils;->quicksort([Ljava/lang/Object;II)V

    goto :goto_2
.end method

.method private static swap(Ljava/util/Vector;II)V
    .registers 6
    .parameter "v"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 24
    move-object v0, p0

    .line 25
    .local v0, t:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, tmp:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 27
    invoke-virtual {v0, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 28
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5
    .parameter "v"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 56
    aget-object v0, p0, p1

    .line 57
    .local v0, tmp:Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 58
    aput-object v0, p0, p2

    .line 59
    return-void
.end method


# virtual methods
.method public sort([Ljava/lang/Object;II)V
    .registers 4
    .parameter "v"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 91
    invoke-static {p1, p2, p3}, Lcom/vlingo/client/core/util/SortUtils;->quicksort([Ljava/lang/Object;II)V

    .line 92
    return-void
.end method
