.class public Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedEventFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;
.implements Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;
.implements Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;
.implements Lcom/google/android/apps/plus/views/EventActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$10;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$ActivityQuery;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$DetailsQuery;,
        Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;
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
        "Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;",
        "Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog$CommentEditDialogListener;",
        "Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;",
        "Lcom/google/android/apps/plus/views/EventActionListener;"
    }
.end annotation


# static fields
.field private static mNextPagePreloadTriggerRows:I


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

.field private mCommentReqId:Ljava/lang/Integer;

.field private mDeleteReqId:Ljava/lang/Integer;

.field private mError:Z

.field private mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

.field private mEventId:Ljava/lang/String;

.field private mEventLoaded:Z

.field private mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

.field private mFetchReqId:Ljava/lang/Integer;

.field private mFirstActivityTimestamp:J

.field private mGhostEvent:Z

.field private mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field private final mHandler:Landroid/os/Handler;

.field private mHasUserInteracted:Z

.field private mInvitationToken:Ljava/lang/String;

.field private mInviteReqId:Ljava/lang/Integer;

.field private final mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mNeedsRefresh:Z

.field private mNewPhotoReqId:Ljava/lang/Integer;

.field private mOwnerId:Ljava/lang/String;

.field private mPollingToken:Ljava/lang/String;

.field private mPreloadRequested:Z

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mReportAbuseRequestId:Ljava/lang/Integer;

.field private mResumeToken:Ljava/lang/String;

.field private mSavedScrollPos:I

.field private final mSettingsCallbacks:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mTypeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 172
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsCallbacks:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/google/android/apps/plus/fragments/EventActiveState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/EventActiveState;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSavedScrollPos:I

    .line 268
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1538
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->readNextPage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/EventActiveState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->doDeleteEvent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->turnOnInstantShare(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsCallbacks:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleGetEventUpdatesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleCreateCommentComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleNewPhotoComplete(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleInviteMoreComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleDeleteCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private deleteEvent()V
    .registers 4

    .prologue
    .line 844
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;-><init>()V

    .line 845
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_event_conf"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 847
    return-void
.end method

.method private doDeleteEvent()V
    .registers 4

    .prologue
    .line 1459
    const v0, 0x7f080416

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showProgressDialog(I)V

    .line 1460
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    .line 1461
    return-void
.end method

.method private doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 6
    .parameter "audience"

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 941
    :cond_e
    :goto_e
    return-void

    .line 938
    :cond_f
    const v0, 0x7f080412

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showProgressDialog(I)V

    .line 939
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService;->invitePeopleToEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    goto :goto_e
.end method

.method private doReportActivity()V
    .registers 6

    .prologue
    .line 380
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_REPORT_ABUSE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 381
    const v1, 0x7f080178

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08018d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 385
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 387
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_event"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private fetchData()V
    .registers 9

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mError:Z

    .line 570
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPollingToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mResumeToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/service/EsService;->readEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 573
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateProgressIndicator()V

    .line 574
    return-void
.end method

.method private handleCreateCommentComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "serviceResult"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1002
    :cond_c
    :goto_c
    return-void

    .line 992
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    .line 994
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->hideProgressDialog()V

    .line 996
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 997
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1000
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->fetchData()V

    goto :goto_c
.end method

.method private handleDeleteCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 466
    :cond_c
    :goto_c
    return-void

    .line 456
    :cond_d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->hideProgressDialog()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    .line 460
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 461
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 464
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c
.end method

.method private handleGetEventUpdatesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "serviceResult"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 960
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_10

    .line 985
    :cond_f
    :goto_f
    return-void

    .line 964
    :cond_10
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 966
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateProgressIndicator()V

    .line 967
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->hideProgressDialog()V

    .line 969
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 970
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v0

    .line 971
    .local v0, errorCode:I
    const/16 v1, 0x194

    if-eq v0, v1, :cond_51

    const/16 v1, 0x190

    if-eq v0, v1, :cond_51

    .line 972
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mError:Z

    .line 973
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v1, :cond_40

    .line 974
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0800c5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 981
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 983
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    const-string v2, "HEF"

    const-string v3, "HGEUC"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->checkPartitions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 978
    :cond_51
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGhostEvent:Z

    goto :goto_40
.end method

.method private handleInviteMoreComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 1108
    :cond_c
    :goto_c
    return-void

    .line 1098
    :cond_d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->hideProgressDialog()V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    .line 1102
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1106
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->fetchData()V

    goto :goto_c
.end method

.method private handleNewPhotoComplete(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V
    .registers 10
    .parameter "requestId"
    .parameter "serviceResult"
    .parameter "photoLocation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1006
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_f

    .line 1045
    :cond_e
    :goto_e
    return-void

    .line 1010
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    .line 1012
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->hideProgressDialog()V

    .line 1014
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1015
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1016
    const v1, 0x7f0801fd

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 1018
    :cond_2c
    const v1, 0x7f080418

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1020
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method private hideProgressDialog()V
    .registers 4

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1192
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_11

    .line 1193
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1195
    :cond_11
    return-void
.end method

.method private inviteMore()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 876
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const v2, 0x7f08040c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v7, 0x1

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 884
    return-void
.end method

.method private isInstantUploadSyncEnabled()Z
    .registers 7

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1202
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1203
    .local v4, myIntent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 1204
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v3, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 1205
    .local v3, instantUploadAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 1207
    .local v2, currentAccount:Landroid/accounts/Account;
    const-string v5, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private postPhotos(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v9, 0x1

    .line 1048
    if-nez p1, :cond_4

    .line 1091
    :goto_3
    return-void

    .line 1051
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .local v4, photoLocationBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1054
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    .line 1055
    .local v2, localUri:Landroid/net/Uri;
    if-eqz v2, :cond_d

    .line 1056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1060
    .end local v2           #localUri:Landroid/net/Uri;
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1062
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f080418

    invoke-static {v0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1064
    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;

    invoke-direct {v5, p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;)V

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3
.end method

.method private readNextPage()V
    .registers 9

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPollingToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mResumeToken:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/service/EsService;->readEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 752
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateProgressIndicator()V

    .line 753
    return-void
.end method

.method private showCheckinDialog()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1585
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 1586
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v5, "dialog_check_in"

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_39

    .line 1587
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsEventData;->isViewerCheckedIn(Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v5

    if-nez v5, :cond_3a

    const/4 v3, 0x1

    .line 1589
    .local v3, hasCheckedIn:Z
    :goto_16
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v5, :cond_3c

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/EventOptions;->broadcast:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1590
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->ON_AIR:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .line 1596
    .local v1, dialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;
    :goto_2c
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;

    invoke-direct {v0, v3, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;-><init>(ZLcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;)V

    .line 1598
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    const-string v5, "dialog_check_in"

    invoke-virtual {v0, v2, v5}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v0, p0, v4}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1601
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    .end local v1           #dialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;
    .end local v3           #hasCheckedIn:Z
    :cond_39
    return-void

    :cond_3a
    move v3, v4

    .line 1587
    goto :goto_16

    .line 1591
    .restart local v3       #hasCheckedIn:Z
    :cond_3c
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/PlusEvent;->isPublic:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1592
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->PUBLIC:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .restart local v1       #dialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;
    goto :goto_2c

    .line 1594
    .end local v1           #dialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;
    :cond_4b
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->PRIVATE:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .restart local v1       #dialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;
    goto :goto_2c
.end method

.method private showChoosePhotoDialog()V
    .registers 4

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;

    const v1, 0x7f080150

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;-><init>(I)V

    .line 279
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setIsCameraSupported(Z)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_photo"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private showEnablePhotoSyncDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1608
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v4, "dialog_photo_sync"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1621
    :goto_d
    return-void

    .line 1612
    :cond_e
    const v4, 0x7f080045

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, syncName:Ljava/lang/String;
    const v4, 0x7f0803f4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, message:Ljava/lang/String;
    const v4, 0x7f0803e9

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08020b

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08020e

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1619
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, p0, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1620
    const-string v4, "dialog_photo_sync"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private showMasterSyncDisabledDialog()V
    .registers 7

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1569
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "dialog_master_sync"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1579
    :goto_c
    return-void

    .line 1573
    :cond_d
    const v2, 0x7f0803e9

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0803f3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080209

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1577
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1578
    const-string v2, "dialog_master_sync"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "messageResId"

    .prologue
    .line 1183
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1186
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method private toggleInstantShare(Z)V
    .registers 7
    .parameter "enableState"

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v1, v1, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    if-ne p1, v1, :cond_7

    .line 1533
    :cond_6
    :goto_6
    return-void

    .line 1527
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1528
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 1532
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method private turnOnInstantShare(ZZ)V
    .registers 9
    .parameter "checkin"
    .parameter "takePhoto"

    .prologue
    .line 1506
    if-eqz p2, :cond_10

    .line 1507
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "camera-event.jpg"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1508
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1511
    .end local v0           #intent:Landroid/content/Intent;
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsEventData;->isViewerCheckedIn(Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v1

    if-nez v1, :cond_2b

    if-eqz p1, :cond_2b

    .line 1512
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->sendEventRsvp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_2b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->toggleInstantShare(Z)V

    .line 1517
    return-void
.end method

.method private updateActiveEventState(Lcom/google/api/services/plusi/model/PlusEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1466
    .local v2, now:J
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHasUserInteracted:Z

    iput-boolean v6, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->hasUserInteracted:Z

    .line 1468
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean v7, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareAvailable:Z

    .line 1469
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean v7, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    .line 1470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    .line 1471
    .local v4, userGaiaId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v5, v4, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->isInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1472
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean v8, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareAvailable:Z

    .line 1487
    :cond_29
    :goto_29
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    if-eqz v5, :cond_51

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->EVENTS_CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v5, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareAvailable:Z

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v5, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    if-nez v5, :cond_51

    .line 1490
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$9;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1499
    :cond_51
    iput-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    .line 1500
    return-void

    .line 1473
    :cond_54
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v5, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->isEventOver(Lcom/google/api/services/plusi/model/PlusEvent;J)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1474
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean v8, v5, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    goto :goto_29

    .line 1476
    :cond_61
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mRefreshRunnable:Ljava/lang/Runnable;

    if-nez v5, :cond_6c

    .line 1477
    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;

    invoke-direct {v5, p0, v9}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 1480
    :cond_6c
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1481
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v5, v4, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->timeUntilInstantShareAllowed(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1482
    .local v0, delay:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_29

    .line 1483
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29
.end method

.method private updateProgressIndicator()V
    .registers 3

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v0

    .line 1117
    .local v0, bar:Lcom/google/android/apps/plus/views/HostActionBar;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGhostEvent:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventLoaded:Z

    if-nez v1, :cond_14

    .line 1118
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 1122
    :goto_13
    return-void

    .line 1120
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->hideProgressIndicator()V

    goto :goto_13
.end method

.method private updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 756
    if-nez p1, :cond_6

    .line 783
    :goto_5
    return-void

    .line 760
    :cond_6
    const v2, 0x7f090085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 761
    .local v1, serverErrorView:Landroid/widget/TextView;
    const v2, 0x7f09013f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 762
    .local v0, contentView:Landroid/view/View;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGhostEvent:Z

    if-eqz v2, :cond_2d

    .line 763
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    const v2, 0x7f0803de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 765
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 766
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showContent(Landroid/view/View;)V

    .line 782
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateProgressIndicator()V

    goto :goto_5

    .line 767
    :cond_2d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v2, :cond_3b

    .line 768
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 770
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showContent(Landroid/view/View;)V

    goto :goto_29

    .line 771
    :cond_3b
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventLoaded:Z

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_4d

    .line 772
    :cond_43
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 773
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_29

    .line 775
    :cond_4d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mError:Z

    if-eqz v2, :cond_29

    .line 776
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    const v2, 0x7f0803dd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 778
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 779
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showContent(Landroid/view/View;)V

    goto :goto_29
.end method


# virtual methods
.method public doPickPhotoFromAlbums()V
    .registers 6

    .prologue
    .line 303
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getCameraPhotosPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method public doTakePhoto()V
    .registers 6

    .prologue
    .line 286
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 288
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "camera-event.jpg"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_13} :catch_14

    .line 294
    .end local v1           #intent:Landroid/content/Intent;
    :goto_13
    return-void

    .line 290
    :catch_14
    move-exception v0

    .line 291
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f08032c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method

.method protected handleReportEventCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_e

    .line 374
    :cond_d
    :goto_d
    return-void

    .line 357
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .line 359
    .local v1, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_1f

    .line 360
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 363
    :cond_1f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateSpinner()V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 368
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 369
    const v2, 0x7f0801fd

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 371
    :cond_3c
    const v2, 0x7f0802c8

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isProgressIndicatorVisible()Z
    .registers 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->isProgressIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onActionButtonClicked(I)V
    .registers 5
    .parameter "actionId"

    .prologue
    .line 858
    packed-switch p1, :pswitch_data_1e

    .line 870
    :goto_3
    return-void

    .line 860
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showChoosePhotoDialog()V

    goto :goto_3

    .line 864
    :pswitch_8
    const v1, 0x7f080163

    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->newInstance(I)Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;

    move-result-object v0

    .line 866
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 867
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/CommentEditFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 858
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 891
    if-eq p2, v3, :cond_4

    .line 928
    :cond_3
    :goto_3
    return-void

    .line 895
    :cond_4
    packed-switch p1, :pswitch_data_42

    :pswitch_7
    goto :goto_3

    .line 897
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 898
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v3, :cond_16

    move-object v3, v0

    .line 899
    check-cast v3, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    invoke-interface {v3}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->showInsertCameraPhotoDialog()V

    .line 902
    :cond_16
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v4, "camera-event.jpg"

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    goto :goto_3

    .line 907
    .end local v0           #activity:Landroid/app/Activity;
    :pswitch_21
    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_3

    .line 908
    const-string v3, "mediarefs"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 910
    .local v2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->postPhotos(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 916
    .end local v2           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :pswitch_2f
    const-string v3, "audience"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 918
    .local v1, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;

    invoke-direct {v4, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 895
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_2f
        :pswitch_21
    .end packed-switch
.end method

.method public onAvatarClicked(Ljava/lang/String;)V
    .registers 5
    .parameter "gaiaId"

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivity(Landroid/content/Intent;)V

    .line 1180
    return-void
.end method

.method public onCommentEditComplete(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "commentId"
    .parameter "comment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p3, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 957
    :cond_a
    :goto_a
    return-void

    .line 954
    :cond_b
    const v0, 0x7f0803f6

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showProgressDialog(I)V

    .line 955
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-static {v3}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 522
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/EventActiveState;->expanded:Z

    .line 526
    if-eqz p1, :cond_ca

    .line 527
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    .line 528
    const-string v0, "ownerid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    .line 529
    const-string v0, "typeid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    .line 530
    const-string v0, "invitation_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;

    .line 531
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z

    .line 532
    const-string v0, "scroll_pos"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSavedScrollPos:I

    .line 533
    const-string v0, "first_timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFirstActivityTimestamp:J

    .line 534
    const-string v0, "fetch_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 535
    const-string v0, "fetch_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 537
    :cond_58
    const-string v0, "comment_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 538
    const-string v0, "comment_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    .line 540
    :cond_6c
    const-string v0, "new_photo_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 541
    const-string v0, "new_photo_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    .line 544
    :cond_80
    const-string v0, "invite_more_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 545
    const-string v0, "invite_more_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    .line 548
    :cond_94
    const-string v0, "delete_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 549
    const-string v0, "delete_req_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    .line 551
    :cond_a8
    const-string v0, "abuse_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 552
    const-string v0, "abuse_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 556
    :cond_bc
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/fragments/EventActiveState;->expanded:Z

    .line 558
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->invalidateActionBar()V

    .line 563
    :goto_c9
    return-void

    .line 560
    :cond_ca
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z

    goto :goto_c9
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .parameter "loaderId"
    .parameter "bundle"
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
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, returnLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 623
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_1a

    .line 645
    :goto_8
    return-object v1

    .line 625
    :pswitch_9
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$3;

    .end local v1           #returnLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/content/Context;)V

    .line 632
    .restart local v1       #returnLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    goto :goto_8

    .line 635
    :pswitch_11
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;

    .end local v1           #returnLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/content/Context;)V

    .restart local v1       #returnLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    goto :goto_8

    .line 623
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 579
    const v0, 0x7f03005b

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v7

    .line 581
    .local v7, view:Landroid/view/View;
    const v0, 0x7f09013f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 582
    new-instance v0, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter$ViewUseListener;Lcom/google/android/apps/plus/views/EventActionListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsCallbacks:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    invoke-virtual {v0, v1, v8, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 586
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 587
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 589
    sget v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNextPagePreloadTriggerRows:I

    if-nez v0, :cond_59

    .line 590
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v6

    .line 591
    .local v6, screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v0, v6, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_5d

    .line 592
    const/16 v0, 0x8

    sput v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNextPagePreloadTriggerRows:I

    .line 598
    .end local v6           #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_59
    :goto_59
    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateView(Landroid/view/View;)V

    .line 599
    return-object v7

    .line 594
    .restart local v6       #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_5d
    const/16 v0, 0x10

    sput v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNextPagePreloadTriggerRows:I

    goto :goto_59
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1640
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1644
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1636
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .parameter "args"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1625
    const-string v0, "dialog_photo_sync"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1626
    invoke-direct {p0, v1, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->turnOnInstantShare(ZZ)V

    .line 1632
    :cond_c
    :goto_c
    return-void

    .line 1627
    :cond_d
    const-string v0, "report_event"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1628
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->reportActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 1630
    const v0, 0x7f0802c9

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showProgressDialog(I)V

    goto :goto_c
.end method

.method public onExpansionToggled(Z)V
    .registers 3
    .parameter "expanded"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iput-boolean p1, v0, Lcom/google/android/apps/plus/fragments/EventActiveState;->expanded:Z

    .line 1649
    return-void
.end method

.method public onHangoutClicked()V
    .registers 4

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

    if-eqz v0, :cond_15

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getEventHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivity(Landroid/content/Intent;)V

    .line 1164
    :cond_15
    return-void
.end method

.method public onInstantShareToggle(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 1212
    if-eqz p1, :cond_1f

    .line 1213
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isInstantUploadSyncEnabled()Z

    move-result v0

    .line 1214
    .local v0, iuSyncEnabled:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 1217
    .local v1, masterSyncEnabled:Z
    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 1218
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showCheckinDialog()V

    .line 1233
    .end local v0           #iuSyncEnabled:Z
    .end local v1           #masterSyncEnabled:Z
    :goto_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHasUserInteracted:Z

    .line 1234
    return-void

    .line 1221
    .restart local v0       #iuSyncEnabled:Z
    .restart local v1       #masterSyncEnabled:Z
    :cond_15
    if-nez v1, :cond_1b

    .line 1223
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showMasterSyncDisabledDialog()V

    goto :goto_11

    .line 1226
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->showEnablePhotoSyncDialog()V

    goto :goto_11

    .line 1230
    .end local v0           #iuSyncEnabled:Z
    .end local v1           #masterSyncEnabled:Z
    :cond_1f
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->toggleInstantShare(Z)V

    goto :goto_11
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 13
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
    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 650
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    const-string v3, "HEF"

    const-string v4, "OLF"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->checkPartitions(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    .line 718
    :cond_15
    :goto_15
    return-void

    .line 654
    :pswitch_16
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPreloadRequested:Z

    .line 655
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventLoaded:Z

    .line 656
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 657
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 659
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateActiveEventState(Lcom/google/api/services/plusi/model/PlusEvent;)V

    .line 662
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v2, v2, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v2, v2, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    if-eqz v2, :cond_44

    .line 663
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onInstantShareToggle(Z)V

    .line 666
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->changeInfoCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/fragments/EventActiveState;)V

    .line 671
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSavedScrollPos:I

    if-eq v2, v8, :cond_64

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->isWrapContentEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 673
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSavedScrollPos:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelection(I)V

    .line 674
    iput v8, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSavedScrollPos:I

    .line 676
    :cond_64
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPollingToken:Ljava/lang/String;

    .line 677
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mResumeToken:Ljava/lang/String;

    .line 678
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    .line 679
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->invalidateActionBar()V

    .line 681
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z

    if-eqz v2, :cond_82

    .line 682
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->fetchData()V

    .line 698
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateView(Landroid/view/View;)V

    goto :goto_15

    .line 685
    :cond_8a
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    invoke-virtual {v2, v7, v3}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->changeInfoCursor(Landroid/database/Cursor;Lcom/google/android/apps/plus/fragments/EventActiveState;)V

    .line 688
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGhostEvent:Z

    if-eqz v2, :cond_9e

    .line 689
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 690
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventLoaded:Z

    .line 691
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 692
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mError:Z

    goto :goto_82

    .line 694
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->fetchData()V

    goto :goto_82

    .line 702
    :pswitch_a2
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->changeActivityCursor(Landroid/database/Cursor;)V

    .line 704
    if-nez p2, :cond_af

    .line 705
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFirstActivityTimestamp:J

    goto/16 :goto_15

    .line 706
    :cond_af
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 709
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 710
    .local v0, firstTimestamp:J
    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFirstActivityTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 711
    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFirstActivityTimestamp:J

    .line 712
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionToTop()V

    goto/16 :goto_15

    .line 652
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_16
        :pswitch_a2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 851
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onLocationClicked()V
    .registers 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    if-eqz v0, :cond_11

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/MapUtils;->showDrivingDirections(Landroid/content/Context;Lcom/google/api/services/plusi/model/Place;)V

    .line 1157
    :cond_11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 816
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_2c

    .line 837
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 818
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getEditEventActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 820
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 824
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_20
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->deleteEvent()V

    goto :goto_9

    .line 828
    :sswitch_24
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->inviteMore()V

    goto :goto_9

    .line 832
    :sswitch_28
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->doReportActivity()V

    goto :goto_9

    .line 816
    :sswitch_data_2c
    .sparse-switch
        0x7f0902cc -> :sswitch_24
        0x7f0902e7 -> :sswitch_28
        0x7f0902ed -> :sswitch_a
        0x7f0902ee -> :sswitch_20
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 395
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 396
    return-void
.end method

.method public onPhotoClicked(Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;Ljava/lang/String;)V
    .registers 8
    .parameter "photo"
    .parameter "gaiaId"

    .prologue
    const v4, 0x7f0803d4

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 1436
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1438
    iget-object v3, p1, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->id:Ljava/lang/String;

    if-eqz v3, :cond_45

    .line 1439
    iget-object v3, p1, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1440
    .local v1, photoId:J
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    :goto_26
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1442
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1443
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1444
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setEventId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1452
    .end local v1           #photoId:J
    :goto_38
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivity(Landroid/content/Intent;)V

    .line 1453
    return-void

    .line 1440
    .restart local v1       #photoId:J
    :cond_40
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    .line 1448
    .end local v1           #photoId:J
    :cond_45
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->name:Ljava/lang/String;

    :goto_4f
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1450
    iget-object v3, p1, Lcom/google/android/apps/plus/content/EsEventData$EventPhoto;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    goto :goto_38

    .line 1448
    :cond_58
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4f
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 5
    .parameter "actionBar"

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 605
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 607
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->isEventPostable(Lcom/google/api/services/plusi/model/PlusEvent;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 608
    const/4 v0, 0x0

    const v1, 0x7f020196

    const v2, 0x7f080150

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 611
    const/4 v0, 0x1

    const v1, 0x7f020195

    const v2, 0x7f080151

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 615
    :cond_26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->updateProgressIndicator()V

    .line 616
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 788
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 790
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_74

    move v0, v2

    .line 792
    .local v0, isOwner:Z
    :goto_1c
    if-eqz v0, :cond_32

    .line 793
    const v3, 0x7f0902ed

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 794
    const v3, 0x7f0902ee

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 797
    :cond_32
    if-nez v0, :cond_3d

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mActivityId:Ljava/lang/String;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v3, :cond_3d

    move v1, v2

    .line 802
    .local v1, isReportAbuseVisible:Z
    :cond_3d
    if-nez v0, :cond_5d

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/PlusEvent;->eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/EventOptions;->openEventAcl:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 806
    :cond_5d
    const v3, 0x7f0902cc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    :cond_67
    if-eqz v1, :cond_73

    .line 810
    const v3, 0x7f0902e7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    :cond_73
    return-void

    .end local v0           #isOwner:Z
    .end local v1           #isReportAbuseVisible:Z
    :cond_74
    move v0, v1

    .line 790
    goto :goto_1c
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 400
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 401
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 403
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    const-string v3, "HEF"

    const-string v4, "OR"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->checkPartitions(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_37

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_37

    .line 407
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 408
    .local v1, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleGetEventUpdatesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 409
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    .line 413
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_37
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_5c

    .line 414
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 415
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 416
    .restart local v1       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleCreateCommentComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 417
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    .line 421
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_5c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_8e

    .line 422
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 423
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 424
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 425
    .restart local v1       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, photoLocation:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleNewPhotoComplete(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V

    .line 427
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    .line 431
    .end local v0           #photoLocation:Ljava/lang/String;
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_8e
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_b3

    .line 432
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 433
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 434
    .restart local v1       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleInviteMoreComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 435
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    .line 439
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_b3
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_d8

    .line 440
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v2

    if-nez v2, :cond_d8

    .line 441
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 442
    .restart local v1       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleReportEventCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 443
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 447
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 449
    return-void
.end method

.method public onRsvpChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "rsvpType"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->getRsvpType(Lcom/google/api/services/plusi/model/PlusEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService;->sendEventRsvp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mHasUserInteracted:Z

    .line 1150
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 484
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "ownerid"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "typeid"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "invitation_token"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "refresh"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v1, v1, Lcom/google/android/apps/plus/fragments/EventActiveState;->expanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    const-string v0, "first_timestamp"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFirstActivityTimestamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 491
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v0, :cond_45

    .line 492
    const-string v0, "scroll_pos"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_54

    .line 495
    const-string v0, "fetch_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mFetchReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    :cond_54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_63

    .line 498
    const-string v0, "comment_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mCommentReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    :cond_63
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_72

    .line 501
    const-string v0, "new_photo_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNewPhotoReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_81

    .line 505
    const-string v0, "invite_more_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInviteReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    :cond_81
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_90

    .line 509
    const-string v0, "delete_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mDeleteReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    :cond_90
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_9f

    .line 513
    const-string v0, "abuse_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    :cond_9f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    const-string v1, "HEF"

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->checkPartitions(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 471
    const-string v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    .line 472
    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    .line 473
    const-string v0, "invitation_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;

    .line 474
    const-string v0, "notif_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    .line 475
    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mTypeId:Ljava/lang/String;

    .line 478
    :cond_30
    return-void
.end method

.method public onUpdateCardClicked(Lcom/google/android/apps/plus/views/EventUpdate;)V
    .registers 5
    .parameter "update"

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1655
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "update_card"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1663
    :goto_c
    return-void

    .line 1659
    :cond_d
    invoke-static {}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->newInstance()Lcom/google/android/apps/plus/fragments/EventUpdateDialog;

    move-result-object v0

    .line 1660
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/EventUpdateDialog;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->setUpdate(Lcom/google/android/apps/plus/views/EventUpdate;)V

    .line 1661
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1662
    const-string v2, "update_card"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EventUpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onViewAllInviteesClicked()V
    .registers 5

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getEventInviteeListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->startActivity(Landroid/content/Intent;)V

    .line 1171
    return-void
.end method

.method public onViewUsed(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPreloadRequested:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mResumeToken:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mError:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-nez v0, :cond_11

    .line 729
    :cond_10
    :goto_10
    return-void

    .line 726
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EventDetailsActivityAdapter;->getCount()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNextPagePreloadTriggerRows:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_10

    .line 727
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->prefetchContent()V

    goto :goto_10
.end method

.method protected prefetchContent()V
    .registers 3

    .prologue
    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mPreloadRequested:Z

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->post(Ljava/lang/Runnable;)Z

    .line 744
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 1137
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->EVENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 1138
    return-void
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 1131
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->refresh()V

    .line 1132
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->fetchData()V

    .line 1133
    return-void
.end method
