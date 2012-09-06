.class public Lcom/google/android/apps/reader/widget/SingletonListAdapter;
.super Ljava/lang/Object;
.source "SingletonListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final mEnabled:Z

.field private final mItem:Ljava/lang/Object;

.field private final mItemId:J

.field private final mLayout:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;JZ)V
    .registers 6
    .parameter "layout"
    .parameter "data"
    .parameter "itemId"
    .parameter "isSelectable"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mLayout:I

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mItem:Ljava/lang/Object;

    .line 53
    iput-boolean p5, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mEnabled:Z

    .line 54
    iput-wide p3, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mItemId:J

    .line 55
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mEnabled:Z

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mItemId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 90
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 92
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 5

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/SingletonListAdapter;->mEnabled:Z

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 113
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 118
    return-void
.end method
