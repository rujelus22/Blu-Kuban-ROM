.class public Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "PhotosFromPhoneFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;
.implements Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;",
        "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;"
    }
.end annotation


# static fields
.field private static MODE_SELECT:I

.field private static MODE_VIEW:I


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionCallback:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mCancelSharingButton:Landroid/view/View;

.field private mInitiateSharingButton:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsRefreshing:Z

.field private mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mMode:I

.field private mPageable:Lcom/google/android/apps/plus/phone/Pageable;

.field private mPaused:Z

.field private mPendingCursor:Landroid/database/Cursor;

.field private mPhotoPicker:Z

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mSelectedMediaRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mStartSharingButton:Landroid/view/View;

.field private mUpdatedStream:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPaused:Z

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    .line 96
    sget v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    iput v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    .line 213
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->initiateSharing()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 56
    sget v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->restoreViewModeAndRefresh()V

    return-void
.end method

.method private deleteSelectedPhotos()V
    .registers 12

    .prologue
    .line 841
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v6, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 843
    .local v4, ownerId:J
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 844
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 845
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_35

    .line 846
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()J

    move-result-wide v4

    .line 852
    :cond_29
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 847
    :cond_35
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-eqz v7, :cond_29

    .line 849
    const-string v7, "PfpFragment"

    const-string v8, "Found a photo from phome which is not owned by the current user."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_44
    return-void

    .line 856
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0005

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, deletePendingTitle:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    .line 861
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "progress_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v7, v8, v9, v6, v10}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_44
.end method

.method private initiateSharing()V
    .registers 7

    .prologue
    .line 818
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 819
    .local v2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 820
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 821
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v3, result:Landroid/content/Intent;
    const-string v4, "mediarefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 823
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 824
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 835
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #result:Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 825
    :cond_23
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 826
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 827
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->startActivity(Landroid/content/Intent;)V

    .line 829
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v4, :cond_41

    .line 830
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 833
    :cond_41
    sget v4, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    goto :goto_22
.end method

.method private isChooserMode()Z
    .registers 3

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshStreamPhotos()V
    .registers 7

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "camera_sync_created"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 887
    const-string v0, "PfpFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 888
    const-string v0, "PfpFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshStreamPhotos reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_4a
    return-void
.end method

.method private restoreViewModeAndRefresh()V
    .registers 5

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 898
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_11

    .line 899
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 902
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v1, :cond_1a

    .line 903
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 906
    :cond_1a
    sget v1, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    .line 910
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 911
    return-void
.end method

.method private setMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 797
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    .line 799
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    if-ne v1, v2, :cond_1e

    .line 800
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 801
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->notifyDataSetChanged()V

    .line 808
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 810
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 812
    :cond_1d
    return-void

    .line 802
    .end local v0           #view:Landroid/view/View;
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    if-ne v1, v2, :cond_14

    .line 803
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 804
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_14
.end method

.method private updateViewFromMode(Landroid/view/View;)V
    .registers 18
    .parameter "view"

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-nez v11, :cond_9b

    const/4 v4, 0x0

    .line 715
    .local v4, c:Landroid/database/Cursor;
    :goto_7
    if-eqz v4, :cond_a7

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_a7

    const/4 v6, 0x1

    .line 716
    .local v6, hasResults:Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v11, :cond_1e

    if-nez v4, :cond_aa

    :cond_1e
    const/4 v8, 0x1

    .line 718
    .local v8, refreshInProgress:Z
    :goto_1f
    if-eqz v8, :cond_ad

    if-nez v6, :cond_ad

    .line 719
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 727
    :goto_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 732
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v12, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    if-ne v11, v12, :cond_bb

    .line 733
    const v10, 0x7f070071

    .line 734
    .local v10, title:I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-eqz v11, :cond_b9

    .line 735
    const v11, 0x7f07008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, subtitle:Ljava/lang/String;
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 754
    .local v3, activity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_ec

    .line 755
    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 756
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setTitle(I)V

    .line 757
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v11, :cond_6c

    .line 761
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 769
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_6c
    :goto_6c
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_78

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v11

    if-eqz v11, :cond_7e

    :cond_78
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-eqz v11, :cond_f4

    .line 770
    :cond_7e
    const v11, 0x7f0d012c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 771
    const v11, 0x7f0d0123

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :goto_9a
    return-void

    .line 714
    .end local v3           #activity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .end local v4           #c:Landroid/database/Cursor;
    .end local v6           #hasResults:Z
    .end local v8           #refreshInProgress:Z
    .end local v9           #subtitle:Ljava/lang/String;
    .end local v10           #title:I
    :cond_9b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_7

    .line 715
    .restart local v4       #c:Landroid/database/Cursor;
    :cond_a7
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 716
    .restart local v6       #hasResults:Z
    :cond_aa
    const/4 v8, 0x0

    goto/16 :goto_1f

    .line 721
    .restart local v8       #refreshInProgress:Z
    :cond_ad
    if-eqz v6, :cond_b4

    .line 722
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->showContent(Landroid/view/View;)V

    goto/16 :goto_26

    .line 724
    :cond_b4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->showEmptyView(Landroid/view/View;)V

    goto/16 :goto_26

    .line 737
    .restart local v10       #title:I
    :cond_b9
    const/4 v9, 0x0

    .restart local v9       #subtitle:Ljava/lang/String;
    goto :goto_49

    .line 740
    .end local v9           #subtitle:Ljava/lang/String;
    .end local v10           #title:I
    :cond_bb
    const v10, 0x7f070094

    .line 741
    .restart local v10       #title:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v7

    .line 743
    .local v7, quantity:I
    if-nez v7, :cond_d5

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070095

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #subtitle:Ljava/lang/String;
    goto/16 :goto_49

    .line 746
    .end local v9           #subtitle:Ljava/lang/String;
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0001

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v7, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #subtitle:Ljava/lang/String;
    goto/16 :goto_49

    .line 764
    .end local v7           #quantity:I
    .restart local v3       #activity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    :cond_ec
    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setTitle(I)V

    .line 765
    invoke-virtual {v3, v9}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 773
    :cond_f4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_124

    const/4 v5, 0x1

    .line 775
    .local v5, hasItemsSelected:Z
    :goto_ff
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v12, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    if-ne v11, v12, :cond_126

    .line 776
    const v11, 0x7f0d012c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 777
    const v11, 0x7f0d0123

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9a

    .line 773
    .end local v5           #hasItemsSelected:Z
    :cond_124
    const/4 v5, 0x0

    goto :goto_ff

    .line 779
    .restart local v5       #hasItemsSelected:Z
    :cond_126
    const v11, 0x7f0d012c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 780
    const v11, 0x7f0d0123

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 782
    const v11, 0x7f0d012f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ActionButton;

    .line 784
    .local v2, actionButton:Lcom/google/android/apps/plus/views/ActionButton;
    if-eqz v5, :cond_156

    const v11, 0x7f0f001d

    :goto_151
    invoke-virtual {v2, v3, v11}, Lcom/google/android/apps/plus/views/ActionButton;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_9a

    :cond_156
    const v11, 0x7f0f001e

    goto :goto_151
.end method


# virtual methods
.method public isSelected(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 637
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v1, :cond_f

    .line 638
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 640
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_16

    .line 659
    :cond_3
    :goto_3
    return-void

    .line 648
    :pswitch_4
    if-eqz p2, :cond_3

    .line 649
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 650
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 646
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 25
    .parameter "v"

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v3, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    if-ne v2, v3, :cond_a3

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mStartSharingButton:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 521
    sget v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    .line 576
    :cond_17
    :goto_17
    return-void

    .line 522
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_17

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/api/MediaRef;

    .line 525
    .local v12, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-eqz v2, :cond_58

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "allow_crop"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 528
    .local v19, allowCrop:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/api/MediaRef;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v12, v0}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v20

    .line 531
    .local v20, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    .line 533
    .end local v19           #allowCrop:Z
    .end local v20           #intent:Landroid/content/Intent;
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v21

    .local v21, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v18, v21

    .line 534
    check-cast v18, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;

    .line 535
    .local v18, albumLoader:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;
    if-nez v18, :cond_9e

    const/16 v17, -0x1

    .line 538
    .local v17, pageHint:I
    :goto_69
    const v2, 0x7f070071

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, albumName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhonePhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v20

    .line 547
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 535
    .end local v6           #albumName:Ljava/lang/String;
    .end local v17           #pageHint:I
    .end local v20           #intent:Landroid/content/Intent;
    :cond_9e
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getCurrentPage()I

    move-result v17

    goto :goto_69

    .line 550
    .end local v12           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v18           #albumLoader:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;
    .end local v21           #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    :cond_a3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v3, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    if-ne v2, v3, :cond_17

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mCancelSharingButton:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_cb

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_17

    .line 555
    :cond_c2
    sget v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    goto/16 :goto_17

    .line 557
    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mInitiateSharingButton:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_d8

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->initiateSharing()V

    goto/16 :goto_17

    .line 559
    :cond_d8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_17

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/api/MediaRef;

    .line 561
    .restart local v12       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 572
    :goto_fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->notifyDataSetChanged()V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    goto/16 :goto_17

    .line 564
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_142

    .line 565
    const v2, 0x7f0700fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 567
    .local v22, warning:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_17

    .line 570
    .end local v22           #warning:Ljava/lang/String;
    :cond_142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_fd
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 318
    if-eqz p1, :cond_72

    .line 319
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.apps.plus.PhotosFromPhoneFragment.INTENT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    .line 321
    const-string v2, "com.google.android.apps.plus.PhotosFromPhoneFragment.SELECTED_MEDIAREFS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 323
    .local v1, parcelables:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 324
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    aget-object v2, v1, v0

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 327
    :cond_2e
    const-string v2, "com.google.android.apps.plus.PhotosFromPhoneFragment.MODE"

    sget v5, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_VIEW:I

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    .line 339
    .end local v0           #i:I
    .end local v1           #parcelables:[Landroid/os/Parcelable;
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 341
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "photo_picker"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_97

    move v2, v3

    :goto_55
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    .line 344
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setHasOptionsMenu(Z)V

    .line 346
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_71

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-nez v2, :cond_71

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-nez v2, :cond_71

    .line 347
    new-instance v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

    .line 349
    :cond_71
    return-void

    .line 328
    :cond_72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 329
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "mediarefs"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 331
    .restart local v1       #parcelables:[Landroid/os/Parcelable;
    if-eqz v1, :cond_92

    .line 332
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_83
    array-length v2, v1

    if-ge v0, v2, :cond_92

    .line 333
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    aget-object v2, v1, v0

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 337
    .end local v0           #i:I
    :cond_92
    sget v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    iput v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    goto :goto_38

    .end local v1           #parcelables:[Landroid/os/Parcelable;
    :cond_97
    move v2, v4

    .line 341
    goto :goto_55
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter "id"
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
    const/4 v5, 0x2

    .line 427
    const-string v0, "PfpFragment"

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 428
    const-string v0, "PfpFragment"

    const-string v1, "onCreateLoader: id=%d bundle=%s thread=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2b
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xb

    .line 357
    const v2, 0x7f03006b

    invoke-super {p0, p1, p2, p3, v2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->setOnMeasuredListener(Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;)V

    .line 362
    new-instance v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 363
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_3b

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-nez v2, :cond_3b

    .line 365
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 367
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setIsSelectedListener(Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter$IsSelectedListener;)V

    .line 369
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/ViewUtils;->getListenerForSwitchToList(Landroid/widget/AbsListView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 374
    .local v0, switchToListListener:Landroid/view/View$OnFocusChangeListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_5b

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->isChooserMode()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 375
    :cond_5b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_72

    .line 376
    const v2, 0x7f0d012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mStartSharingButton:Landroid/view/View;

    .line 377
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mStartSharingButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mStartSharingButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 380
    :cond_72
    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mCancelSharingButton:Landroid/view/View;

    .line 381
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mCancelSharingButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mCancelSharingButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 383
    const v2, 0x7f0d012f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mInitiateSharingButton:Landroid/view/View;

    .line 384
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mInitiateSharingButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mInitiateSharingButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 388
    :cond_98
    const v2, 0x7f070076

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 392
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 393
    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 401
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    .line 402
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->clearLocalImageThumbnails()V

    .line 403
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 629
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 625
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 618
    const-string v0, "delete_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 619
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->deleteSelectedPhotos()V

    .line 621
    :cond_b
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 11
    .parameter
    .parameter "cursor"
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 439
    const-string v1, "PfpFragment"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 440
    const-string v1, "PfpFragment"

    const-string v2, "onLoadFinished: cursorLoader=%s cursor=%s thread=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_27
    instance-of v1, p1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;

    if-eqz v1, :cond_38

    .line 448
    check-cast p1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;

    .end local p1           #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    .line 449
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setPageableInput(Lcom/google/android/apps/plus/phone/Pageable;)V

    .line 452
    :cond_38
    const/4 v0, 0x0

    .line 453
    .local v0, needUpdate:Z
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    if-eqz v1, :cond_40

    .line 454
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    .line 455
    const/4 v0, 0x1

    .line 458
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->hasItemsPerRow()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 459
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 460
    const/4 v0, 0x1

    .line 465
    :goto_52
    if-eqz v0, :cond_5b

    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 469
    :cond_5b
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mUpdatedStream:Z

    if-nez v1, :cond_64

    .line 476
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->refreshStreamPhotos()V

    .line 477
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mUpdatedStream:Z

    .line 479
    :cond_64
    return-void

    .line 462
    :cond_65
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPendingCursor:Landroid/database/Cursor;

    goto :goto_52
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 7
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
    .local p1, cursorLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x2

    .line 486
    const-string v0, "PfpFragment"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 487
    const-string v0, "PfpFragment"

    const-string v1, "onLoaderReset: onLoadFinished cursorLoader=%s thread=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_24
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    sget v1, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    if-eq v0, v1, :cond_48

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPhotoPicker:Z

    if-nez v0, :cond_48

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

    if-eqz v0, :cond_2f

    .line 586
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 588
    :cond_2f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->notifyDataSetChanged()V

    .line 590
    sget v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->MODE_SELECT:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    .line 591
    const/4 v0, 0x1

    .line 594
    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public onMeasured(Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;)V
    .registers 5
    .parameter "listView"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListView:Landroid/widget/AbsListView;

    if-ne p1, v1, :cond_3e

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPaused:Z

    if-nez v1, :cond_3e

    .line 603
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->hasItemsPerRow()Z

    move-result v1

    if-nez v1, :cond_27

    .line 604
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 605
    .local v0, listPadding:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->calculateItemsPerRowAndSpacing(Landroid/content/Context;I)V

    .line 608
    .end local v0           #listPadding:I
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPendingCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3e

    .line 609
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPendingCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPendingCursor:Landroid/database/Cursor;

    .line 611
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 614
    :cond_3e
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPaused:Z

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 512
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 498
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPaused:Z

    .line 501
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setMode(I)V

    .line 502
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 410
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 411
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2b

    .line 412
    const-string v1, "com.google.android.apps.plus.PhotosFromPhoneFragment.INTENT"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 415
    .local v0, mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 416
    const-string v1, "com.google.android.apps.plus.PhotosFromPhoneFragment.SELECTED_MEDIAREFS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 418
    const-string v1, "com.google.android.apps.plus.PhotosFromPhoneFragment.MODE"

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    .end local v0           #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :cond_2b
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollDown()V
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/Pageable;->loadMore()V

    .line 669
    :cond_11
    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    .line 678
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->refreshStreamPhotos()V

    .line 679
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 680
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressBarView"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 689
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, myView:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 693
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V

    .line 695
    :cond_10
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 699
    if-nez p1, :cond_3

    .line 706
    :goto_2
    return-void

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z

    if-nez v0, :cond_15

    const/16 v0, 0x8

    :goto_11
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
