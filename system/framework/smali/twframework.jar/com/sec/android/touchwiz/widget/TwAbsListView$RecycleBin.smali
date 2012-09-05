.class Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

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

.field private mShouldRetainViews:Ljava/util/HashMap;

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 6636
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6651
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6636
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)[Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .registers 13

    .prologue
    .line 6962
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 6963
    .local v3, maxViews:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 6964
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6965
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v8, :cond_2d

    .line 6966
    aget-object v4, v5, v1

    .line 6967
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6968
    .local v6, size:I
    sub-int v0, v6, v3

    .line 6969
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 6970
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 6971
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 6970
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_16

    .line 6965
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6974
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_2d
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .registers 3
    .parameter "scrap"

    .prologue
    .line 6825
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    .line 6826
    return-void
.end method

.method addScrapView(Landroid/view/View;I)V
    .registers 7
    .parameter "scrap"
    .parameter "position"

    .prologue
    .line 6877
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 6878
    .local v0, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v0, :cond_9

    .line 6905
    :cond_8
    :goto_8
    return-void

    .line 6884
    :cond_9
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 6885
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 6886
    const/4 v2, -0x2

    if-eq v1, v2, :cond_8

    .line 6887
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    goto :goto_8

    .line 6892
    :cond_1b
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 6894
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 6895
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6896
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6902
    :goto_2a
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v2, :cond_8

    .line 6903
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_8

    .line 6898
    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6899
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method addScrapView(Landroid/view/View;Z)V
    .registers 8
    .parameter "scrap"
    .parameter "ignoreRetainView"

    .prologue
    .line 6834
    if-nez p1, :cond_3

    .line 6869
    :cond_2
    :goto_2
    return-void

    .line 6837
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 6838
    .local v0, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v0, :cond_2

    .line 6842
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 6843
    .local v1, retainViews:Ljava/util/HashMap;
    if-eqz v1, :cond_1f

    if-nez p2, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6844
    const-string v3, "[ABS_LIST]"

    const-string v4, "scrap view should be retained~! return~!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6850
    :cond_1f
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 6851
    .local v2, viewType:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 6852
    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    .line 6853
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v4, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, p1, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    goto :goto_2

    .line 6858
    :cond_31
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_48

    .line 6859
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6860
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6866
    :goto_3e
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v3, :cond_2

    .line 6867
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_2

    .line 6862
    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6863
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .registers 5
    .parameter "position"
    .parameter "v"

    .prologue
    .line 6665
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6670
    :goto_e
    return-void

    .line 6667
    :cond_f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_1a

    .line 6668
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 6669
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 6744
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 6745
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6746
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6747
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 6748
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 6747
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 6751
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_20
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 6752
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 6753
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 6754
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6755
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 6756
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 6755
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 6752
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 6760
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_44
    return-void
.end method

.method public clearShouldRetainView()V
    .registers 4

    .prologue
    .line 6673
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_30

    .line 6674
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    goto :goto_e

    .line 6678
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6680
    .end local v0           #itr:Ljava/util/Iterator;
    :cond_30
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 6771
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 6772
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6774
    :cond_9
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 6776
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6777
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 6778
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6779
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 6782
    .local v3, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 6786
    aput-object v1, v0, v2

    .line 6777
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 6789
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 6799
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 6800
    .local v1, index:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6801
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 6802
    aget-object v2, v0, v1

    .line 6803
    .local v2, match:Landroid/view/View;
    aput-object v3, v0, v1

    .line 6806
    .end local v2           #match:Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 6688
    const/4 v0, 0x0

    .line 6689
    .local v0, ret:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 6690
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 6691
    :cond_17
    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .parameter "position"

    .prologue
    .line 6813
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 6814
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 6821
    :goto_b
    return-object v1

    .line 6816
    :cond_c
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 6817
    .local v0, whichScrap:I
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 6818
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 6821
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .registers 4
    .parameter "position"

    .prologue
    .line 6699
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getShouldRetainViewCount()I
    .registers 2

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public markChildrenDirty()V
    .registers 8

    .prologue
    .line 6718
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 6719
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6720
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6721
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_39

    .line 6722
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 6721
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 6725
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_1a
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 6726
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1d
    if-ge v0, v4, :cond_39

    .line 6727
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 6728
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6729
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_28
    if-ge v1, v3, :cond_36

    .line 6730
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 6729
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 6726
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 6734
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_39
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6980
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 6981
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6990
    :cond_a
    return-void

    .line 6983
    :cond_b
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 6984
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6985
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 6986
    aget-object v1, v2, v0

    .line 6987
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6985
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public removeShouldRetainView(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 6683
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 6684
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6685
    :cond_d
    return-void
.end method

.method scrapActiveViews()V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 6911
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6912
    .local v0, activeViews:[Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v11, :cond_35

    move v2, v9

    .line 6913
    .local v2, hasListener:Z
    :goto_9
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v11, v9, :cond_37

    move v5, v9

    .line 6915
    .local v5, multipleScraps:Z
    :goto_e
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6916
    .local v6, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 6917
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_13
    if-ltz v3, :cond_52

    .line 6918
    aget-object v7, v0, v3

    .line 6919
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_32

    .line 6920
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 6922
    .local v4, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 6924
    .local v8, whichScrap:I
    const/4 v9, 0x0

    aput-object v9, v0, v3

    .line 6926
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-nez v9, :cond_39

    .line 6928
    const/4 v9, -0x2

    if-eq v8, v9, :cond_32

    .line 6929
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v9, v7, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 6917
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v8           #whichScrap:I
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v5           #multipleScraps:Z
    .end local v6           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #victim:Landroid/view/View;
    :cond_35
    move v2, v10

    .line 6912
    goto :goto_9

    .restart local v2       #hasListener:Z
    :cond_37
    move v5, v10

    .line 6913
    goto :goto_e

    .line 6934
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v5       #multipleScraps:Z
    .restart local v6       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7       #victim:Landroid/view/View;
    .restart local v8       #whichScrap:I
    :cond_39
    if-eqz v5, :cond_3f

    .line 6935
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v6, v9, v8

    .line 6937
    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 6938
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v9, v3

    iput v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 6939
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6941
    if-eqz v2, :cond_32

    .line 6942
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v9, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_32

    .line 6953
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v7           #victim:Landroid/view/View;
    .end local v8           #whichScrap:I
    :cond_52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->pruneScrapViews()V

    .line 6954
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .parameter "color"

    .prologue
    .line 6998
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 6999
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7000
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7001
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 7002
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7001
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7005
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_1a
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 7006
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 7007
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 7008
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7009
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 7010
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7009
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 7006
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 7015
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    :cond_39
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7016
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 7017
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 7018
    aget-object v7, v0, v2

    .line 7019
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_46

    .line 7020
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7017
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 7023
    .end local v7           #victim:Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .parameter "viewTypeCount"

    .prologue
    .line 6704
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 6705
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6708
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 6709
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 6710
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 6709
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6712
    :cond_1a
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 6713
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6714
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6715
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .parameter "viewType"

    .prologue
    .line 6737
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
