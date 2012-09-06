.class public abstract Lr/j;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:[Lr/m;

.field private b:I

.field private c:Lr/f;

.field private d:Ljava/util/Map;


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 1631
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 1632
    new-array v0, p1, [Lr/m;

    iput-object v0, p0, Lr/j;->a:[Lr/m;

    .line 1633
    const/4 v0, 0x0

    iput v0, p0, Lr/j;->b:I

    .line 1634
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lr/j;->d:Ljava/util/Map;

    .line 1635
    return-void
.end method

.method static synthetic a(Lr/j;)Lr/f;
    .registers 2
    .parameter

    .prologue
    .line 1619
    iget-object v0, p0, Lr/j;->c:Lr/f;

    return-object v0
.end method

.method static synthetic a(Lr/j;Lr/f;)Lr/f;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Lr/j;->c:Lr/f;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 5
    .parameter

    .prologue
    .line 1680
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 1681
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 1683
    :cond_e
    iget-object v0, p0, Lr/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(I)Lr/m;
    .registers 3
    .parameter

    .prologue
    .line 1671
    iget-object v0, p0, Lr/j;->a:[Lr/m;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final a(Landroid/util/Pair;Lr/m;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1647
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 1648
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 1650
    :cond_e
    iget-object v0, p0, Lr/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate tile key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", already exists in batch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1654
    :cond_35
    iget-object v0, p0, Lr/j;->d:Ljava/util/Map;

    iget v1, p0, Lr/j;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v0, p0, Lr/j;->a:[Lr/m;

    iget v1, p0, Lr/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr/j;->b:I

    aput-object p2, v0, v1

    .line 1656
    return-void
.end method

.method protected a(Lr/m;)Z
    .registers 3
    .parameter

    .prologue
    .line 1752
    const/4 v0, 0x1

    return v0
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 1725
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract b(I)Ln/al;
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 1663
    iget v0, p0, Lr/j;->b:I

    return v0
.end method

.method protected c(I)[B
    .registers 3
    .parameter

    .prologue
    .line 1739
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Z
    .registers 3

    .prologue
    .line 1690
    iget v0, p0, Lr/j;->b:I

    iget-object v1, p0, Lr/j;->a:[Lr/m;

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public h_()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1695
    iget-object v2, p0, Lr/j;->a:[Lr/m;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    .line 1699
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lr/m;->i()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1703
    :goto_11
    return v0

    .line 1695
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1703
    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method
