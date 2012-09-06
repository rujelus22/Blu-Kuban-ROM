.class public Lcom/google/android/apps/reader/app/BundleListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BundleListActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/BundleListActivity$1;,
        Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

.field private mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/android/apps/reader/app/BundleListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 136
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v3, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-direct {v3, p0}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    .line 73
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/BundleListActivity;->setContentView(I)V

    .line 74
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/BundleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 75
    .local v1, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 80
    move-object v0, p0

    .line 81
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    .line 82
    .local v2, loaderManager:Landroid/support/v4/app/LoaderManager;
    new-instance v3, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-direct {v3, v0, v2, v4, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 84
    new-instance v3, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-direct {v3, v0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    .line 85
    iget-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;

    iget-object v4, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/app/BundleListActivity$BundlesAdapter;->changeSubscriptions(Lcom/google/android/apps/reader/widget/SubscriptionsQuery;)V

    .line 86
    iget-object v3, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 87
    return-void
.end method

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
    .line 93
    sget-boolean v2, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    if-eq v2, p1, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 95
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, uri:Landroid/net/Uri;
    sget-boolean v2, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_2b

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 98
    :cond_2b
    sget-boolean v2, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_41

    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 100
    :cond_41
    iget-object v2, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v2

    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_3a

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/app/BundleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v2, "authAccount"

    iget-object v3, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "accountType"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/BundleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    :cond_3a
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
    .line 107
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 109
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/app/BundleListActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 115
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleListActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleListActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 117
    return-void
.end method
