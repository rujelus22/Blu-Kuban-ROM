.class public final Lcom/google/android/youtube/app/adapter/bi;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/a/a;

.field private final b:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/a/a;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 27
    const-string v0, "target cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 50
    return-void
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/a/a;->b(ILjava/lang/Object;)V

    .line 78
    :cond_12
    return-void
.end method

.method protected final a(Ljava/lang/Iterable;)V
    .registers 6
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 57
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 61
    :cond_24
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Iterable;)V

    .line 62
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->d(Ljava/lang/Object;)V

    .line 70
    :cond_12
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bi;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    .line 90
    :goto_a
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 91
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 92
    if-ne v2, p1, :cond_26

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->b(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    const/4 v1, 0x1

    .line 99
    :cond_25
    return v1

    .line 90
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bi;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->isEnabled(I)Z

    move-result v0

    return v0
.end method
