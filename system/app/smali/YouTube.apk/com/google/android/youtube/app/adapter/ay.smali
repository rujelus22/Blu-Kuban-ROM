.class public final Lcom/google/android/youtube/app/adapter/ay;
.super Lcom/google/android/youtube/app/adapter/bt;
.source "SourceFile"


# instance fields
.field private final i:Ljava/util/Map;

.field private j:Ljava/util/List;

.field private k:I

.field private final l:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    const/4 v6, 0x1

    sget v7, Lcom/google/android/youtube/app/adapter/ay;->f:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/adapter/bt;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/p;Lcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/app/prefetch/d;II)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    .line 41
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Video;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput p1, p0, Lcom/google/android/youtube/app/adapter/ay;->k:I

    .line 112
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 107
    :cond_3d
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method public final getItemViewType(I)I
    .registers 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ay;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 70
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should be < than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/ay;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_29
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ay;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 76
    if-eqz p2, :cond_44

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/youtube/app/adapter/bv;

    if-nez v0, :cond_44

    .line 77
    const/4 p2, 0x0

    .line 79
    :cond_44
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/bt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ay;->k:I

    .line 97
    :cond_4a
    :goto_4a
    return-object p2

    .line 90
    :cond_4b
    if-eqz p2, :cond_51

    instance-of v0, p2, Landroid/widget/ProgressBar;

    if-nez v0, :cond_4a

    .line 91
    :cond_51
    new-instance p2, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ay;->l:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4a
.end method

.method public final getViewTypeCount()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x2

    return v0
.end method
