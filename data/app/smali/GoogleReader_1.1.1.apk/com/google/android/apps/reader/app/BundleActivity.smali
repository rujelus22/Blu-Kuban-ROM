.class public Lcom/google/android/apps/reader/app/BundleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BundleActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/BundleActivity$1;,
        Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;,
        Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;,
        Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
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

.field private static final LOADER_SUBSCRIPTIONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BundleActivity"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

.field private mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/google/android/apps/reader/app/BundleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/app/BundleActivity;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 294
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/reader/app/BundleActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->updateViews()V

    return-void
.end method

.method private getFeedQuantityString(I)Ljava/lang/String;
    .registers 7
    .parameter "count"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0e0002

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private subscribe()V
    .registers 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getBundle()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v2, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->taggedUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    .line 183
    const/4 v3, 0x0

    :goto_21
    array-length v4, v2

    if-ge v3, v4, :cond_46

    .line 184
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 185
    iget-object v5, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getItem(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;

    move-result-object v5

    .line 186
    const-string v6, "id"

    invoke-virtual {v5}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v6, "title"

    invoke-virtual {v5}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    aput-object v4, v2, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 190
    :cond_46
    new-instance v3, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;

    invoke-direct {v3, v1, v0}, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    .line 191
    return-void
.end method

.method private updateViews()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 140
    const v4, 0x1020014

    invoke-virtual {p0, v4}, Lcom/google/android/apps/reader/app/BundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 141
    .local v3, text1:Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {p0, v4}, Lcom/google/android/apps/reader/app/BundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    .local v1, button1:Landroid/widget/Button;
    iget-object v4, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getBundle()Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    .line 144
    .local v0, bundle:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    if-eqz v0, :cond_59

    .line 145
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/reader/app/BundleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getCount()I

    move-result v2

    .line 147
    .local v2, count:I
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/app/BundleActivity;->getFeedQuantityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    iget-object v5, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->getSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->containsAll(Ljava/lang/Iterable;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 149
    const v4, 0x7f0d0078

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 150
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .end local v2           #count:I
    :goto_4a
    return-void

    .line 153
    .restart local v2       #count:I
    :cond_4b
    const v4, 0x7f0d0077

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 154
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4a

    .line 158
    .end local v2           #count:I
    :cond_59
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/google/android/apps/reader/app/BundleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 174
    :goto_7
    return-void

    .line 171
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->subscribe()V

    goto :goto_7

    .line 169
    :pswitch_data_c
    .packed-switch 0x1020019
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x3

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/BundleActivity;->requestWindowFeature(I)Z

    .line 78
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/BundleActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f020027

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/app/BundleActivity;->setFeatureDrawableResource(II)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    const-string v0, "authAccount"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v2, "accountType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/google/android/accounts/Account;

    invoke-direct {v3, v0, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 89
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 91
    new-instance v0, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    new-instance v2, Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;

    invoke-direct {v2, p0, v4}, Lcom/google/android/apps/reader/app/BundleActivity$SubscriptionsDataSetObserver;-><init>(Lcom/google/android/apps/reader/app/BundleActivity;Lcom/google/android/apps/reader/app/BundleActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptions:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoader()V

    .line 94
    new-instance v0, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-direct {v0, v4}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;-><init>(Lcom/google/android/apps/reader/app/BundleActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    .line 96
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/BundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 97
    iget-object v2, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    :try_start_77
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getBundle(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAdapter:Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/reader/app/BundleActivity$BundleSubscriptionsAdapter;->changeBundle(Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;)V
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_77 .. :try_end_80} :catch_84

    .line 111
    :goto_80
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->updateViews()V

    .line 112
    return-void

    .line 108
    :catch_84
    move-exception v0

    const-string v0, "BundleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/BundleActivity;->finish()V

    goto :goto_80
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
    .line 118
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_d
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
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
    .line 127
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 129
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/app/BundleActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 135
    sget-boolean v0, Lcom/google/android/apps/reader/app/BundleActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity;->mSubscriptionsData:Lcom/google/android/apps/reader/widget/SubscriptionsQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscriptionsQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 137
    return-void
.end method
