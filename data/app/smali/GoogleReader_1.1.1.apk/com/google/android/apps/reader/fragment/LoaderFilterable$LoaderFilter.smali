.class Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;
.super Landroid/widget/Filter;
.source "LoaderFilterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/LoaderFilterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoaderFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/reader/fragment/LoaderFilterable;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>.LoaderFilter;"
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "resultValue"

    .prologue
    .line 150
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>.LoaderFilter;"
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget-object v1, v1, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_17

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget-object v0, v1, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    .line 153
    .local v0, f:Landroid/widget/Filterable;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 156
    .end local v0           #f:Landroid/widget/Filterable;
    :goto_16
    return-object v1

    :cond_17
    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_16
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3
    .parameter "constraint"

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;,"Lcom/google/android/apps/reader/fragment/LoaderFilterable<TT;>.LoaderFilter;"
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget-object v0, v0, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget v1, v1, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mLoaderId:I

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/LoaderFilterable$LoaderFilter;->this$0:Lcom/google/android/apps/reader/fragment/LoaderFilterable;

    iget-object v3, v3, Lcom/google/android/apps/reader/fragment/LoaderFilterable;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 146
    return-void
.end method
