.class public final Lcom/google/android/apps/reader/fragment/ListStateObserver;
.super Ljava/lang/Object;
.source "ListStateObserver.java"

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
.field private final mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmpty:Landroid/view/View;

.field private final mError:Landroid/view/View;

.field private final mLoading:Landroid/view/View;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 8
    .parameter
    .parameter "container"
    .parameter "listener"
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
    .local p1, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    const/16 v3, 0x8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 60
    iput-object p3, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 62
    const v1, 0x102000a

    const-string v2, "list"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mAdapterView:Landroid/widget/AdapterView;

    .line 66
    const v1, 0x7f0b0030

    const-string v2, "empty"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mEmpty:Landroid/view/View;

    .line 67
    const v1, 0x7f0b000c

    const-string v2, "loading"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mLoading:Landroid/view/View;

    .line 68
    const v1, 0x7f0b002e

    const-string v2, "error"

    invoke-static {p2, v1, v2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->findRequiredViewById(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mError:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mEmpty:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mLoading:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x0

    :goto_4b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v1, 0x7f0b002f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, retry:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .end local v0           #retry:Landroid/view/View;
    :cond_60
    move v2, v3

    .line 73
    goto :goto_4b
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
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1f

    .line 84
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

    .line 86
    :cond_1f
    return-object v0
.end method

.method public static forActivity(Landroid/app/Activity;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 5
    .parameter "activity"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    new-instance v0, Lcom/google/android/apps/reader/fragment/ListStateObserver;

    invoke-static {p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;-><init>(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 5
    .parameter "fragment"
    .parameter "root"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    new-instance v0, Lcom/google/android/apps/reader/fragment/ListStateObserver;

    invoke-direct {v0, p2, p1, p3}, Lcom/google/android/apps/reader/fragment/ListStateObserver;-><init>(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static getRootView(Landroid/app/Activity;)Landroid/view/View;
    .registers 2
    .parameter "activity"

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static hasError(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 161
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
    .line 156
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 157
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

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

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 131
    .local v0, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mEmpty:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mLoading:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-object v0

    :cond_1f
    move v2, v3

    .line 132
    goto :goto_16
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
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
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mEmpty:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {p2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->hasError(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_32

    move v1, v3

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mError:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->hasError(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v3

    :goto_29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void

    :cond_32
    move v1, v2

    .line 140
    goto :goto_17

    :cond_34
    move v1, v2

    .line 141
    goto :goto_29
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListStateObserver;->mError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method
