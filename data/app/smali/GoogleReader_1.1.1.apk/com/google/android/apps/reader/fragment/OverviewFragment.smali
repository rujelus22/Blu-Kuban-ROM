.class public Lcom/google/android/apps/reader/fragment/OverviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "OverviewFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_OVERVIEW:I = 0x1

.field public static final STATE_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

.field private mEmptyView:Landroid/widget/TextView;

.field private mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/apps/reader/fragment/OverviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private callbacks(Landroid/view/View;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .registers 4
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->from(Landroid/content/Context;)Lcom/google/android/apps/reader/widget/ReaderWindow;

    move-result-object v0

    invoke-static {p0, p1, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->observe(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v0

    return-object v0
.end method

.method private linkify()V
    .registers 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_14

    .line 146
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 147
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_14

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0d0057

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/reader/widget/ReaderLinks;->linkify(Landroid/widget/TextView;ILcom/google/android/accounts/Account;)V

    .line 151
    .end local v0           #account:Lcom/google/android/accounts/Account;
    :cond_14
    return-void
.end method


# virtual methods
.method public changeAccount(Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 154
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Overview;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .line 155
    .local v0, uri:Landroid/net/Uri;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->changeUri(Landroid/net/Uri;)V

    .line 156
    return-void

    .line 154
    .end local v0           #uri:Landroid/net/Uri;
    :cond_b
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_7
.end method

.method public changeUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 139
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->linkify()V

    .line 142
    return-void

    .line 140
    :cond_13
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 171
    :goto_7
    return-void

    .line 168
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 166
    :pswitch_data_e
    .packed-switch 0x7f0b002f
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
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
    .line 117
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    const v3, 0x7f030027

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 65
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/google/android/apps/reader/widget/OverviewAdapter;

    invoke-direct {v3, v1}, Lcom/google/android/apps/reader/widget/OverviewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    .line 67
    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mEmptyView:Landroid/widget/TextView;

    .line 69
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 70
    .local v0, adapterView:Landroid/widget/AbsListView;
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    new-instance v3, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->callbacks(Landroid/view/View;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-direct {v3, v1, v4, v7, v5}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 74
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 76
    if-eqz p3, :cond_50

    .line 77
    const-string v3, "reader:uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    .line 80
    :cond_50
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_5e

    move v4, v7

    :goto_57
    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->linkify()V

    .line 83
    return-object v2

    :cond_5e
    move v4, v6

    .line 80
    goto :goto_57
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 101
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 102
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
    .line 108
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 109
    .local v1, item:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter
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
    .line 125
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 127
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 133
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mAdapter:Lcom/google/android/apps/reader/widget/OverviewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/OverviewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 135
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/OverviewFragment;->mOverview:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 160
    return-void
.end method
