.class public final Lcom/google/android/youtube/core/a/b;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private final a:Lcom/google/android/youtube/core/a/a;

.field private final b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/a/a;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/a/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    .line 30
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/core/a/b;->b:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/a/c;-><init>(Lcom/google/android/youtube/core/a/b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/a/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->c()V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 79
    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Iterable;)V

    .line 69
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    .line 97
    if-nez v0, :cond_a

    .line 98
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 100
    :cond_a
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/a/a;->b(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    .line 105
    if-eqz v0, :cond_a

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/b;->notifyDataSetChanged()V

    .line 108
    :cond_a
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 53
    const-wide/16 v0, -0x1

    .line 55
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_e
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->b:Landroid/view/View;

    .line 63
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/a/b;->b:Landroid/view/View;

    if-ne p2, v1, :cond_16

    const/4 p2, 0x0

    :cond_16
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    return-object v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/youtube/core/a/b;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/a/b;->a:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/a;->isEnabled(I)Z

    move-result v0

    goto :goto_d
.end method
