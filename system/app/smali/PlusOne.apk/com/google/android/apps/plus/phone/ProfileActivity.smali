.class public Lcom/google/android/apps/plus/phone/ProfileActivity;
.super Lcom/google/android/apps/plus/fragments/EsTabActivity;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
.implements Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;
.implements Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;,
        Lcom/google/android/apps/plus/phone/ProfileActivity$PlusOneDataLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsTabActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;",
        "Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;",
        "Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;"
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBlockInProgress:Z

.field private mBlocked:Z

.field private final mContactAttributesLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private mIsHermesEnabled:Z

.field private mNewConversationRequested:Z

.field private mPackedCircleIds:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field private mPlusOneByMe:Z

.field private mPlusOneDataLoaded:Z

.field private mPlusOneId:Ljava/lang/String;

.field private mPlusOneRequestId:Ljava/lang/Integer;

.field private mProfileCallRequested:Z

.field private mProfileType:I

.field private mReportAbuseRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mUserDataLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "profile_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/ProfileActivity;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, -0x1

    const v1, 0x7f0d005f

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;-><init>(II)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mIsHermesEnabled:Z

    .line 118
    new-instance v0, Lcom/google/android/apps/plus/phone/ProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$1;-><init>(Lcom/google/android/apps/plus/phone/ProfileActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 926
    new-instance v0, Lcom/google/android/apps/plus/phone/ProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$2;-><init>(Lcom/google/android/apps/plus/phone/ProfileActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mContactAttributesLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 149
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/phone/ProfileActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mIsHermesEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/ProfileActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    return-void
.end method

.method private createPlusOne()V
    .registers 4

    .prologue
    .line 775
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 776
    .local v0, gaiaId:J
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->isProfilePlusOnePending(J)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 777
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->createProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 779
    :cond_1a
    return-void
.end method

.method private deletePlusOne()V
    .registers 7

    .prologue
    .line 785
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 786
    .local v0, gaiaId:J
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->isProfilePlusOnePending(J)Z

    move-result v2

    if-nez v2, :cond_22

    .line 787
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneId:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->deleteProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 790
    :cond_22
    return-void
.end method

.method private isHermesEnabled()Z
    .registers 3

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mIsHermesEnabled:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isMyProfile()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private isNewConversationEnabled()Z
    .registers 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isMyProfile()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPlusOneEnabled()Z
    .registers 2

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneDataLoaded:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneByMe:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isPlusPage()Z
    .registers 3

    .prologue
    .line 869
    iget v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isRemovePlusOneEnabled()Z
    .registers 2

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneDataLoaded:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneByMe:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private onUserDataChange()V
    .registers 5

    .prologue
    .line 689
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 705
    :goto_4
    return-void

    .line 695
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    .line 696
    .local v0, aboutFragment:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
    if-eqz v0, :cond_17

    .line 697
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPackedCircleIds:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setUserData(Ljava/lang/String;ZZ)V

    .line 700
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_21

    .line 701
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->invalidateOptionsMenu()V

    goto :goto_4

    .line 703
    :cond_21
    const v1, 0x7f10001b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createTitlebarButtons(I)V

    goto :goto_4
.end method

.method private selectRequestedTab()V
    .registers 5

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, tab:Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, selectedTab:I
    if-eqz v1, :cond_16

    .line 242
    const-string v2, "about"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 243
    const/4 v0, 0x0

    .line 250
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->selectTab(I)V

    .line 251
    return-void

    .line 244
    :cond_1a
    const-string v2, "posts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 245
    const/4 v0, 0x1

    goto :goto_16

    .line 246
    :cond_24
    const-string v2, "photos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 247
    const/4 v0, 0x2

    goto :goto_16
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .registers 6
    .parameter "displayName"

    .prologue
    const/4 v3, 0x0

    .line 653
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 655
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2f

    .line 656
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    :goto_10
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    .line 662
    .local v0, photosFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
    if-eqz v0, :cond_1c

    .line 663
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->setDisplayName(Ljava/lang/String;)V

    .line 666
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mNewConversationRequested:Z

    if-eqz v1, :cond_25

    .line 667
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mNewConversationRequested:Z

    .line 668
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startNewConversation()V

    .line 670
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileCallRequested:Z

    if-eqz v1, :cond_2e

    .line 671
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileCallRequested:Z

    .line 672
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startHermesActivity()V

    .line 674
    :cond_2e
    return-void

    .line 658
    .end local v0           #photosFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
    :cond_2f
    const v1, 0x7f020093

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_10
.end method

.method private setPersonBlocked(Z)V
    .registers 5
    .parameter "blocked"

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v2

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/android/apps/plus/fragments/BlockFragment;->startBlock(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZ)V

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    .line 752
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    .line 753
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "labelResId"

    .prologue
    .line 796
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 799
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method private startHermesActivity()V
    .registers 6

    .prologue
    .line 573
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 574
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileCallRequested:Z

    .line 584
    :cond_7
    :goto_7
    return-void

    .line 578
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 579
    .local v0, gaiaId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    .line 583
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getHermesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method private startNewConversation()V
    .registers 7

    .prologue
    .line 548
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 549
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mNewConversationRequested:Z

    .line 570
    :cond_7
    :goto_7
    return-void

    .line 553
    :cond_8
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 554
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v3

    .line 555
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 556
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 557
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 565
    :goto_29
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 567
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/ProfileActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 568
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 559
    :cond_41
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v1

    .line 560
    .local v1, gaiaId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_7

    .line 563
    invoke-virtual {v3, v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_29
.end method

.method private updateViewVisibility()V
    .registers 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    .line 398
    return-void
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setPersonBlocked(Z)V

    .line 739
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isMyProfile()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->MY_PROFILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PROFILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_8
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    :goto_6
    return-void

    .line 539
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isMyProfile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 540
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 541
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 544
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->finish()V

    goto :goto_6
.end method

.method protected handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 847
    :cond_c
    :goto_c
    return-void

    .line 842
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 844
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 845
    const v0, 0x7f070163

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_e

    .line 832
    :cond_d
    :goto_d
    return-void

    .line 819
    :cond_e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 821
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 823
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_22

    .line 824
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 827
    :cond_22
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 828
    const v1, 0x7f070163

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 830
    :cond_35
    const v1, 0x7f070219

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method public isMyProfile()Z
    .registers 5

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 258
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    if-eqz v0, :cond_c

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    .line 260
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    .line 266
    :cond_b
    :goto_b
    return-void

    .line 261
    :cond_c
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    if-eqz v0, :cond_15

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_b

    .line 263
    :cond_15
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    if-eqz v0, :cond_b

    .line 264
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_b
.end method

.method public onBlockCompleted(Z)V
    .registers 3
    .parameter "success"

    .prologue
    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    .line 808
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->updateViewVisibility()V

    .line 809
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 156
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    if-eqz p1, :cond_ec

    .line 159
    const-string v6, "data_loaded"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    .line 160
    const-string v6, "display_name"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 161
    const-string v6, "circle_ids"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPackedCircleIds:Ljava/lang/String;

    .line 162
    const-string v6, "profile_type"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileType:I

    .line 163
    const-string v6, "blocked"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    .line 164
    const-string v6, "person_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    .line 165
    const-string v6, "block_in_progress"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 166
    const-string v6, "block_in_progress"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    .line 168
    :cond_49
    const-string v6, "report_abuse_req_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 169
    const-string v6, "report_abuse_req_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 171
    :cond_5d
    const-string v6, "plus_one_req_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 172
    const-string v6, "plus_one_req_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 174
    :cond_71
    const-string v6, "plusone_loaded"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneDataLoaded:Z

    .line 175
    const-string v6, "plusone_by_me"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneByMe:Z

    .line 176
    const-string v6, "plus_one_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneId:Ljava/lang/String;

    .line 189
    :cond_89
    :goto_89
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "person_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, personId:Ljava/lang/String;
    if-eqz v4, :cond_97

    .line 191
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    .line 194
    :cond_97
    const v6, 0x7f030078

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setContentView(I)V

    .line 196
    const v6, 0x7f0d0149

    const v7, 0x7f0d014a

    invoke-virtual {p0, v9, v6, v7}, Lcom/google/android/apps/plus/phone/ProfileActivity;->addTab(III)V

    .line 197
    const v6, 0x7f0d005d

    const v7, 0x7f0d0061

    invoke-virtual {p0, v8, v6, v7}, Lcom/google/android/apps/plus/phone/ProfileActivity;->addTab(III)V

    .line 198
    const v6, 0x7f0d005e

    const v7, 0x7f0d0062

    invoke-virtual {p0, v11, v6, v7}, Lcom/google/android/apps/plus/phone/ProfileActivity;->addTab(III)V

    .line 200
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_10d

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 203
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_c5
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setDisplayName(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    .line 218
    .local v2, loaderManager:Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v2, v9, v10, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 219
    invoke-virtual {v2, v8, v10, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v1, args:Landroid/os/Bundle;
    const-string v6, "person_id"

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mContactAttributesLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v11, v1, v6}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->selectRequestedTab()V

    .line 225
    return-void

    .line 178
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #loaderManager:Landroid/support/v4/app/LoaderManager;
    .end local v4           #personId:Ljava/lang/String;
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "notif_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "notif_read"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 181
    .local v5, read:Z
    if-eqz v3, :cond_89

    if-nez v5, :cond_89

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-static {p0, v6, v3}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    goto/16 :goto_89

    .line 207
    .end local v3           #notificationId:Ljava/lang/String;
    .end local v5           #read:Z
    .restart local v4       #personId:Ljava/lang/String;
    :cond_10d
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/ProfileActivity;->showTitlebar(Z)V

    .line 208
    const v6, 0x7f020093

    invoke-virtual {p0, v6, v10}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 211
    const v6, 0x7f10001b

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createTitlebarButtons(I)V

    goto :goto_c5
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
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

    .line 591
    packed-switch p1, :pswitch_data_30

    move-object v0, v6

    .line 604
    :goto_5
    return-object v0

    .line 593
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/ProfileActivity;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v4, "person_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    aput-object v7, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 600
    :pswitch_23
    new-instance v0, Lcom/google/android/apps/plus/phone/ProfileActivity$PlusOneDataLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/phone/ProfileActivity$PlusOneDataLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_5

    .line 591
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateTab(I)Landroid/support/v4/app/Fragment;
    .registers 14
    .parameter "tabId"

    .prologue
    const/4 v3, 0x0

    .line 352
    packed-switch p1, :pswitch_data_4a

    move-object v7, v3

    .line 373
    :goto_5
    return-object v7

    .line 354
    :pswitch_6
    new-instance v7, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;-><init>(Ljava/lang/String;)V

    .line 355
    .local v7, aboutFragment:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    goto :goto_5

    .line 359
    .end local v7           #aboutFragment:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v8

    .line 360
    .local v8, gaiaId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getStreamFragmentIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Landroid/content/Intent;

    move-result-object v10

    .line 362
    .local v10, intent:Landroid/content/Intent;
    new-instance v7, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v0, 0x1

    invoke-direct {v7, v10, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;-><init>(Landroid/content/Intent;Z)V

    goto :goto_5

    .line 365
    .end local v8           #gaiaId:J
    .end local v10           #intent:Landroid/content/Intent;
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v8

    .line 366
    .restart local v8       #gaiaId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-static {p0, v0, v8, v9}, Lcom/google/android/apps/plus/phone/Intents;->getProfilePhotosIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v10

    .line 367
    .restart local v10       #intent:Landroid/content/Intent;
    new-instance v11, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-direct {v11, v10}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;-><init>(Landroid/content/Intent;)V

    .line 368
    .local v11, photosFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->setDisplayName(Ljava/lang/String;)V

    move-object v7, v11

    .line 369
    goto :goto_5

    .line 352
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
        :pswitch_2f
    .end packed-switch
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 612
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_80

    .line 650
    :cond_9
    :goto_9
    return-void

    .line 614
    :pswitch_a
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    .line 615
    if-eqz p2, :cond_37

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 616
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setDisplayName(Ljava/lang/String;)V

    .line 617
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPackedCircleIds:Ljava/lang/String;

    .line 618
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_35

    :goto_28
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    .line 619
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileType:I

    .line 620
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    goto :goto_9

    :cond_35
    move v3, v4

    .line 618
    goto :goto_28

    .line 622
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {p0, v3, v5, v4}, Lcom/google/android/apps/plus/service/EsService;->getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    goto :goto_9

    .line 628
    :pswitch_41
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneDataLoaded:Z

    .line 629
    if-nez p2, :cond_50

    .line 630
    const v3, 0x7f070264

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 633
    :cond_50
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 634
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 636
    .local v2, proto:[B
    :try_start_5a
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    .line 637
    .local v1, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneId:Ljava/lang/String;

    .line 638
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneByMe:Z
    :try_end_6a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_6a} :catch_6e

    .line 644
    .end local v1           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onUserDataChange()V

    goto :goto_9

    .line 639
    :catch_6e
    move-exception v0

    .line 640
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "ProfileActivity"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 641
    const-string v3, "ProfileActivity"

    const-string v4, "Invalid +1 data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 612
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_a
        :pswitch_41
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 855
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 469
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e

    .line 518
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 471
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 476
    :sswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startNewConversation()V

    goto :goto_9

    .line 481
    :sswitch_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->startHermesActivity()V

    goto :goto_9

    .line 486
    :sswitch_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->refresh()V

    goto :goto_9

    .line 491
    :sswitch_1e
    new-instance v1, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "block_person"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    .line 497
    :sswitch_31
    new-instance v1, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "unblock_person"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    .line 503
    :sswitch_46
    new-instance v1, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "report_abuse"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9

    .line 508
    :sswitch_55
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createPlusOne()V

    goto :goto_9

    .line 513
    :sswitch_59
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->deletePlusOne()V

    goto :goto_9

    .line 469
    nop

    :sswitch_data_5e
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b4 -> :sswitch_1a
        0x7f0d01ba -> :sswitch_12
        0x7f0d01be -> :sswitch_55
        0x7f0d01bf -> :sswitch_59
        0x7f0d01f0 -> :sswitch_16
        0x7f0d01f1 -> :sswitch_1e
        0x7f0d01f2 -> :sswitch_31
        0x7f0d01f3 -> :sswitch_46
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 332
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const v7, 0x7f0d01ba

    const v6, 0x7f0d01f2

    const v5, 0x7f0d01f1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_bb

    .line 416
    const v1, 0x7f0d01be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusOneEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 417
    const v1, 0x7f0d01bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isRemovePlusOneEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isNewConversationEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    const v1, 0x7f0d01f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isHermesEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 427
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isMyProfile()Z

    move-result v0

    .line 428
    .local v0, isMyProfile:Z
    const v1, 0x7f0d01b4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_e2

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v1, :cond_e2

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    if-nez v1, :cond_e2

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v1, :cond_e2

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    if-nez v1, :cond_e2

    move v1, v2

    :goto_6b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_e4

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v1, :cond_e4

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v1, :cond_e4

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    if-eqz v1, :cond_e4

    move v1, v2

    :goto_85
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    const v1, 0x7f0d01f3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_e6

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    if-eqz v4, :cond_e6

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v4, :cond_e6

    :goto_99
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 439
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f070201

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 440
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f070202

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 446
    :goto_b6
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 421
    .end local v0           #isMyProfile:Z
    :cond_bb
    const v1, 0x7f0d01be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    const v1, 0x7f0d01bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    const v1, 0x7f0d01f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_46

    .restart local v0       #isMyProfile:Z
    :cond_e2
    move v1, v3

    .line 429
    goto :goto_6b

    :cond_e4
    move v1, v3

    .line 432
    goto :goto_85

    :cond_e6
    move v2, v3

    .line 435
    goto :goto_99

    .line 442
    :cond_e8
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0701ff

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 443
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f070200

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_b6
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 454
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 455
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_12
    const v1, 0x7f0d01be

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusOneEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    const v1, 0x7f0d01bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isRemovePlusOneEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 460
    const v1, 0x7f0d01ba

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isNewConversationEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    const v1, 0x7f0d01f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isHermesEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onResume()V

    .line 300
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_34

    .line 304
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 305
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 306
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 307
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 311
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_34
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_59

    .line 312
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_59

    .line 313
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 314
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 315
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 319
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_59
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->updateViewVisibility()V

    .line 323
    :goto_5c
    return-void

    .line 321
    :cond_5d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->finish()V

    goto :goto_5c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "data_loaded"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mUserDataLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v0, "display_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "circle_ids"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "profile_type"

    iget v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mProfileType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v0, "blocked"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string v0, "person_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    if-eqz v0, :cond_38

    .line 281
    const-string v0, "block_in_progress"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mBlockInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    :cond_38
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_47

    .line 284
    const-string v0, "report_abuse_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_56

    .line 287
    const-string v0, "plus_one_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    :cond_56
    const-string v0, "plusone_loaded"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneDataLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v0, "plusone_by_me"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneByMe:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const-string v0, "plus_one_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPlusOneId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected onTabDeselected(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 391
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    if-eqz p2, :cond_a

    .line 392
    check-cast p2, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->deactivate()V

    .line 394
    :cond_a
    return-void
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 381
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 382
    check-cast p2, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->activate()V

    .line 384
    :cond_8
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 529
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 681
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->refresh()V

    .line 683
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->isPlusPage()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 684
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getProfilePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 686
    :cond_16
    return-void
.end method

.method public reportAbuse(I)V
    .registers 7
    .parameter "abuseType"

    .prologue
    .line 759
    const/4 v1, 0x4

    if-ne p1, v1, :cond_27

    .line 760
    const v1, 0x7f070212

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07021b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 764
    .local v0, warning:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_warning"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 769
    .end local v0           #warning:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_26
    return-void

    .line 766
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    invoke-static {p0, v1, v2, p1}, Lcom/google/android/apps/plus/service/EsService;->reportAbuse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 767
    const v1, 0x7f07021a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->showProgressDialog(I)V

    goto :goto_26
.end method

.method public selectTab(I)V
    .registers 3
    .parameter "tabId"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity;->mPersonId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 343
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->selectTab(I)V

    .line 345
    :cond_7
    return-void
.end method

.method public unblockPerson(Ljava/lang/String;)V
    .registers 3
    .parameter "personId"

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActivity;->setPersonBlocked(Z)V

    .line 744
    return-void
.end method
