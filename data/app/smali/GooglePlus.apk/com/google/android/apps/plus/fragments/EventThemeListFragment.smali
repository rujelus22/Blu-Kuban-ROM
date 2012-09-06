.class public Lcom/google/android/apps/plus/fragments/EventThemeListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "EventThemeListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;,
        Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/EsCursorAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/Refreshable;"
    }
.end annotation


# static fields
.field private static final EVENT_THEME_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mDataLoaded:Z

.field private mFilter:I

.field private mListener:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;

.field private mProgressBarView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "theme_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->EVENT_THEME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mFilter:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mFilter:I

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->EVENT_THEME_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private updateProgressBarVisibility()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_f

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    :cond_f
    return-void

    .line 162
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private updateView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 141
    if-nez p1, :cond_3

    .line 152
    :goto_2
    return-void

    .line 145
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_e

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->showContent(Landroid/view/View;)V

    .line 151
    :goto_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->updateProgressBarVisibility()V

    goto :goto_2

    .line 148
    :cond_e
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    if-eqz p1, :cond_d

    .line 86
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mFilter:I

    .line 89
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 90
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
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
    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 172
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 173
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    packed-switch p1, :pswitch_data_14

    .line 185
    const/4 v2, 0x0

    :goto_c
    return-object v2

    .line 175
    :pswitch_d
    new-instance v2, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;

    invoke-direct {v2, p0, v1, v1, v0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 173
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    const v1, 0x7f030040

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$EventThemeListAdapter;-><init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EventThemeListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 121
    const v1, 0x7f08040b

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 123
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 132
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 133
    .local v2, themeId:I
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;

    if-eqz v3, :cond_1b

    .line 135
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;

    invoke-interface {v3, v2, v1}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;->onThemeSelected(ILjava/lang/String;)V

    .line 138
    :cond_1b
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
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
    .line 193
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mDataLoaded:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->updateView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
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
    .line 204
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "filter"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public setOnThemeSelectedListener(Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mListener:Lcom/google/android/apps/plus/fragments/EventThemeListFragment$OnThemeSelectedListener;

    .line 76
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 2
    .parameter "progressBarView"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 157
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EventThemeListFragment;->updateProgressBarVisibility()V

    .line 158
    return-void
.end method
