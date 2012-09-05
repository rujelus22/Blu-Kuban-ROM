.class public Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;
.super Landroid/support/v4/app/Fragment;
.source "CirclesMultipleSelectFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
.implements Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

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

.field private mCircleUsageType:I

.field private mContactLoaded:Z

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

.field private mNewCircleEnabled:Z

.field private mNewCircleIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldCircleIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mPersonId:Ljava/lang/String;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mThemeContext:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private autoselectNewCircle(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 331
    :cond_6
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, circleId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 333
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2b

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x3

    .line 337
    .local v1, scrollToPosition:I
    if-gez v1, :cond_25

    .line 338
    const/4 v1, 0x0

    .line 340
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 346
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #scrollToPosition:I
    :cond_2b
    :goto_2b
    return-void

    .line 344
    .restart local v0       #circleId:Ljava/lang/String;
    :cond_2c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2b
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method private parsePackedCircleIds(Ljava/lang/String;)V
    .registers 6
    .parameter "packedCircleIds"

    .prologue
    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, offset:I
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 364
    const/16 v2, 0x7c

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 365
    .local v1, separatorIndex:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    .line 370
    goto :goto_e

    .line 375
    .end local v0           #offset:I
    .end local v1           #separatorIndex:I
    :cond_2d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    if-nez v2, :cond_3a

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    .line 379
    :cond_3a
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

    if-eqz v2, :cond_43

    .line 380
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

    invoke-interface {v2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;->onCircleSelectionChange()V

    .line 382
    :cond_43
    return-void
.end method

.method private updateUiState()V
    .registers 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, listShown:Z
    const/4 v0, 0x0

    .line 391
    .local v0, emptyShown:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPersonId:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mContactLoaded:Z

    if-eqz v3, :cond_2a

    :cond_11
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 393
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 394
    :cond_29
    const/4 v0, 0x1

    .line 405
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, view:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_45

    move v3, v4

    :goto_33
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 407
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_47

    :goto_3f
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    return-void

    .line 396
    .end local v2           #view:Landroid/view/View;
    :cond_43
    const/4 v1, 0x1

    goto :goto_2a

    .restart local v2       #view:Landroid/view/View;
    :cond_45
    move v3, v5

    .line 406
    goto :goto_33

    :cond_47
    move v4, v5

    .line 407
    goto :goto_3f
.end method


# virtual methods
.method public getOriginalCircleIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedCircleIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 431
    :cond_c
    :goto_c
    return-void

    .line 419
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 423
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 424
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 427
    :cond_21
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 428
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070163

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 158
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0f0032

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mThemeContext:Landroid/view/ContextThemeWrapper;

    .line 159
    new-instance v0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mThemeContext:Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;-><init>(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    .line 160
    return-void
.end method

.method public onCirclePropertiesChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    const/4 v6, 0x0

    .line 485
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 530
    :goto_7
    return-void

    .line 489
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 491
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    if-eqz v4, :cond_43

    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, duplicateName:Z
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 494
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2b

    .line 495
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 497
    :cond_1f
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, existing:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 499
    const/4 v2, 0x1

    .line 505
    .end local v3           #existing:Ljava/lang/String;
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_43

    .line 506
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f070254

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 502
    .restart local v3       #existing:Ljava/lang/String;
    :cond_3c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_2b

    .line 512
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #duplicateName:Z
    .end local v3           #existing:Ljava/lang/String;
    :cond_43
    const/4 v4, 0x0

    const v5, 0x7f0701d1

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    .line 515
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "req_pending"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 517
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 518
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    if-eqz v4, :cond_81

    .line 519
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 520
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_81

    .line 521
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 523
    :cond_71
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_71

    .line 528
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->createCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto/16 :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    if-eqz p1, :cond_2a

    .line 169
    const-string v0, "new_circles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    .line 170
    const-string v0, "existing_circle_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 171
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 172
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 176
    :cond_2a
    iget v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleUsageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPersonId:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 179
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 181
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
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
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 248
    packed-switch p1, :pswitch_data_5e

    move-object v0, v6

    .line 265
    :goto_8
    return-object v0

    .line 250
    :pswitch_9
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v3, v8

    const-string v4, "packed_circle_ids"

    aput-object v4, v3, v7

    const-string v4, "person_id=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPersonId:Ljava/lang/String;

    aput-object v7, v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 257
    :pswitch_2f
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleUsageType:I

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v8

    const-string v5, "circle_id"

    aput-object v5, v4, v7

    const-string v5, "circle_name"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    const-string v6, "contact_count"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "show"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "type"

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_8

    .line 248
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2f
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mThemeContext:Landroid/view/ContextThemeWrapper;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 229
    .local v1, shimInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, view:Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    .line 232
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleEnabled:Z

    if-eqz v3, :cond_34

    .line 233
    const v3, 0x7f030019

    invoke-virtual {v1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, addCircleItem:Landroid/view/View;
    const v3, 0x7f070238

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 238
    .end local v0           #addCircleItem:Landroid/view/View;
    :cond_34
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    return-object v2
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 551
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 544
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 537
    return-void
.end method

.method public onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V
    .registers 5
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 442
    check-cast p1, Lcom/google/android/apps/plus/views/CircleListItemView;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleId()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, circleId:Ljava/lang/String;
    if-eqz p2, :cond_1f

    .line 444
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 445
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

    if-eqz v1, :cond_1e

    .line 452
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

    invoke-interface {v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;->onCircleSelectionChange()V

    .line 454
    :cond_1e
    return-void

    .line 448
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 470
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleEnabled:Z

    if-eqz v1, :cond_1c

    if-nez p3, :cond_1c

    .line 471
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->newInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    move-result-object v0

    .line 473
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "new_circle_input"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 478
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    .end local p2
    :goto_1b
    return-void

    .line 476
    .restart local p2
    :cond_1c
    check-cast p2, Lcom/google/android/apps/plus/views/CircleListItemView;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/CircleListItemView;->toggle()V

    goto :goto_1b
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 274
    if-nez p2, :cond_14

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070163

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 321
    :goto_13
    return-void

    .line 280
    :cond_14
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    .line 320
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->updateUiState()V

    goto :goto_13

    .line 282
    :pswitch_1f
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mContactLoaded:Z

    .line 283
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 284
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->parsePackedCircleIds(Ljava/lang/String;)V

    .line 288
    :goto_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->notifyDataSetChanged()V

    goto :goto_1b

    .line 286
    :cond_34
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->parsePackedCircleIds(Ljava/lang/String;)V

    goto :goto_2e

    .line 291
    :pswitch_38
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 292
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    if-eqz v1, :cond_46

    .line 293
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->autoselectNewCircle(Landroid/database/Cursor;)V

    .line 294
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    .line 296
    :cond_46
    iget v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleUsageType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_82

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    .line 298
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 301
    :cond_5e
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_6e

    .line 302
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_6e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 309
    :cond_74
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1b

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    goto :goto_1b

    .line 312
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_82
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPersonId:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mOldCircleIds:Ljava/util/ArrayList;

    .line 314
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1b

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    goto :goto_1b

    .line 280
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_38
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 354
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 203
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 214
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 215
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 216
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 220
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "new_circles"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    const-string v0, "existing_circle_ids"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleIdSnapshot:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 192
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_20
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 141
    iput p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mCircleUsageType:I

    .line 142
    return-void
.end method

.method public setNewCircleEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleEnabled:Z

    .line 146
    return-void
.end method

.method public setOnCircleSelectionListener(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mListener:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;

    .line 150
    return-void
.end method

.method public setPersonId(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mPersonId:Ljava/lang/String;

    .line 138
    return-void
.end method
