.class final Lcom/google/android/apps/reader/fragment/LoaderFilterable;
.super Ljava/lang/Object;
.source "LoaderFilterable.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/WrapperListAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field final mAdapter:Landroid/widget/ListAdapter;

.field final mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/reader/fragment/LoaderFilterable",
            "<TT;>.",
            "LoaderFilter;"
        }
    .end annotation
.end field

.field final mLoaderId:I

.field final mLoaderManager:Landroid/support/v4/app/LoaderManager;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .registers 5
    .parameter "adapter"
    .parameter "loaderManager"
    .parameter "loaderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListAdapter;",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    .local p4, loaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    .line 56
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    .line 57
    iput p3, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mLoaderId:I

    .line 58
    iput-object p4, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 59
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 128
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mFilter:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;

    if-nez v0, :cond_b

    .line 129
    new-instance v0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;-><init>(Lcom/google/android/apps/reader/fragment/LoaderFilterable;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mFilter:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mFilter:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 93
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 113
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 118
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 63
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 103
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 123
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    return-void
.end method
