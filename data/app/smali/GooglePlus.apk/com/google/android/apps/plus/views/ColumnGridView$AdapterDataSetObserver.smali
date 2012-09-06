.class Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/ColumnGridView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/ColumnGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/views/ColumnGridView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2667
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;-><init>(Lcom/google/android/apps/plus/views/ColumnGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 8

    .prologue
    .line 2670
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/4 v5, 0x1

    #setter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mDataChanged:Z
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$602(Lcom/google/android/apps/plus/views/ColumnGridView;Z)Z

    .line 2671
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v3

    .line 2672
    .local v3, oldItemCount:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$800(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    #setter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$702(Lcom/google/android/apps/plus/views/ColumnGridView;I)I

    .line 2674
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v4

    if-ge v4, v3, :cond_57

    .line 2676
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$900(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2f
    if-ltz v1, :cond_57

    .line 2677
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$900(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2678
    .local v2, key:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v4

    if-lt v2, v4, :cond_54

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mSelectedPositions:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$900(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2679
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->deselect(I)V

    .line 2676
    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 2685
    .end local v1           #i:I
    .end local v2           #key:I
    :cond_57
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mRecycler:Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1000(Lcom/google/android/apps/plus/views/ColumnGridView;)Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ColumnGridView$RecycleBin;->clearTransientViews()V

    .line 2687
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v4

    if-nez v4, :cond_73

    .line 2688
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #calls: Lcom/google/android/apps/plus/views/ColumnGridView;->clearAllState()V
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1100(Lcom/google/android/apps/plus/views/ColumnGridView;)V

    .line 2706
    :cond_6d
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->requestLayout()V

    .line 2707
    return-void

    .line 2689
    :cond_73
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mHasStableIds:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1200(Lcom/google/android/apps/plus/views/ColumnGridView;)Z

    move-result v4

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v4

    if-ge v4, v3, :cond_6d

    .line 2691
    :cond_83
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mBug6713624LinkedHashMap:Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1300(Lcom/google/android/apps/plus/views/ColumnGridView;)Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;

    move-result-object v4

    const-string v5, "onchanged - clear"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/views/ColumnGridView$Bug6713624LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1400(Lcom/google/android/apps/plus/views/ColumnGridView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2693
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #calls: Lcom/google/android/apps/plus/views/ColumnGridView;->recycleAllViews()V
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1500(Lcom/google/android/apps/plus/views/ColumnGridView;)V

    .line 2695
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1600(Lcom/google/android/apps/plus/views/ColumnGridView;)[I

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 2697
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mColCount:I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1700(Lcom/google/android/apps/plus/views/ColumnGridView;)I

    move-result v0

    .line 2698
    .local v0, colCount:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_b0
    if-ge v1, v0, :cond_6d

    .line 2699
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemEnd:[I
    invoke-static {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1800(Lcom/google/android/apps/plus/views/ColumnGridView;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView$AdapterDataSetObserver;->this$0:Lcom/google/android/apps/plus/views/ColumnGridView;

    #getter for: Lcom/google/android/apps/plus/views/ColumnGridView;->mItemStart:[I
    invoke-static {v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->access$1600(Lcom/google/android/apps/plus/views/ColumnGridView;)[I

    move-result-object v5

    aget v5, v5, v1

    aput v5, v4, v1

    .line 2698
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0
.end method

.method public onInvalidated()V
    .registers 1

    .prologue
    .line 2711
    return-void
.end method
