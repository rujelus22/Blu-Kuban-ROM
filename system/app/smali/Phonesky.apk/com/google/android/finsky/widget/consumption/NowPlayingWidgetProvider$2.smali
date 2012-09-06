.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/finsky/widget/consumption/Block;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 773
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, lhs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    .local p2, rhs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 798
    if-ne p1, p2, :cond_6

    .line 799
    const/4 v4, 0x0

    .line 814
    :cond_5
    :goto_5
    return v4

    .line 801
    :cond_6
    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v1

    .line 802
    .local v1, lHeight:I
    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p2, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v3

    .line 803
    .local v3, rHeight:I
    if-eq v1, v3, :cond_18

    .line 804
    if-lt v1, v3, :cond_5

    move v4, v5

    goto :goto_5

    .line 807
    :cond_18
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v0

    .line 808
    .local v0, lCells:I
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v2

    .line 809
    .local v2, rCells:I
    if-eq v0, v2, :cond_26

    .line 812
    if-lt v0, v2, :cond_5

    move v4, v5

    goto :goto_5

    .line 814
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-gt v6, v7, :cond_5

    move v4, v5

    goto :goto_5
.end method

.method getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I
    .registers 11
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, blocks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v5, 0x0

    .line 784
    .local v5, totalCount:I
    const/4 v6, 0x0

    .line 785
    .local v6, totalHeight:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 786
    .local v4, res:Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    .line 787
    .local v0, block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v1

    .line 788
    .local v1, blockImages:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 789
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 791
    :cond_29
    add-int/2addr v5, v1

    .line 792
    goto :goto_a

    .line 793
    .end local v0           #block:Lcom/google/android/finsky/widget/consumption/Block;
    .end local v1           #blockImages:I
    .end local v2           #i:I
    :cond_2b
    div-int v7, v6, v5

    return v7
.end method

.method getRowCellCount(Ljava/util/List;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, blocks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/Block;>;"
    const/4 v2, 0x0

    .line 776
    .local v2, result:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    .line 777
    .local v0, block:Lcom/google/android/finsky/widget/consumption/Block;
    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5

    .line 779
    .end local v0           #block:Lcom/google/android/finsky/widget/consumption/Block;
    :cond_17
    return v2
.end method
