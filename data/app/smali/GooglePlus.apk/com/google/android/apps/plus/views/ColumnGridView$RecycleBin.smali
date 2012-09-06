.class Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;
.super Ljava/lang/Object;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mRecyclerListener:Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2576
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;-><init>()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;)Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mRecyclerListener:Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;

    return-object p1
.end method


# virtual methods
.method public addScrap(Landroid/view/View;I)V
    .registers 7
    .parameter "v"
    .parameter "childCount"

    .prologue
    .line 2619
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    .line 2620
    .local v0, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2621
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v2, :cond_17

    .line 2622
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 2624
    :cond_17
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->position:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2640
    :cond_1e
    :goto_1e
    return-void

    .line 2628
    :cond_1f
    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mMaxScrap:I

    if-le p2, v2, :cond_25

    .line 2629
    iput p2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mMaxScrap:I

    .line 2632
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v3, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->viewType:I

    aget-object v1, v2, v3

    .line 2633
    .local v1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mMaxScrap:I

    if-ge v2, v3, :cond_36

    .line 2634
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    :cond_36
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mRecyclerListener:Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;

    if-eqz v2, :cond_1e

    .line 2638
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mRecyclerListener:Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_1e
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 2603
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mViewTypeCount:I

    .line 2604
    .local v1, typeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_f

    .line 2605
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2604
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2607
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_18

    .line 2608
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2610
    :cond_18
    return-void
.end method

.method public clearTransientViews()V
    .registers 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 2614
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2616
    :cond_9
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .registers 6
    .parameter "type"

    .prologue
    .line 2655
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 2656
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2657
    const/4 v1, 0x0

    .line 2663
    :goto_b
    return-object v1

    .line 2660
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 2661
    .local v0, index:I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2662
    .local v1, result:Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .registers 4
    .parameter "position"

    .prologue
    .line 2643
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_6

    .line 2644
    const/4 v0, 0x0

    .line 2651
    :cond_5
    :goto_5
    return-object v0

    .line 2647
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2648
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_5

    .line 2649
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5
.end method

.method public setViewTypeCount(I)V
    .registers 7
    .parameter "viewTypeCount"

    .prologue
    .line 2586
    const/4 v2, 0x1

    if-ge p1, v2, :cond_22

    .line 2587
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2590
    :cond_22
    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_27

    .line 2600
    :goto_26
    return-void

    .line 2594
    :cond_27
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 2595
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    if-ge v0, p1, :cond_36

    .line 2596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 2595
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 2598
    :cond_36
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mViewTypeCount:I

    .line 2599
    iput-object v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_26
.end method
