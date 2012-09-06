.class final Lcom/google/android/apps/reader/fragment/ItemStateObserver;
.super Ljava/lang/Object;
.source "ItemStateObserver.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mError:Landroid/view/View;

.field private final mItemView:Landroid/support/v4/view/ViewPager;

.field private final mLoading:Landroid/view/View;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 8
    .parameter
    .parameter "container"
    .parameter "onClickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    const/16 v3, 0x8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 48
    const v1, 0x7f0b000c

    const-string v2, "loading"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mLoading:Landroid/view/View;

    .line 49
    const v1, 0x7f0b002e

    const-string v2, "error"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mError:Landroid/view/View;

    .line 50
    const v1, 0x7f0b003a

    const-string v2, "item_container"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mItemView:Landroid/support/v4/view/ViewPager;

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mLoading:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    :goto_39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v1, 0x7f0b002f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, retry:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .end local v0           #retry:Landroid/view/View;
    :cond_4e
    move v2, v3

    .line 54
    goto :goto_39
.end method

.method private static findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "container"
    .parameter "id"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1f

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1f
    return-object v0
.end method

.method private static hasError(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 98
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.feeds.cursor.extra.ERROR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isEmpty()Z
    .registers 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mItemView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 94
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 73
    .local v0, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mLoading:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-object v0

    :cond_1a
    move v2, v3

    .line 73
    goto :goto_11
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/16 v2, 0x8

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mError:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p2}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->hasError(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void

    :cond_1f
    move v1, v2

    .line 82
    goto :goto_1b
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/16 v1, 0x8

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mCallback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method
