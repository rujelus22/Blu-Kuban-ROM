.class public Lcom/google/android/apps/reader/app/FeedSearchActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FeedSearchActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/FeedSearchActivity$1;,
        Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final LOADER_SEARCH_RESULTS:I = 0x1

.field private static final LOADER_SUBSCRIPTIONS:I = 0x2

.field private static final STATE_ACCOUNT:Ljava/lang/String; = "reader:account"

.field private static final STATE_QUERY:Ljava/lang/String; = "reader:query"

.field private static final TAG:Ljava/lang/String; = "FeedSearchActivity"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

.field private mQuery:Ljava/lang/String;

.field private mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/FeedSearchActivity;)Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    return-object v0
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 111
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    .line 112
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    if-nez v4, :cond_14

    .line 113
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Query is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_14
    const-string v4, "app_data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 116
    .local v2, appSearchData:Landroid/os/Bundle;
    if-nez v2, :cond_24

    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "App data is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_24
    const-string v4, "authAccount"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, accountName:Ljava/lang/String;
    if-nez v1, :cond_34

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Account is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_34
    new-instance v0, Lcom/google/android/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v0, v1, v4}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v0, v4}, Lcom/google/android/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 126
    .local v3, sameAccount:Z
    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 128
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 129
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    if-nez v3, :cond_5e

    const/4 v5, 0x1

    :goto_4d
    invoke-virtual {v4, v5}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoaderIf(Z)V

    .line 131
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 132
    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->updateTitle()V

    .line 134
    return-void

    .line 129
    :cond_5e
    const/4 v5, 0x0

    goto :goto_4d
.end method

.method private updateTitle()V
    .registers 6

    .prologue
    .line 144
    const v2, 0x7f0d008c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, template:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    .local v1, title:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 205
    :goto_7
    return-void

    .line 201
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 199
    nop

    :pswitch_data_14
    .packed-switch 0x7f0b002f
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->requestWindowFeature(I)Z

    .line 77
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->setContentView(I)V

    .line 79
    new-instance v0, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forActivity(Landroid/app/Activity;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 81
    new-instance v0, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 84
    new-instance v0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    new-instance v1, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/reader/app/FeedSearchActivity$AccountSubscriptionsObserver;-><init>(Lcom/google/android/apps/reader/app/FeedSearchActivity;Lcom/google/android/apps/reader/app/FeedSearchActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    new-instance v0, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/reader/widget/SubscriptionsQuery;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    .line 89
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    if-eqz p1, :cond_7c

    .line 94
    const-string v0, "reader:account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 95
    const-string v0, "reader:query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSearchResults:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->updateTitle()V

    .line 102
    :goto_7b
    return-void

    .line 100
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->changeIntent(Landroid/content/Intent;)V

    goto :goto_7b
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
    .line 153
    packed-switch p1, :pswitch_data_26

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 155
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->searchUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 159
    .end local v0           #uri:Landroid/net/Uri;
    :goto_17
    return-object v1

    :pswitch_18
    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_17

    .line 153
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 212
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 213
    if-eqz v0, :cond_e

    if-eq v1, v0, :cond_f

    .line 229
    :cond_e
    :goto_e
    return-void

    .line 217
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->getStreamId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const/4 v3, 0x0

    .line 222
    const-string v4, "newest"

    .line 223
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
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
    .line 171
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 179
    :goto_7
    return-void

    .line 173
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 176
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 171
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 193
    :goto_8
    return-void

    .line 187
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAdapter:Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/FeedSearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 190
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 185
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->changeIntent(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "reader:account"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    const-string v0, "reader:query"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-nez v0, :cond_f

    .line 234
    const-string v0, "FeedSearchActivity"

    const-string v1, "Cannot search without an account"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 244
    :goto_e
    return v0

    .line 237
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mQuery:Ljava/lang/String;

    .line 239
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "accountType"

    iget-object v3, p0, Lcom/google/android/apps/reader/app/FeedSearchActivity;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v0, v5, v1, v4}, Lcom/google/android/apps/reader/app/FeedSearchActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v5

    .line 244
    goto :goto_e
.end method
