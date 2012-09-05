.class public Lcom/google/android/apps/plus/fragments/ParticipantListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "ParticipantListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ParticipantListFragment$1;,
        Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static sDefaultUserImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mConversationRowId:J

.field private mParticipantArray:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

.field private mParticipantsUri:Landroid/net/Uri;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mSelectedCircleIdsResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ParticipantListFragment;Lcom/google/android/apps/plus/fragments/ParticipantListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 216
    return-void
.end method

.method private addParticipantsToCircle()V
    .registers 6

    .prologue
    .line 162
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_MAKE_CIRCLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 163
    const v0, 0x7f07021f

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->showProgressDialog(I)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantArray:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mSelectedCircleIdsResult:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/service/EsService;->addPeopleToCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/util/ParticipantParcelable;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mSelectedCircleIdsResult:Ljava/util/ArrayList;

    .line 169
    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 419
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 421
    :cond_d
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "labelResId"

    .prologue
    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 178
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 159
    :cond_c
    :goto_c
    return-void

    .line 152
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 154
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 155
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 158
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 409
    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 415
    :goto_3
    return-void

    .line 413
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_circle_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mSelectedCircleIdsResult:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0105

    if-ne v0, v1, :cond_19

    .line 399
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 402
    :cond_19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    if-eqz p1, :cond_1c

    .line 194
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 195
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 198
    :cond_1c
    sget-object v0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->sDefaultUserImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_35

    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->sDefaultUserImage:Landroid/graphics/Bitmap;

    .line 203
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mConversationRowId:J

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mConversationRowId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantsUri:Landroid/net/Uri;

    .line 209
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mConversationRowId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_70

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 214
    :goto_6f
    return-void

    .line 212
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_6f
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
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
    const/4 v5, 0x1

    .line 325
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 327
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hangout_participants"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 330
    .local v8, participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;-><init>(Landroid/content/Context;Ljava/util/Collection;[Ljava/lang/String;)V

    .line 341
    .end local v8           #participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    :goto_1f
    return-object v0

    .line 332
    :cond_20
    if-ne p1, v5, :cond_41

    .line 333
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=? AND active=1"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "first_name ASC"

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantsUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1f

    .line 341
    :cond_41
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 310
    const v2, 0x7f030056

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mListView:Landroid/widget/AbsListView;

    .line 312
    new-instance v2, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 313
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 315
    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, addToCircleButton:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .line 387
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/google/android/apps/plus/views/ParticipantListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/ParticipantListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, userId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 390
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 350
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    if-eq v2, v4, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    if-ne v2, v5, :cond_22

    .line 352
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 353
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_45

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->showContent(Landroid/view/View;)V

    .line 360
    :cond_22
    :goto_22
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/apps/plus/util/ParticipantParcelable;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantArray:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, i:I
    :goto_2b
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 363
    new-instance v1, Lcom/google/android/apps/plus/util/ParticipantParcelable;

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/util/ParticipantParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v1, participant:Lcom/google/android/apps/plus/util/ParticipantParcelable;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantArray:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    aput-object v1, v2, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 368
    goto :goto_2b

    .line 356
    .end local v0           #i:I
    .end local v1           #participant:Lcom/google/android/apps/plus/util/ParticipantParcelable;
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_22

    .line 369
    .restart local v0       #i:I
    :cond_4d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mSelectedCircleIdsResult:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    .line 370
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->addParticipantsToCircle()V

    .line 372
    :cond_54
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 380
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 188
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 116
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 120
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 124
    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mSelectedCircleIdsResult:Ljava/util/ArrayList;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mParticipantArray:[Lcom/google/android/apps/plus/util/ParticipantParcelable;

    if-eqz v1, :cond_4a

    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->addParticipantsToCircle()V

    .line 128
    :cond_4a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ParticipantListFragment$ParticipantCursorAdapter;->onResume()V

    .line 129
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 138
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ParticipantListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_12
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
