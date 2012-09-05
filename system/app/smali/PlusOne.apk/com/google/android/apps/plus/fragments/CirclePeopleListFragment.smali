.class public Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;
.super Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;
.source "CirclePeopleListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/fragments/Refreshable;"
    }
.end annotation


# instance fields
.field private mActionCallback:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

.field private mCircleId:Ljava/lang/String;

.field private mCircleName:Ljava/lang/String;

.field private mDataLoaded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshing:Z

.field private mSelectionListener:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;)Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;[Lcom/google/android/apps/plus/util/ParticipantParcelable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->doAddPeopleToCircle([Lcom/google/android/apps/plus/util/ParticipantParcelable;)V

    return-void
.end method

.method private doAddPeopleToCircle([Lcom/google/android/apps/plus/util/ParticipantParcelable;)V
    .registers 9
    .parameter "people"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001b

    array-length v2, p1

    new-array v3, v6, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/service/EsService;->addPeopleToCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/util/ParticipantParcelable;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 554
    return-void
.end method

.method private doRemovePeople(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 477
    :cond_8
    :goto_8
    return-void

    .line 472
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/apps/plus/service/EsService;->removePeopleFromCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_8
.end method

.method private updateProgressBarVisibility()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_12

    .line 333
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mRefreshing:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mDataLoaded:Z

    if-nez v0, :cond_13

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    :cond_12
    return-void

    .line 333
    :cond_13
    const/16 v0, 0x8

    goto :goto_f
.end method


# virtual methods
.method public deactivate()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 591
    :cond_9
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method protected getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    return-object v0
.end method

.method protected getEmptyText()I
    .registers 2

    .prologue
    .line 398
    const v0, 0x7f070162

    return v0
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 585
    :cond_c
    :goto_c
    return-void

    .line 581
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mRefreshing:Z

    .line 584
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateProgressBarVisibility()V

    goto :goto_c
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 318
    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected isError()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isLoaded()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mDataLoaded:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 523
    const/4 v4, -0x1

    if-ne p2, v4, :cond_32

    const/4 v4, 0x1

    if-ne p1, v4, :cond_32

    .line 524
    const-string v4, "person_ids"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, personIds:[Ljava/lang/String;
    const-string v4, "person_names"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, personNames:[Ljava/lang/String;
    array-length v4, v2

    new-array v1, v4, [Lcom/google/android/apps/plus/util/ParticipantParcelable;

    .line 528
    .local v1, people:[Lcom/google/android/apps/plus/util/ParticipantParcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v4, v1

    if-ge v0, v4, :cond_27

    .line 529
    new-instance v4, Lcom/google/android/apps/plus/util/ParticipantParcelable;

    aget-object v5, v3, v0

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/plus/util/ParticipantParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v0

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 532
    :cond_27
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;[Lcom/google/android/apps/plus/util/ParticipantParcelable;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    .end local v0           #i:I
    .end local v1           #people:[Lcom/google/android/apps/plus/util/ParticipantParcelable;
    .end local v2           #personIds:[Ljava/lang/String;
    .end local v3           #personNames:[Ljava/lang/String;
    :goto_31
    return-void

    .line 542
    :cond_32
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_31
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onAttach(Landroid/app/Activity;)V

    .line 249
    new-instance v0, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;-><init>(Landroid/content/Context;IIIILcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0066

    if-ne v0, v1, :cond_1d

    .line 513
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getAddPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    :cond_1d
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 418
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_13

    .line 423
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_30

    .line 433
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_12
    return v4

    .line 419
    :catch_13
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v4, 0x0

    goto :goto_12

    .line 425
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 427
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->removePeopleFromCircle(Ljava/util/ArrayList;)V

    goto :goto_12

    .line 423
    :pswitch_data_30
    .packed-switch 0x7f0d01e0
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 259
    if-eqz p1, :cond_12

    .line 260
    const-string v0, "circle_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    .line 261
    const-string v0, "circle_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleName:Ljava/lang/String;

    .line 264
    :cond_12
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_22

    .line 267
    new-instance v0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;

    .line 270
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->setHasOptionsMenu(Z)V

    .line 271
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 407
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 408
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 9
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
    .line 342
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "person_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "gaia_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "packed_circle_ids"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, view:Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_10

    .line 291
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 297
    :goto_f
    return-object v0

    .line 293
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 294
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_f
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 491
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 484
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 459
    const-string v0, "remove_people_conf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 460
    const-string v0, "person_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->doRemovePeople(Ljava/util/ArrayList;)V

    .line 462
    :cond_11
    return-void
.end method

.method protected onInitLoaders(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 279
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
    .line 498
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 499
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_b

    .line 505
    :goto_a
    return-void

    .line 503
    :cond_b
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, personId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;->onPersonSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_a
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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
    .line 353
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mDataLoaded:Z

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PeopleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 355
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->preloadAvatars(Landroid/database/Cursor;I)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateView(Landroid/view/View;)V

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_22

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_22

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 365
    :cond_22
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateProgressBarVisibility()V

    .line 366
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 374
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 571
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onResume()V

    .line 572
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateProgressBarVisibility()V

    .line 573
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsPeopleListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    const-string v0, "circle_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "circle_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 561
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mRefreshing:Z

    .line 562
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateProgressBarVisibility()V

    .line 563
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 564
    return-void
.end method

.method public removePeopleFromCircle(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 441
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 443
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 444
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f0e0019

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e001a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 449
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "person_ids"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 450
    invoke-virtual {v1, p0, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 451
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "remove_people_conf"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setCircleId(Ljava/lang/String;)V
    .registers 2
    .parameter "circleId"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleId:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setCircleName(Ljava/lang/String;)V
    .registers 2
    .parameter "circleName"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mCircleName:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setOnPersonSelectedListener(Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mSelectionListener:Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment$OnPersonSelectedListener;

    .line 225
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressBar"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 327
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclePeopleListFragment;->updateProgressBarVisibility()V

    .line 329
    :cond_9
    return-void
.end method
