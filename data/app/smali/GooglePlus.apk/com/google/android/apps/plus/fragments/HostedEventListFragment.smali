.class public Lcom/google/android/apps/plus/fragments/HostedEventListFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedEventListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;,
        Lcom/google/android/apps/plus/fragments/HostedEventListFragment$PastEventsLoader;,
        Lcom/google/android/apps/plus/fragments/HostedEventListFragment$Query;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedEsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/views/ItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

.field private mCurrentSpinnerPosition:I

.field private mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field private final mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mRefreshNeeded:Z

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 114
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/HostedEventListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    return p1
.end method

.method private fetchData()V
    .registers 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 273
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v1, :cond_27

    if-eqz v0, :cond_27

    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800c4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 276
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getEventHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 278
    :cond_27
    return-void
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EventCardAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onActionButtonClicked(I)V
    .registers 5
    .parameter "actionId"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_16

    .line 337
    :goto_3
    return-void

    .line 332
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCreateEventActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 334
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 330
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 286
    instance-of v4, p1, Lcom/google/android/apps/plus/views/EventDestinationCardView;

    if-eqz v4, :cond_1f

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/google/android/apps/plus/views/EventDestinationCardView;

    .line 288
    .local v0, eventCardView:Lcom/google/android/apps/plus/views/EventDestinationCardView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDestinationCardView;->getEvent()Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v1

    .line 290
    .local v1, eventData:Lcom/google/api/services/plusi/model/PlusEvent;
    if-eqz v1, :cond_1f

    .line 291
    iget-object v2, v1, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    .line 292
    .local v2, eventId:Ljava/lang/String;
    iget-object v3, v1, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    .line 293
    .local v3, ownerId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v3, v6}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->startActivity(Landroid/content/Intent;)V

    .line 297
    .end local v0           #eventCardView:Lcom/google/android/apps/plus/views/EventDestinationCardView;
    .end local v1           #eventData:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v2           #eventId:Ljava/lang/String;
    .end local v3           #ownerId:Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    if-eqz p1, :cond_e

    .line 147
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    .line 149
    :cond_e
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
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
    .line 218
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mCurrentSpinnerPosition:I

    packed-switch v0, :pswitch_data_20

    .line 228
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 220
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_6

    .line 224
    :pswitch_13
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$PastEventsLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$PastEventsLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_6

    .line 218
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 184
    const v0, 0x7f03005c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v7

    .line 186
    .local v7, view:Landroid/view/View;
    const v0, 0x7f09013f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 187
    new-instance v0, Lcom/google/android/apps/plus/phone/EventCardAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EventCardAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/ColumnGridView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    const v0, 0x7f08011d

    invoke-virtual {p0, v7, v0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 191
    return-object v7
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "eventCursor"
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
    .line 239
    .local p1, eventLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventCardAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/EventCardAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 240
    if-eqz p2, :cond_28

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v0, 0x1

    .line 242
    .local v0, dataPresent:Z
    :goto_e
    if-eqz v0, :cond_2a

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->showContent(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionToTop()V

    .line 253
    :goto_1c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    if-nez v1, :cond_27

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostActionBar;->hideProgressIndicator()V

    .line 256
    :cond_27
    return-void

    .line 240
    .end local v0           #dataPresent:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_e

    .line 246
    .restart local v0       #dataPresent:Z
    :cond_2a
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    if-eqz v1, :cond_3d

    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800c4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1c

    .line 249
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_1c
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 282
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    .line 355
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_b
    return v2

    .line 347
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080472

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, helpUrlParam:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 350
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 351
    const/4 v2, 0x1

    goto :goto_b

    .line 344
    nop

    :pswitch_data_2c
    .packed-switch 0x7f0902ad
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 197
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 198
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 9
    .parameter "actionBar"

    .prologue
    const/4 v6, 0x0

    .line 153
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0300d6

    invoke-direct {v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 155
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    .local v1, items:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v1

    .local v2, size:I
    :goto_24
    if-ge v0, v2, :cond_34

    .line 160
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 163
    :cond_34
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mCurrentSpinnerPosition:I

    .line 164
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v3, v6}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 165
    const v3, 0x7f02019b

    const v4, 0x7f08014f

    invoke-virtual {p1, v6, v3, v4}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 168
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 169
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 173
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mCurrentSpinnerPosition:I

    if-eq v0, p1, :cond_16

    .line 174
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mCurrentSpinnerPosition:I

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 179
    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 203
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 205
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    if-eqz v0, :cond_f

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->fetchData()V

    .line 208
    :cond_f
    return-void
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResumeContentFetched(Landroid/view/View;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    .line 214
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 132
    const-string v0, "refresh"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z

    .line 140
    return-void
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 2
    .parameter "span"

    .prologue
    .line 312
    return-void
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 325
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->MY_EVENTS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 326
    return-void
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->refresh()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->fetchData()V

    .line 235
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showContent(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibility(I)V

    .line 262
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyView(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibility(I)V

    .line 268
    return-void
.end method
