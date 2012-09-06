.class public final Lcom/google/android/youtube/app/ui/at;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private final a:Landroid/widget/BaseAdapter;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    .line 22
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 24
    new-instance v0, Lcom/google/android/youtube/app/ui/au;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/ui/au;-><init>(Lcom/google/android/youtube/app/ui/at;B)V

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    add-int/2addr v0, v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 42
    const-wide/16 v0, -0x1

    .line 44
    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_a
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    .line 52
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/at;->b:Landroid/view/View;

    if-ne p2, v1, :cond_12

    const/4 p2, 0x0

    :cond_12
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public final isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/at;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    .line 69
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
