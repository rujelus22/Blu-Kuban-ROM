.class public Lcom/google/android/apps/plus/fragments/StreamListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "StreamListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;
.implements Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;,
        Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/StreamAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/Refreshable;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;"
    }
.end annotation


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected mActionCallback:Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;

.field protected mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field protected mCircleId:Ljava/lang/String;

.field protected mEndOfStream:Z

.field protected mFirstLoad:Z

.field protected mFooterView:Landroid/view/View;

.field private mFragmentStartTime:J

.field protected mIntent:Landroid/content/Intent;

.field protected mIsActive:Z

.field private mLastDeactivationTime:J

.field protected mLoaderHash:Ljava/lang/Integer;

.field protected mLocation:Landroid/location/Location;

.field protected mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field protected mLocationDisabledView:Landroid/view/View;

.field protected mLocationSettingsButton:Landroid/widget/Button;

.field protected mNearby:Z

.field protected mOperationType:I

.field protected mPendingRequestId:Ljava/lang/Integer;

.field protected mPostsUri:Landroid/net/Uri;

.field protected mPreloadRequested:Z

.field protected mProgressView:Landroid/widget/ProgressBar;

.field private mRefreshDisabled:Z

.field protected final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mStreamLength:I

.field protected mStreamOwnerUserId:J

.field protected mUserId:Ljava/lang/Long;

.field protected mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 552
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFirstLoad:Z

    .line 139
    iput v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    .line 150
    new-instance v1, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 553
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "frag_index"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 556
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Z)V
    .registers 5
    .parameter "intent"
    .parameter "active"

    .prologue
    const/4 v1, -0x1

    .line 564
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFirstLoad:Z

    .line 139
    iput v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    .line 150
    new-instance v0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 565
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    .line 566
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    .line 568
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setFragmentIndex(I)V

    .line 569
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ZI)V
    .registers 5
    .parameter "intent"
    .parameter "active"
    .parameter "fragmentIndex"

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFirstLoad:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    .line 150
    new-instance v0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 579
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    .line 580
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    .line 582
    invoke-virtual {p0, p3}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setFragmentIndex(I)V

    .line 583
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/StreamListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/StreamListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/StreamListFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/StreamListFragment;Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleContextItemSelected(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V

    return-void
.end method

.method private addLocationListener(Landroid/location/Location;)V
    .registers 12
    .parameter "lastLocation"

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    if-nez v0, :cond_5

    .line 1407
    :cond_4
    :goto_4
    return-void

    .line 1390
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_4

    .line 1392
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    new-instance v7, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;

    const/4 v6, 0x0

    invoke-direct {v7, p0, v6}, Lcom/google/android/apps/plus/fragments/StreamListFragment$StreamLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;Lcom/google/android/apps/plus/fragments/StreamListFragment$1;)V

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 1395
    .local v9, view:Landroid/view/View;
    const v0, 0x7f0d00d7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1398
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v8

    .line 1400
    .local v8, isProviderEnabled:Z
    if-nez v8, :cond_41

    .line 1401
    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showLocationDisabled(Landroid/view/View;)V

    .line 1402
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeLocationListener()V

    goto :goto_4

    .line 1403
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 1404
    const v0, 0x7f070126

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private handleContextItemSelected(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V
    .registers 13
    .parameter "adapter"
    .parameter "menuItem"

    .prologue
    const v4, 0x7f070169

    const v3, 0x7f070168

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1100
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_ce

    .line 1158
    :goto_13
    :pswitch_13
    return-void

    .line 1102
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getObjectType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I

    goto :goto_13

    .line 1108
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/plus/service/EsService;->deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    goto :goto_13

    .line 1113
    :pswitch_2d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isLimited()Z

    move-result v8

    .line 1114
    .local v8, limited:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v8}, Lcom/google/android/apps/plus/phone/Intents;->getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 1116
    .local v7, intent:Landroid/content/Intent;
    if-eqz v8, :cond_60

    .line 1117
    const v1, 0x7f07015b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07015d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v7}, Lcom/google/android/apps/plus/fragments/ConfirmIntentDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/support/v4/app/DialogFragment;

    move-result-object v6

    .line 1121
    .local v6, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_reshare"

    invoke-virtual {v6, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_13

    .line 1123
    .end local v6           #dialog:Landroid/support/v4/app/DialogFragment;
    :cond_60
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 1129
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #limited:Z
    :pswitch_64
    const v1, 0x7f0700eb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700fe

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v6

    .line 1133
    .local v6, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v6, p0, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1135
    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_dialog"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1142
    .end local v6           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_99
    const v1, 0x7f0700ef

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0700ff

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v6

    .line 1146
    .restart local v6       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v6, p0, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1148
    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mute_dialog"

    invoke-virtual {v6, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1100
    :pswitch_data_ce
    .packed-switch 0x7f0d01be
        :pswitch_14
        :pswitch_23
        :pswitch_2d
        :pswitch_13
        :pswitch_13
        :pswitch_99
        :pswitch_13
        :pswitch_64
    .end packed-switch
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1609
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_d

    .line 1610
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1612
    :cond_d
    return-void
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 1415
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 1416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1418
    :cond_c
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 5
    .parameter

    .prologue
    .line 1445
    iput p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOperationType:I

    .line 1447
    const/4 v0, 0x0

    const v1, 0x7f07011a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1451
    return-void
.end method

.method private updateLocationHeader(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1426
    const v0, 0x7f0d00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1427
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_14

    .line 1428
    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1437
    :goto_13
    return-void

    .line 1430
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->getFormattedAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    if-eqz v1, :cond_20

    .line 1432
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1434
    :cond_20
    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13
.end method


# virtual methods
.method public activate()V
    .registers 5

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    if-eqz v0, :cond_5

    .line 641
    :goto_4
    return-void

    .line 631
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    .line 632
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_1a

    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->addLocationListener(Landroid/location/Location;)V

    .line 640
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_4

    .line 634
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLastDeactivationTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 637
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->refresh()V

    goto :goto_14
.end method

.method public deactivate()V
    .registers 3

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    if-nez v0, :cond_5

    .line 673
    :goto_4
    return-void

    .line 662
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_c

    .line 663
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeLocationListener()V

    .line 666
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_15

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 670
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLastDeactivationTime:J

    goto :goto_4
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1523
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 1524
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    return-void
.end method

.method protected fetchContent(Z)V
    .registers 9
    .parameter "newer"

    .prologue
    .line 1328
    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    if-eqz v0, :cond_7

    .line 1378
    :cond_6
    :goto_6
    return-void

    .line 1333
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_45

    .line 1334
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_6

    .line 1339
    if-eqz p1, :cond_3a

    .line 1340
    const/4 v5, 0x0

    .line 1348
    .local v5, continuationToken:Ljava/lang/String;
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/apps/plus/service/EsService;->getNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1371
    .local v6, reqId:Ljava/lang/Integer;
    :goto_30
    if-eqz p1, :cond_6f

    .line 1372
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1377
    :goto_34
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_6

    .line 1342
    .end local v5           #continuationToken:Ljava/lang/String;
    .end local v6           #reqId:Ljava/lang/Integer;
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v5

    .line 1343
    .restart local v5       #continuationToken:Ljava/lang/String;
    if-nez v5, :cond_12

    goto :goto_6

    .line 1355
    .end local v5           #continuationToken:Ljava/lang/String;
    :cond_45
    if-eqz p1, :cond_64

    .line 1356
    const/4 v5, 0x0

    .line 1364
    .restart local v5       #continuationToken:Ljava/lang/String;
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mCircleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mUserId:Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .restart local v6       #reqId:Ljava/lang/Integer;
    goto :goto_30

    .line 1358
    .end local v5           #continuationToken:Ljava/lang/String;
    .end local v6           #reqId:Ljava/lang/Integer;
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v5

    .line 1359
    .restart local v5       #continuationToken:Ljava/lang/String;
    if-nez v5, :cond_48

    goto :goto_6

    .line 1374
    .restart local v6       #reqId:Ljava/lang/Integer;
    :cond_6f
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_34
.end method

.method public getFragmentIndex()I
    .registers 3

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "frag_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1498
    :cond_c
    :goto_c
    return-void

    .line 1464
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "req_pending"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1468
    if-eqz v0, :cond_21

    .line 1469
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1472
    :cond_21
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1474
    iget v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOperationType:I

    packed-switch v0, :pswitch_data_4a

    .line 1491
    const v0, 0x7f070119

    .line 1496
    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1476
    :pswitch_3e
    const v0, 0x7f07010f

    .line 1477
    goto :goto_31

    .line 1481
    :pswitch_42
    const v0, 0x7f07010d

    .line 1482
    goto :goto_31

    .line 1486
    :pswitch_46
    const v0, 0x7f07010e

    .line 1487
    goto :goto_31

    .line 1474
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_46
    .end packed-switch
.end method

.method protected onAsyncData()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 1577
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onAsyncData()V

    .line 1579
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1580
    .local v0, activity:Landroid/app/Activity;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFragmentStartTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1e

    instance-of v1, v0, Lcom/google/android/apps/plus/phone/ProfileActivity;

    if-eqz v1, :cond_1e

    .line 1581
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PROFILE_LOOP_TAB:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFragmentStartTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 1583
    iput-wide v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFragmentStartTime:J

    .line 1585
    :cond_1e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationSettingsButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_e

    .line 1175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1178
    .end local v0           #intent:Landroid/content/Intent;
    :cond_e
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1063
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_16

    .line 1069
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1070
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_19

    .line 1071
    const-string v3, "StreamListFragment"

    const-string v5, "Intent is not set"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1089
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_15
    return v3

    .line 1064
    :catch_16
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 1065
    goto :goto_15

    .line 1075
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_19
    const-string v3, "tag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tag"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    move v3, v4

    .line 1077
    goto :goto_15

    .line 1081
    :cond_33
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isFooterIndex(I)Z

    move-result v3

    if-eqz v3, :cond_41

    move v3, v4

    .line 1082
    goto :goto_15

    .line 1086
    :cond_41
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    .line 1088
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-direct {p0, v3, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleContextItemSelected(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/view/MenuItem;)V

    .line 1089
    const/4 v3, 0x1

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 701
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_15

    .line 704
    new-instance v0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;

    .line 707
    :cond_15
    if-eqz p1, :cond_e2

    .line 708
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    .line 709
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    .line 711
    const-string v0, "post_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 712
    const-string v0, "post_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 715
    :cond_46
    const-string v0, "op_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOperationType:I

    .line 717
    const-string v0, "loader_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 718
    const-string v0, "loader_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 720
    :cond_62
    const-string v0, "stream_length"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    .line 721
    const-string v0, "last_deactivation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLastDeactivationTime:J

    .line 724
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mRefreshDisabled:Z

    .line 729
    :goto_74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 731
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 732
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mUserId:Ljava/lang/Long;

    .line 733
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamOwnerUserId:J

    .line 739
    :goto_a2
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "circle_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "circle_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mCircleId:Ljava/lang/String;

    .line 745
    :goto_b6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "view"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 746
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "view"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 751
    :goto_ce
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    if-ne v0, v3, :cond_fc

    move v0, v1

    :goto_d5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    .line 753
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->prepareLoaderUri()V

    .line 755
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 756
    return-void

    .line 726
    :cond_e2
    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFragmentStartTime:J

    goto :goto_74

    .line 735
    :cond_e9
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mUserId:Ljava/lang/Long;

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamOwnerUserId:J

    goto :goto_a2

    .line 742
    :cond_f4
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mCircleId:Ljava/lang/String;

    goto :goto_b6

    .line 748
    :cond_f7
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_ce

    :cond_fc
    move v0, v2

    .line 751
    goto :goto_d5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 996
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_4} :catch_1f

    .line 1001
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 1002
    .local v3, inflater:Landroid/view/MenuInflater;
    const v8, 0x7f100020

    invoke-virtual {v3, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1004
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    iget v9, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isFooterIndex(I)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1053
    .end local v3           #inflater:Landroid/view/MenuInflater;
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_1e
    return-void

    .line 997
    :catch_1f
    move-exception v2

    .line 998
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_1e

    .line 1009
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #inflater:Landroid/view/MenuInflater;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_21
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    iget v9, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    .line 1011
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getAuthorId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_d1

    const/4 v1, 0x1

    .line 1012
    .local v1, byMe:Z
    :goto_3d
    if-eqz v1, :cond_d4

    .line 1013
    const v8, 0x7f0700d7

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1020
    :goto_49
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 1022
    .local v7, tag:Ljava/lang/String;
    if-eqz v7, :cond_59

    .line 1023
    const-string v8, "tag"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    :cond_59
    const v8, 0x7f0d01be

    :try_start_5c
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1031
    const v8, 0x7f0d01bf

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1032
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    .line 1033
    .local v6, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v6, :cond_100

    .line 1034
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 1035
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_94

    .line 1036
    const v8, 0x7f0d01bf

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_94
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5c .. :try_end_94} :catch_fe

    .line 1047
    .end local v6           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_94
    :goto_94
    const v8, 0x7f0d01c5

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1049
    const v8, 0x7f0d01c0

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isLocked()Z

    move-result v8

    if-nez v8, :cond_110

    const/4 v8, 0x1

    :goto_b4
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1050
    const v8, 0x7f0d01c3

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-nez v1, :cond_112

    const/4 v8, 0x1

    :goto_c5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1052
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setupMenu(Landroid/view/Menu;)V

    goto/16 :goto_1e

    .line 1011
    .end local v1           #byMe:Z
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #tag:Ljava/lang/String;
    :cond_d1
    const/4 v1, 0x0

    goto/16 :goto_3d

    .line 1015
    .restart local v1       #byMe:Z
    :cond_d4
    const v9, 0x7f0700d6

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getAuthorName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_49

    .line 1039
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .restart local v7       #tag:Ljava/lang/String;
    :cond_ee
    const v8, 0x7f0d01be

    :try_start_f1
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_94

    .line 1044
    .end local v6           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :catch_fe
    move-exception v8

    goto :goto_94

    .line 1042
    .restart local v6       #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_100
    const v8, 0x7f0d01be

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_10f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f1 .. :try_end_10f} :catch_fe

    goto :goto_94

    .line 1049
    .end local v6           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_110
    const/4 v8, 0x0

    goto :goto_b4

    .line 1050
    :cond_112
    const/4 v8, 0x0

    goto :goto_c5
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
    .line 876
    const-string v6, "sort_index ASC"

    .line 877
    .local v6, orderAndLimit:Ljava/lang/String;
    iget v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 881
    :cond_20
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPostsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    const-string v4, "has_muted=0"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 764
    const v0, 0x7f03003e

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v9

    .line 768
    .local v9, view:Landroid/view/View;
    const v0, 0x7f0300a4

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFooterView:Landroid/view/View;

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFooterView:Landroid/view/View;

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 770
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v5, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFooterView:Landroid/view/View;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/StreamAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 772
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 773
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 777
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getFragmentIndex()I

    move-result v8

    .line 778
    .local v8, fragmentIndex:I
    if-ltz v8, :cond_5c

    .line 779
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 782
    :cond_5c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_a6

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 790
    :goto_67
    const v0, 0x7f0700cf

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 792
    const v0, 0x7f0d00d9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    .line 793
    const v0, 0x7f0d00db

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationSettingsButton:Landroid/widget/Button;

    .line 794
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationSettingsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_a5

    .line 797
    const v0, 0x7f0d00d7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 798
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_a5

    .line 800
    const v0, 0x7f070126

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 804
    :cond_a5
    return-object v9

    .line 786
    :cond_a6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 787
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_67
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1231
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1224
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1208
    const-string v0, "remove_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showProgressDialog(I)V

    .line 1217
    :cond_22
    :goto_22
    return-void

    .line 1212
    :cond_23
    const-string v0, "mute_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1215
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showProgressDialog(I)V

    goto :goto_22
.end method

.method public onFooterViewUsed()V
    .registers 2

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPreloadRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    if-eqz v0, :cond_9

    .line 1320
    :cond_8
    :goto_8
    return-void

    .line 1318
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPreloadRequested:Z

    .line 1319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->fetchContent(Z)V

    goto :goto_8
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
    .line 1185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->isFooterIndex(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1201
    :cond_a
    :goto_a
    return-void

    .line 1189
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 1190
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_a

    .line 1193
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1195
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getActivityId()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, activityId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1198
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v2, :cond_a

    .line 1199
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_a
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 14
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 892
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v4

    .line 893
    .local v4, oldCount:I
    if-eqz v4, :cond_f

    .line 894
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->saveScrollPosition()V

    .line 897
    :cond_f
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 899
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v7, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v3

    .line 902
    .local v3, newCount:I
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    .line 903
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPreloadRequested:Z

    .line 905
    if-eqz p2, :cond_6a

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_6a

    .line 906
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showContent(Landroid/view/View;)V

    .line 907
    const/4 v0, 0x1

    .line 908
    .local v0, asyncDataReceived:Z
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    .line 909
    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_68

    move v7, v8

    :goto_3e
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    .line 926
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateFooter()V

    .line 928
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFirstLoad:Z

    .line 930
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v7, v10, :cond_54

    .line 931
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v7, :cond_54

    .line 933
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 937
    :cond_54
    if-eqz p2, :cond_5c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_a5

    .line 938
    :cond_5c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 939
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->restoreScrollPosition()V

    .line 976
    :goto_62
    if-eqz v0, :cond_67

    .line 977
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onAsyncData()V

    .line 979
    :cond_67
    return-void

    :cond_68
    move v7, v9

    .line 909
    goto :goto_3e

    .line 910
    .end local v0           #asyncDataReceived:Z
    :cond_6a
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v7, :cond_72

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v7, :cond_7b

    .line 911
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 912
    const/4 v0, 0x0

    .restart local v0       #asyncDataReceived:Z
    goto :goto_40

    .line 913
    .end local v0           #asyncDataReceived:Z
    :cond_7b
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFirstLoad:Z

    if-eqz v7, :cond_94

    .line 914
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v10, "no_location_stream_key"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPostsUri:Landroid/net/Uri;

    invoke-virtual {v7, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 916
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->fetchContent(Z)V

    .line 918
    :cond_92
    const/4 v0, 0x0

    .restart local v0       #asyncDataReceived:Z
    goto :goto_40

    .line 920
    .end local v0           #asyncDataReceived:Z
    :cond_94
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-eqz v7, :cond_a3

    .line 921
    :cond_9c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->showEmptyView(Landroid/view/View;)V

    .line 923
    :cond_a3
    const/4 v0, 0x1

    .restart local v0       #asyncDataReceived:Z
    goto :goto_40

    .line 941
    :cond_a5
    const/4 v5, 0x0

    .line 944
    .local v5, snapToTopOfStream:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 946
    .local v1, i:I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 948
    :cond_b2
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v8, :cond_c3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_b2

    .line 953
    :cond_c3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 954
    .local v2, loaderHash:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    if-eqz v7, :cond_10d

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v2, :cond_10d

    move v5, v8

    .line 955
    :goto_d8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 958
    if-nez v5, :cond_ef

    if-ge v3, v4, :cond_ef

    .line 959
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    add-int/lit8 v10, v3, -0x1

    if-lt v7, v10, :cond_ef

    .line 960
    const/4 v5, 0x1

    .line 964
    :cond_ef
    if-eqz v5, :cond_10f

    .line 966
    if-le v3, v8, :cond_104

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    if-eqz v7, :cond_104

    .line 967
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 969
    :cond_104
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto/16 :goto_62

    :cond_10d
    move v5, v9

    .line 954
    goto :goto_d8

    .line 971
    :cond_10f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->restoreScrollPosition()V

    goto/16 :goto_62
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 986
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 836
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 837
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 839
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeLocationListener()V

    .line 840
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 812
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 813
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 815
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_14

    .line 816
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->addLocationListener(Landroid/location/Location;)V

    .line 819
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_39

    .line 820
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 821
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 822
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 824
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 828
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 829
    return-void
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 1516
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 847
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 849
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 850
    const-string v0, "intent"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 853
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1d

    .line 854
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 857
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 858
    const-string v0, "post_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    :cond_2c
    const-string v0, "op_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    .line 864
    const-string v0, "loader_hash"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLoaderHash:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    :cond_42
    const-string v0, "stream_length"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string v0, "last_deactivation"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLastDeactivationTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 869
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public onViewUsed(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPreloadRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    if-eqz v0, :cond_9

    .line 1291
    :cond_8
    :goto_8
    return-void

    .line 1284
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1288
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-lt p1, v0, :cond_8

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->prefetchContent()V

    goto :goto_8
.end method

.method protected prefetchContent()V
    .registers 3

    .prologue
    .line 1297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPreloadRequested:Z

    .line 1298
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/StreamListFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1307
    return-void
.end method

.method protected prepareLoaderUri()V
    .registers 6

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_13

    .line 1239
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "no_location_stream_key"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPostsUri:Landroid/net/Uri;

    .line 1246
    :goto_12
    return-void

    .line 1242
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mUserId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mPostsUri:Landroid/net/Uri;

    goto :goto_12
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 680
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mRefreshDisabled:Z

    if-eqz v1, :cond_8

    .line 681
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mRefreshDisabled:Z

    .line 694
    :goto_7
    return-void

    .line 685
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v1, :cond_1a

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    .line 688
    .local v0, lastLocation:Landroid/location/Location;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    .line 689
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->addLocationListener(Landroid/location/Location;)V

    .line 690
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_7

    .line 692
    .end local v0           #lastLocation:Landroid/location/Location;
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->fetchContent(Z)V

    goto :goto_7
.end method

.method public setFragmentIndex(I)V
    .registers 6
    .parameter "fragmentIndex"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 598
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 599
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "frag_index"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 607
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 608
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_29

    .line 609
    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, listLayoutParent:Landroid/view/View;
    if-eqz v1, :cond_29

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 614
    .end local v1           #listLayoutParent:Landroid/view/View;
    :cond_29
    return-void

    .line 602
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #view:Landroid/view/View;
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 603
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "frag_index"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_13
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 652
    return-void
.end method

.method protected setupMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 1167
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1563
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->showContent(Landroid/view/View;)V

    .line 1564
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_15

    .line 1565
    const v0, 0x7f0d00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1568
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1569
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1550
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->showEmptyView(Landroid/view/View;)V

    .line 1551
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v0, :cond_15

    .line 1552
    const v0, 0x7f0d00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1555
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1532
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1533
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1534
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "progressText"

    .prologue
    .line 1541
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    return-void
.end method

.method protected showLocationDisabled(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->removeProgressViewMessages()V

    .line 1594
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    const v0, 0x7f0d007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    const v0, 0x7f0d0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    const v0, 0x7f0d00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationDisabledView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    return-void
.end method

.method protected updateFooter()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1501
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mFooterView:Landroid/view/View;

    const v6, 0x7f0d0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1502
    .local v0, emptyProgressView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_26

    move v2, v3

    .line 1503
    .local v2, visible:Z
    :goto_12
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mEndOfStream:Z

    if-nez v5, :cond_28

    move v1, v3

    .line 1504
    .local v1, shouldBeVisible:Z
    :goto_17
    if-eq v2, v1, :cond_25

    .line 1505
    if-eqz v1, :cond_2a

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->notifyDataSetChanged()V

    .line 1508
    :cond_25
    return-void

    .end local v1           #shouldBeVisible:Z
    .end local v2           #visible:Z
    :cond_26
    move v2, v4

    .line 1502
    goto :goto_12

    .restart local v2       #visible:Z
    :cond_28
    move v1, v4

    .line 1503
    goto :goto_17

    .line 1505
    .restart local v1       #shouldBeVisible:Z
    :cond_2a
    const/16 v4, 0x8

    goto :goto_1b
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 5
    .parameter "progressView"

    .prologue
    const/4 v1, 0x0

    .line 1253
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mIsActive:Z

    if-nez v2, :cond_6

    .line 1272
    :cond_5
    :goto_5
    return-void

    .line 1255
    :cond_6
    if-eqz p1, :cond_5

    .line 1259
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1260
    :cond_18
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1267
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1268
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    instance-of v2, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;

    if-eqz v2, :cond_5

    .line 1269
    check-cast v0, Lcom/google/android/apps/plus/phone/StreamsActivity;

    .end local v0           #activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->setLoading(Z)V

    goto :goto_5

    .line 1261
    :cond_32
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNearby:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mLocation:Landroid/location/Location;

    if-nez v2, :cond_3e

    .line 1262
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1d

    .line 1264
    :cond_3e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_1d
.end method
