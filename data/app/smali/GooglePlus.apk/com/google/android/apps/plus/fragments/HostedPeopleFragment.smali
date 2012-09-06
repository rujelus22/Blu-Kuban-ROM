.class public Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedPeopleFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;
.implements Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;,
        Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedEsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$CirclePropertiesListener;",
        "Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;",
        "Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;",
        "Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;"
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field protected static sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

.field private mCircleMembers:Landroid/database/Cursor;

.field protected mCircleName:Ljava/lang/String;

.field private mCirclesCursor:Landroid/database/Cursor;

.field private mCurrentSpinnerPosition:I

.field private mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field private final mHandler:Landroid/os/Handler;

.field protected mNewCircleRequestId:Ljava/lang/Integer;

.field protected mPendingRequestId:Ljava/lang/Integer;

.field private mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQuery:Ljava/lang/String;

.field private mScrollPosition:I

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

.field private mSelectedCircleId:Ljava/lang/String;

.field private mSelectedViewType:I

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mShownPersonIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "circle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "circle_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "semantic_hints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->CIRCLES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    .line 142
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mHandler:Landroid/os/Handler;

    .line 149
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1067
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleNewCircleCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private changeCircleMembers(Landroid/database/Cursor;)V
    .registers 8
    .parameter "data"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 342
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-eq v0, v2, :cond_d

    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-ne v0, v5, :cond_16

    :cond_d
    move v0, v2

    :goto_e
    iget v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-ne v4, v5, :cond_18

    :goto_12
    invoke-virtual {v3, p1, v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->changeCircleMembers(Landroid/database/Cursor;ZZ)V

    .line 346
    return-void

    :cond_16
    move v0, v1

    .line 342
    goto :goto_e

    :cond_18
    move v2, v1

    goto :goto_12
.end method

.method private deleteCircle()V
    .registers 4

    .prologue
    .line 869
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 876
    :goto_4
    return-void

    .line 873
    :cond_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;-><init>()V

    .line 874
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 875
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_circle_conf"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private editCircleProperties()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 894
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    if-nez v5, :cond_13

    .line 919
    :cond_12
    :goto_12
    return-void

    .line 898
    :cond_13
    const/4 v2, -0x1

    .line 899
    .local v2, semanticHints:I
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 901
    :cond_1c
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, circleId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 903
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    .line 904
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 910
    .end local v0           #circleId:Ljava/lang/String;
    :cond_39
    :goto_39
    const/4 v5, -0x1

    if-eq v2, v5, :cond_12

    .line 914
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    and-int/lit8 v8, v2, 0x40

    if-nez v8, :cond_62

    :goto_48
    invoke-static {v5, v6, v7, v3}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    move-result-object v1

    .line 917
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    invoke-virtual {v1, p0, v4}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 918
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "circle_settings"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_12

    .line 907
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    .restart local v0       #circleId:Ljava/lang/String;
    :cond_59
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_39

    .end local v0           #circleId:Ljava/lang/String;
    :cond_62
    move v3, v4

    .line 914
    goto :goto_48
.end method

.method private static getLoggingViewFromType(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2
    .parameter "selectedViewType"

    .prologue
    .line 1045
    packed-switch p0, :pswitch_data_10

    .line 1059
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    :goto_5
    return-object v0

    .line 1047
    :pswitch_6
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_SEARCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_5

    .line 1051
    :pswitch_9
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_IN_CIRCLES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_5

    .line 1055
    :pswitch_c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_5

    .line 1045
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private handleNewCircleCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 1012
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p1, v2, :cond_e

    .line 1031
    :cond_d
    :goto_d
    return-void

    .line 1016
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1018
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1f

    .line 1019
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1022
    :cond_1f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    .line 1024
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_44

    .line 1025
    :cond_2a
    const v2, 0x7f080453

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 1028
    .end local v1           #message:Ljava/lang/String;
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0801fd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method private populatePrimarySpinner()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 408
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->clear()V

    .line 410
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_65

    .line 411
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v8, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;

    const v9, 0x7f080445

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, selectedPosition:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 417
    :cond_25
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, circleId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 420
    .local v2, memberCount:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_71

    move v0, v5

    .line 423
    .local v0, blocked:Z
    :goto_44
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v8, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;

    invoke-direct {v8, v1, v3, v2, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 425
    iget v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    packed-switch v7, :pswitch_data_90

    .line 441
    :cond_53
    :goto_53
    :pswitch_53
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_25

    .line 444
    .end local v0           #blocked:Z
    .end local v1           #circleId:Ljava/lang/String;
    .end local v2           #memberCount:I
    .end local v3           #name:Ljava/lang/String;
    :cond_5b
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    if-eq v5, v4, :cond_65

    .line 445
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    .line 446
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->onPrimarySpinnerSelectionChange(I)V

    .line 450
    .end local v4           #selectedPosition:I
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 451
    return-void

    .restart local v1       #circleId:Ljava/lang/String;
    .restart local v2       #memberCount:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #selectedPosition:I
    :cond_71
    move v0, v6

    .line 420
    goto :goto_44

    .line 430
    .restart local v0       #blocked:Z
    :pswitch_73
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 431
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    goto :goto_53

    .line 436
    :pswitch_84
    if-eqz v0, :cond_53

    .line 437
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    goto :goto_53

    .line 425
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_53
        :pswitch_73
        :pswitch_84
    .end packed-switch
.end method

.method private updateView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 540
    const v1, 0x7f09004b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, searchPlate:Landroid/view/View;
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    packed-switch v1, :pswitch_data_22

    .line 548
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setVisible(Z)V

    .line 552
    :goto_17
    return-void

    .line 543
    :pswitch_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setVisible(Z)V

    goto :goto_17

    .line 541
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method protected addCircleMembership(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "personId"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 839
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 841
    const-string v0, "g:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 846
    :cond_2f
    return-void
.end method

.method public doDeleteCircle()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001d

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v0, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->deleteCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 888
    return-void
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 987
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 1003
    :cond_c
    :goto_c
    return-void

    .line 991
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 993
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 994
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 997
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 999
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0801fd

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public onActionButtonClicked(I)V
    .registers 5
    .parameter "actionId"

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_1a

    .line 568
    :goto_3
    return-void

    .line 561
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->newInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    move-result-object v0

    .line 563
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "new_circle_input"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 559
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 814
    const/4 v3, -0x1

    if-ne p2, v3, :cond_21

    if-nez p1, :cond_21

    .line 815
    const-string v3, "person_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, personId:Ljava/lang/String;
    const-string v3, "display_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, personName:Ljava/lang/String;
    const-string v3, "selected_circle_ids"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 819
    .local v2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    .end local v0           #personId:Ljava/lang/String;
    .end local v1           #personName:Ljava/lang/String;
    .end local v2           #selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 829
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 4
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 750
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 750
    :cond_7
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onCirclePropertiesChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    .line 759
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 797
    :goto_6
    return-void

    .line 763
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 765
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    if-eqz v4, :cond_4c

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, duplicateName:Z
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 768
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_37

    .line 769
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;

    .line 770
    .local v3, item:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    iget v4, v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    iget-object v4, v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->title:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->circleId:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 773
    const/4 v1, 0x1

    .line 778
    .end local v3           #item:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    :cond_37
    if-eqz v1, :cond_4c

    .line 779
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f08030a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 768
    .restart local v3       #item:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 785
    .end local v0           #count:I
    .end local v1           #duplicateName:Z
    .end local v2           #i:I
    .end local v3           #item:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    :cond_4c
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    .line 787
    if-nez p1, :cond_67

    .line 788
    const v4, 0x7f08027f

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->createCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    goto :goto_6

    .line 793
    :cond_67
    const v4, 0x7f080282

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService;->modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    goto :goto_6
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 3
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 727
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    if-eqz p1, :cond_5f

    .line 215
    const-string v0, "selected_circle_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    .line 216
    const-string v0, "selected_view_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    .line 217
    const-string v0, "shown_persons"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    .line 218
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    .line 219
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 220
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 222
    :cond_3b
    const-string v0, "new_circle_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 223
    const-string v0, "new_circle_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    .line 225
    :cond_4f
    const-string v0, "new_circle_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    .line 226
    const-string v0, "scrollPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    .line 229
    :cond_5f
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setCircleUsageType(I)V

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setIncludePeopleInCircles(Z)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setIncludePlusPages(Z)V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setAddToCirclesActionEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 240
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
    .line 271
    packed-switch p1, :pswitch_data_50

    .line 296
    :goto_3
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 273
    :pswitch_5
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    const/16 v0, 0xc

    .line 276
    .local v0, circleUsage:I
    :goto_c
    new-instance v1, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->CIRCLES_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_4

    .line 273
    .end local v0           #circleUsage:I
    :cond_1a
    const/4 v0, 0x1

    goto :goto_c

    .line 281
    :pswitch_1c
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    packed-switch v1, :pswitch_data_58

    goto :goto_3

    .line 283
    :pswitch_22
    new-instance v1, Lcom/google/android/apps/plus/fragments/SuggestedPeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->SUGGESTED_PEOPLE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)V

    goto :goto_4

    .line 287
    :pswitch_30
    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 291
    :pswitch_40
    new-instance v1, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 271
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1c
    .end packed-switch

    .line 281
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_22
        :pswitch_30
        :pswitch_40
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 502
    const v3, 0x7f03005e

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v2

    .line 504
    .local v2, view:Landroid/view/View;
    const v3, 0x7f09013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/ColumnGridView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 505
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    if-nez v3, :cond_2a

    .line 508
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 511
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 512
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_92

    move v0, v4

    .line 515
    .local v0, landscape:Z
    :goto_3b
    if-eqz v0, :cond_94

    .line 516
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 517
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 518
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const v4, 0x7f0d020f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->setMinColumnWidth(I)V

    .line 526
    :goto_54
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v4, v4, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 527
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v4, v4, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v5, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v5, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v7, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v7, v7, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    sget-object v8, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v8, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 530
    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/view/View;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 532
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    const v4, 0x7f080215

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryHint(I)V

    .line 533
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->requestFocus(Z)V

    .line 534
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 536
    return-object v2

    .end local v0           #landscape:Z
    :cond_92
    move v0, v6

    .line 512
    goto :goto_3b

    .line 521
    .restart local v0       #landscape:Z
    :cond_94
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOrientation(I)V

    .line 522
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v3, v3, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v3, :cond_a6

    move v3, v4

    :goto_a2
    invoke-virtual {v7, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    goto :goto_54

    :cond_a6
    move v3, v5

    goto :goto_a2
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 961
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 968
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 954
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 947
    return-void
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 5
    .parameter "personId"

    .prologue
    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v0, personIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->dismissSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Ljava/lang/Integer;

    .line 932
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    const/4 v2, -0x1

    .line 303
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 339
    :cond_8
    :goto_8
    return-void

    .line 305
    :pswitch_9
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCirclesCursor:Landroid/database/Cursor;

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->invalidateActionBar()V

    goto :goto_8

    .line 311
    :pswitch_f
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleMembers:Landroid/database/Cursor;

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 317
    if-eqz p2, :cond_33

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 319
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 325
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 326
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->changeCircleMembers(Landroid/database/Cursor;)V

    .line 328
    :cond_3e
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    if-eq v0, v2, :cond_8

    .line 329
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    if-nez v0, :cond_4e

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionToTop()V

    .line 334
    :goto_4b
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    goto :goto_8

    .line 332
    :cond_4e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelection(I)V

    goto :goto_4b

    .line 303
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 353
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_30

    .line 674
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 656
    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->deleteCircle()V

    goto :goto_9

    .line 661
    :sswitch_e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->editCircleProperties()V

    goto :goto_9

    .line 666
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080469

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, helpUrlParam:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 669
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 654
    :sswitch_data_30
    .sparse-switch
        0x7f0902ad -> :sswitch_12
        0x7f0902b2 -> :sswitch_a
        0x7f0902e8 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 632
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 634
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 8
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 734
    if-eqz p2, :cond_13

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 737
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 743
    :goto_12
    return-void

    .line 739
    .end local v0           #intent:Landroid/content/Intent;
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 741
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 6
    .parameter "actionBar"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_1d

    .line 358
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300d6

    const v3, 0x1020014

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 398
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->populatePrimarySpinner()V

    .line 400
    const/4 v0, 0x0

    const v1, 0x7f0200f1

    const v2, 0x7f080452

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 402
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 641
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 643
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 644
    const v0, 0x7f0902b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    const v0, 0x7f0902e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    :cond_20
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 11
    .parameter "position"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 456
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    if-eq v5, p1, :cond_78

    .line 457
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    if-nez v5, :cond_18

    .line 458
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    .line 459
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 460
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v5, v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setQueryString(Ljava/lang/String;)V

    .line 463
    :cond_18
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCurrentSpinnerPosition:I

    .line 465
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-ne v5, v8, :cond_79

    move v2, v3

    .line 467
    .local v2, reloadCircles:Z
    :goto_1f
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;

    .line 468
    .local v1, info:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    iget v6, v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    if-eq v5, v6, :cond_4b

    .line 470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->clearNavigationAction()V

    .line 472
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoggingViewFromType(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    iget v6, v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoggingViewFromType(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 475
    iget v5, v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    iput v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    .line 476
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    if-ne v5, v8, :cond_7b

    move v5, v3

    :goto_48
    or-int/2addr v2, v5

    .line 477
    iput v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    .line 480
    :cond_4b
    const/4 v0, 0x0

    .line 481
    .local v0, circleId:Ljava/lang/String;
    iget v5, v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    if-eqz v5, :cond_52

    .line 482
    iget-object v0, v1, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->circleId:Ljava/lang/String;

    .line 485
    :cond_52
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 486
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    .line 487
    iput v4, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mScrollPosition:I

    .line 490
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v8, v7, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 491
    if-eqz v2, :cond_6e

    .line 492
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v3, v7, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 494
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->invalidateActionBar()V

    .line 495
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->updateView(Landroid/view/View;)V

    .line 497
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #info:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    .end local v2           #reloadCircles:Z
    :cond_78
    return-void

    :cond_79
    move v2, v4

    .line 465
    goto :goto_1f

    .restart local v1       #info:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    .restart local v2       #reloadCircles:Z
    :cond_7b
    move v5, v4

    .line 476
    goto :goto_48
.end method

.method public onQueryClose()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setQueryString(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleMembers:Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->changeCircleMembers(Landroid/database/Cursor;ZZ)V

    .line 709
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 682
    if-nez p1, :cond_21

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    if-eqz v0, :cond_20

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->setQueryString(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->changeCircleMembers(Landroid/database/Cursor;ZZ)V

    .line 692
    :cond_20
    :goto_20
    return-void

    .line 682
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 689
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleMembers:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->changeCircleMembers(Landroid/database/Cursor;)V

    goto :goto_20
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 699
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 604
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    if-eqz v1, :cond_f

    .line 605
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setQueryText(Ljava/lang/String;)V

    .line 608
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 610
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_39

    .line 611
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 612
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 613
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 614
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 617
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_5e

    .line 618
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 619
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 620
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->handleNewCircleCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 621
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    .line 624
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->updateView(Landroid/view/View;)V

    .line 625
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    :cond_c
    const-string v0, "selected_circle_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "selected_view_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v0, "shown_persons"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mShownPersonIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 256
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_46

    .line 259
    const-string v0, "new_circle_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mNewCircleRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    :cond_46
    const-string v0, "new_circle_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mCircleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "scrollPos"

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getFirstVisiblePosition()I

    move-result v0

    :goto_59
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-void

    .line 262
    :cond_5d
    const/4 v0, -0x1

    goto :goto_59
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 717
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 718
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->updateView(Landroid/view/View;)V

    .line 720
    :cond_9
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 205
    const-string v0, "people_view_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    .line 207
    const-string v0, "circle_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedCircleId:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStart()V

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->onStart()V

    .line 586
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 593
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStart()V

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchGridAdapter;->onStop()V

    .line 595
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 6
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 853
    new-instance v0, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;-><init>(Ljava/lang/String;Z)V

    .line 854
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 855
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unblock_person"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 1038
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mSelectedViewType:I

    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getLoggingViewFromType(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 1039
    return-void
.end method

.method protected showCircleMembershipDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "personId"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 807
    return-void
.end method

.method protected showProgressDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 974
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 977
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public unblockPerson(Ljava/lang/String;)V
    .registers 6
    .parameter "personId"

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 862
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0802bd

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 863
    return-void
.end method
