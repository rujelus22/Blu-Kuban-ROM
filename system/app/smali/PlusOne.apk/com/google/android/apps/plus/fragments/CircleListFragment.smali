.class public Lcom/google/android/apps/plus/fragments/CircleListFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "CircleListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;"
    }
.end annotation


# instance fields
.field private mActionCallback:Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

.field private mCircleIdSnapshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactPhotoCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mDataLoaded:Z

.field private mListView:Landroid/widget/ListView;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 148
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/CircleListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/CircleListFragment;)Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    return-object v0
.end method

.method private doDeleteCircles(Ljava/util/ArrayList;)V
    .registers 10
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
    .local p1, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 663
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 674
    :cond_9
    :goto_9
    return-void

    .line 667
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0017

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 671
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/plus/service/EsService;->deleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_9
.end method

.method private scrollNewCircleToVisible(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 459
    if-eqz p1, :cond_28

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 461
    :cond_8
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, circleId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 463
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_28

    .line 465
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x3

    .line 466
    .local v1, scrollToPosition:I
    if-gez v1, :cond_22

    .line 467
    const/4 v1, 0x0

    .line 469
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 475
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #scrollToPosition:I
    :cond_28
    :goto_28
    return-void

    .line 473
    .restart local v0       #circleId:Ljava/lang/String;
    :cond_29
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_28
.end method

.method private updateView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const v5, 0x7f0d0065

    const v4, 0x7f0d0063

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 491
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mDataLoaded:Z

    if-nez v1, :cond_11

    .line 492
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 510
    :goto_10
    return-void

    .line 494
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 495
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_2b

    .line 496
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->showContent(Landroid/view/View;)V

    goto :goto_10

    .line 500
    :cond_2b
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 501
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_43

    .line 503
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->showContent(Landroid/view/View;)V

    goto :goto_10

    .line 505
    :cond_43
    const v1, 0x7f070161

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_10
.end method


# virtual methods
.method public deactivate()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_9

    .line 724
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 726
    :cond_9
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 696
    :cond_c
    :goto_c
    return-void

    .line 684
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 686
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 688
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 689
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 692
    :cond_21
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 693
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070163

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 277
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    .line 278
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mContactPhotoCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 279
    return-void
.end method

.method public onCirclePropertiesChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    const/4 v6, 0x0

    .line 611
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 657
    :goto_7
    return-void

    .line 615
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 617
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    if-eqz v4, :cond_43

    .line 618
    const/4 v2, 0x0

    .line 619
    .local v2, duplicateName:Z
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 620
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2b

    .line 621
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 623
    :cond_1f
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, existing:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 625
    const/4 v2, 0x1

    .line 631
    .end local v3           #existing:Ljava/lang/String;
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_43

    .line 632
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f070254

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 628
    .restart local v3       #existing:Ljava/lang/String;
    :cond_3c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_2b

    .line 638
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #duplicateName:Z
    .end local v3           #existing:Ljava/lang/String;
    :cond_43
    const/4 v4, 0x0

    const v5, 0x7f0701d1

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    .line 641
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "req_pending"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 644
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    if-eqz v4, :cond_81

    .line 645
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 646
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_81

    .line 647
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 649
    :cond_71
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_71

    .line 655
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->createCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d0064

    if-ne v1, v2, :cond_1e

    .line 582
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->newInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    move-result-object v0

    .line 584
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "new_circle_input"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 587
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    :cond_1e
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 369
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_14

    .line 374
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_3a

    .line 389
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_13
    :goto_13
    return v5

    .line 370
    :catch_14
    move-exception v2

    .line 371
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_13

    .line 376
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 378
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 379
    .local v4, type:I
    const/16 v7, 0xa

    if-eq v4, v7, :cond_13

    .line 383
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->onDeleteCirclesAction(Ljava/util/ArrayList;)V

    move v5, v6

    .line 385
    goto :goto_13

    .line 374
    :pswitch_data_3a
    .packed-switch 0x7f0d01bd
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 289
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;

    .line 292
    :cond_10
    if-eqz p1, :cond_2e

    .line 293
    const-string v0, "existing_circle_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 294
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 295
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 299
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 300
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 346
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_4} :catch_31

    .line 351
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 352
    .local v3, inflater:Landroid/view/MenuInflater;
    const v6, 0x7f100004

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 355
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 356
    .local v5, type:I
    const/16 v6, 0xa

    if-ne v5, v6, :cond_30

    .line 357
    const v6, 0x7f0d01bd

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 359
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #inflater:Landroid/view/MenuInflater;
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v5           #type:I
    :cond_30
    :goto_30
    return-void

    .line 347
    :catch_31
    move-exception v2

    .line 348
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_30
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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
    const/4 v6, 0x1

    .line 425
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "circle_id"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "circle_name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "contact_count"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "member_ids"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 320
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3a

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 335
    :goto_39
    return-object v0

    .line 331
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CircleListFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_39
.end method

.method public onDeleteCirclesAction(Ljava/util/ArrayList;)V
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
    .local p1, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 593
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 595
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 596
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f0e0015

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e0016

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

    .line 601
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "circle_ids"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 602
    invoke-virtual {v1, p0, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 603
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "delete_circles_conf"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 720
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 713
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 703
    const-string v0, "delete_circles_conf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 704
    const-string v0, "circle_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->doDeleteCircles(Ljava/util/ArrayList;)V

    .line 706
    :cond_11
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "viewClicked"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x4

    const/4 v2, 0x1

    .line 399
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 400
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_f

    .line 418
    :goto_e
    return-void

    .line 405
    :cond_f
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 406
    .local v8, type:I
    const/16 v0, 0xa

    if-ne v8, v0, :cond_30

    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getBlockedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 417
    .local v7, intent:Landroid/content/Intent;
    :goto_2c
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 411
    .end local v7           #intent:Landroid/content/Intent;
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .restart local v7       #intent:Landroid/content/Intent;
    goto :goto_2c
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
    .line 436
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 438
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->scrollNewCircleToVisible(Landroid/database/Cursor;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 441
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mDataLoaded:Z

    .line 442
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->updateView(Landroid/view/View;)V

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_28

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_28

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 450
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->onAsyncData()V

    .line 451
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 566
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 517
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 519
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 526
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 527
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 529
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 530
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 531
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 532
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 536
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->updateView(Landroid/view/View;)V

    .line 537
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string v0, "existing_circle_ids"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 310
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    :cond_19
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 558
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 544
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mContactPhotoCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->pause()V

    .line 549
    :goto_8
    return-void

    .line 547
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment;->mContactPhotoCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->resume()V

    goto :goto_8
.end method
