.class public Lcom/google/android/apps/reader/fragment/RecommendationListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "RecommendationListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_RECOMMENDATIONS:I = 0x1

.field private static final STATE_RECOMMENDATIONS:Ljava/lang/String; = "reader:recommendations"

.field private static final STATE_STREAM:Ljava/lang/String; = "reader:stream"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mRecommendationsUri:Landroid/net/Uri;

.field private mRecommendationsView:Landroid/view/View;

.field private mStreamUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public changeUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5
    .parameter "recommendationsUri"
    .parameter "streamUri"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoaderIf(Z)V

    .line 71
    return-void

    .line 70
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getStreamUri()Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getStreamUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    return-object v0
.end method

.method public highlight(Ljava/lang/String;)V
    .registers 8
    .parameter "streamId"

    .prologue
    const/4 v5, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 184
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 185
    .local v0, choiceMode:I
    if-eq v0, v5, :cond_e

    .line 186
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 188
    :cond_e
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->findStream(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 189
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1e

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 191
    .local v3, position:I
    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 195
    .end local v3           #position:I
    :goto_1d
    return-void

    .line 193
    :cond_1e
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_1d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 163
    :cond_7
    :goto_7
    return-void

    .line 152
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 153
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 160
    :sswitch_25
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 150
    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f0b002f -> :sswitch_25
        0x7f0b0061 -> :sswitch_8
    .end sparse-switch
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
    .line 126
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

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

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f030039

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsView:Landroid/view/View;

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mListView:Landroid/widget/ListView;

    .line 86
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x7f0d001f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 89
    new-instance v3, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-direct {v3, v0}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    .line 90
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/google/android/apps/reader/fragment/ListDecorator;

    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-direct {v4, v5, p0}, Lcom/google/android/apps/reader/fragment/ListDecorator;-><init>(Landroid/widget/ListAdapter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    if-eqz p3, :cond_60

    .line 93
    const-string v3, "reader:recommendations"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    .line 94
    const-string v3, "reader:stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    .line 97
    :cond_60
    new-instance v3, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-static {p0, v2, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-direct {v3, v0, v4, v7, v5}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 99
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 100
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    if-eqz v4, :cond_7f

    move v4, v7

    :goto_7b
    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 102
    return-object v2

    :cond_7f
    move v4, v6

    .line 100
    goto :goto_7b
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, item:Ljava/lang/Object;
    if-eqz v0, :cond_19

    if-ne v2, v0, :cond_19

    .line 117
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->newItemsIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v1           #intent:Landroid/content/Intent;
    :cond_19
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
    .line 134
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 136
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 142
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "reader:recommendations"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendationsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    const-string v0, "reader:stream"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mStreamUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mRecommendations:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 167
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->mAdapter:Lcom/google/android/apps/reader/widget/RecommendationListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/RecommendationListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    return-void
.end method

.method public showMainScreen()V
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 171
    return-void
.end method
