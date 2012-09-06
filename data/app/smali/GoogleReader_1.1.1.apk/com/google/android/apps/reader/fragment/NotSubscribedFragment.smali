.class public final Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;
.super Landroid/support/v4/app/Fragment;
.source "NotSubscribedFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$1;,
        Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$AccountDataSetObserver;,
        Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
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

.field public static final EXTRA_DECLINED:Ljava/lang/String; = "com.google.reader.intent.extra.SUBSCRIBE_DECLINED"

.field private static final QUERY_SUBSCRIBED:I = 0x1

.field private static final REQUEST_PICK_ACCOUNT:I = 0x1

.field private static final STATE_DECLINED:Ljava/lang/String; = "reader:declined"

.field private static final STATE_URI:Ljava/lang/String; = "reader:uri"

.field private static final TAG:Ljava/lang/String; = "NotSubscribedFragment"


# instance fields
.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

.field private mAccountSpinner:Lcom/google/android/apps/reader/widget/IntentSpinner;

.field private mDeclined:Z

.field private mSubscribeButton:Landroid/view/View;

.field private mSubscribePanel:Landroid/view/View;

.field private mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 326
    return-void
.end method

.method private decline()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->updateVisibility()V

    .line 186
    return-void
.end method

.method private pickAccount()V
    .registers 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method

.method private wasPreviouslyDeclined()Z
    .registers 5

    .prologue
    .line 303
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, streamId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.reader.intent.extra.SUBSCRIBE_DECLINED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, declined:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public changeStreamId(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "streamId"
    .parameter "title"

    .prologue
    .line 193
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 194
    :cond_c
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    .line 195
    iput-object p3, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mTitle:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 201
    :goto_1e
    return-void

    .line 199
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->clear()V

    goto :goto_1e
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 206
    return-void
.end method

.method public getDeclined()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getStreamId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPanelVisible()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribePanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_28

    .line 254
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    :cond_6
    :goto_6
    return-void

    .line 243
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 244
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-nez v0, :cond_1a

    .line 246
    const-string v0, "NotSubscribedFragment"

    const-string v1, "Account name is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 249
    :cond_1a
    new-instance v1, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    invoke-interface {v0, v1}, Lcom/google/android/apps/reader/fragment/AccountSelection;->setAccount(Lcom/google/android/accounts/Account;)V

    goto :goto_6

    .line 241
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    instance-of v0, p1, Lcom/google/android/apps/reader/fragment/AccountSelection;

    .line 101
    .local v0, hasAccountSelection:Z
    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/apps/reader/fragment/AccountSelection;

    .end local p1
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    .line 102
    return-void

    .line 101
    .restart local p1
    :cond_d
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 172
    :goto_7
    return-void

    .line 163
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->subscribe()V

    goto :goto_7

    .line 166
    :sswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->decline()V

    goto :goto_7

    .line 169
    :sswitch_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->pickAccount()V

    goto :goto_7

    .line 161
    :sswitch_data_14
    .sparse-switch
        0x7f0b003d -> :sswitch_8
        0x7f0b0045 -> :sswitch_10
        0x7f0b0046 -> :sswitch_c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4, p0}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshBeforeLoading()V

    .line 110
    new-instance v1, Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-direct {v1, v0}, Lcom/google/android/apps/reader/widget/SubscribedQuery;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    new-instance v2, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$SubscribedDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    if-eqz p1, :cond_48

    .line 113
    const-string v1, "reader:uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    .line 114
    const-string v1, "reader:declined"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribed:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_49

    move v2, v4

    :goto_45
    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 117
    :cond_48
    return-void

    .line 115
    :cond_49
    const/4 v2, 0x0

    goto :goto_45
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
    .line 212
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    if-eq v0, p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :cond_d
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b003d

    const/4 v3, 0x0

    .line 121
    const v0, 0x7f030024

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f0b0043

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribePanel:Landroid/view/View;

    .line 123
    const v0, 0x7f0b0045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/widget/IntentSpinner;

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSpinner:Lcom/google/android/apps/reader/widget/IntentSpinner;

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribeButton:Landroid/view/View;

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0b0046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0b0044

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSelection:Lcom/google/android/apps/reader/fragment/AccountSelection;

    if-eqz v2, :cond_73

    move v2, v3

    :goto_42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 135
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 137
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$AccountDataSetObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$AccountDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;Lcom/google/android/apps/reader/fragment/NotSubscribedFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 138
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSpinner:Lcom/google/android/apps/reader/widget/IntentSpinner;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/widget/IntentSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountSpinner:Lcom/google/android/apps/reader/widget/IntentSpinner;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/apps/reader/widget/IntentSpinner;->setIntent(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 142
    return-object v1

    .line 131
    :cond_73
    const/16 v2, 0x8

    goto :goto_42
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
    .line 221
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 223
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 229
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 231
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->updateVisibility()V

    .line 262
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string v0, "reader:declined"

    iget-boolean v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 287
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->clear()V

    .line 155
    return-void
.end method

.method protected subscribe()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->subscribe(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    return-void
.end method

.method updateAccounts()V
    .registers 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 280
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_14

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 283
    :cond_14
    return-void
.end method

.method updateSubscribeButton()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 266
    return-void

    .line 265
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method updateVisibility()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 269
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_35

    move v3, v7

    .line 270
    .local v3, noCursor:Z
    :goto_b
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->hasError()Z

    move-result v1

    .line 271
    .local v1, hasError:Z
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscriptionData:Lcom/google/android/apps/reader/widget/SubscribedQuery;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/widget/SubscribedQuery;->isSubscribed()Z

    move-result v4

    .line 272
    .local v4, subscribed:Z
    iget-boolean v5, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mDeclined:Z

    if-nez v5, :cond_21

    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->wasPreviouslyDeclined()Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_21
    move v0, v7

    .line 273
    .local v0, declined:Z
    :goto_22
    if-nez v3, :cond_2a

    if-nez v1, :cond_2a

    if-nez v4, :cond_2a

    if-eqz v0, :cond_39

    :cond_2a
    move v2, v7

    .line 274
    .local v2, hideSubscribePanel:Z
    :goto_2b
    iget-object v5, p0, Lcom/google/android/apps/reader/fragment/NotSubscribedFragment;->mSubscribePanel:Landroid/view/View;

    if-eqz v2, :cond_31

    const/16 v6, 0x8

    :cond_31
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void

    .end local v0           #declined:Z
    .end local v1           #hasError:Z
    .end local v2           #hideSubscribePanel:Z
    .end local v3           #noCursor:Z
    .end local v4           #subscribed:Z
    :cond_35
    move v3, v6

    .line 269
    goto :goto_b

    .restart local v1       #hasError:Z
    .restart local v3       #noCursor:Z
    .restart local v4       #subscribed:Z
    :cond_37
    move v0, v6

    .line 272
    goto :goto_22

    .restart local v0       #declined:Z
    :cond_39
    move v2, v6

    .line 273
    goto :goto_2b
.end method
