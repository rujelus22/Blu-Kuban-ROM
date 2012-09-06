.class public Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedHangoutFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$5;,
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;,
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;,
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$HangoutSuggestionsQuery;,
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleQuery;,
        Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;
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
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;"
    }
.end annotation


# static fields
.field private static final ACTIVE_HANGOUT_MODE_DEFAULT:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;


# instance fields
.field private displayedSuggestedParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

.field private mAudienceOverlay:Landroid/view/View;

.field protected mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field protected mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

.field private mCacheSuggestionsResponse:Z

.field private mCircleUsageType:I

.field private mFilterNullGaiaIds:Z

.field private mGridView:Landroid/widget/GridView;

.field private mIncludePhoneOnlyContacts:Z

.field private mIncludePlusPages:Z

.field private mListHeader:Landroid/widget/TextView;

.field private mListParent:Landroid/view/View;

.field private mPreviouslyAudienceEmpty:Z

.field private mPreviouslyOvercapacity:Z

.field private mPublicProfileSearchEnabled:Z

.field private mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;

.field private mRequestId:Ljava/lang/Integer;

.field private mResumeHangoutButton:Landroid/widget/Button;

.field private mRingBeforeDisable:Z

.field protected mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mShakeDetectorWasRunning:Z

.field private mShowSuggestedPeople:Z

.field private mStartHangoutButton:Landroid/widget/Button;

.field private mSuggestedPeople:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

.field private mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

.field private mSuggestedPeopleSize:I

.field private mToggleHangoutRingButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_DISABLE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->ACTIVE_HANGOUT_MODE_DEFAULT:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 105
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    .line 109
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;

    .line 114
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    .line 124
    sget-object v0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->ACTIVE_HANGOUT_MODE_DEFAULT:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    .line 127
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleSize:I

    .line 568
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyAudienceEmpty:Z

    .line 569
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyOvercapacity:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->updateSuggestedPeopleDisplay()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->disableHangoutRing(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyAudienceEmpty:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyAudienceEmpty:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyOvercapacity:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPreviouslyOvercapacity:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->enableHangoutRing(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isInAudience(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->toggleHangoutRing()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    if-eqz v0, :cond_10

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsAudienceData;->processSuggestionsResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    .line 262
    :cond_10
    return-void
.end method

.method private disableHangoutRing(ZZ)V
    .registers 5
    .parameter "overcapacity"
    .parameter "toast"

    .prologue
    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 656
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    const v1, 0x7f080463

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 658
    if-eqz p2, :cond_21

    .line 659
    if-eqz p1, :cond_22

    const v0, 0x7f080117

    :goto_1e
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->toast(I)V

    .line 662
    :cond_21
    return-void

    .line 659
    :cond_22
    const v0, 0x7f080116

    goto :goto_1e
.end method

.method private enableHangoutRing(Z)V
    .registers 4
    .parameter "toast"

    .prologue
    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 646
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    const v1, 0x7f080464

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 648
    if-eqz p1, :cond_1f

    .line 649
    const v0, 0x7f080115

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->toast(I)V

    .line 651
    :cond_1f
    return-void
.end method

.method private isInAudience(Ljava/lang/String;)Z
    .registers 8
    .parameter "participantId"

    .prologue
    .line 316
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 317
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, audiencePeople:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 319
    .local v3, audiencePerson:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v3}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantIdFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, audienceParticipantId:Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 323
    const/4 v5, 0x1

    .line 327
    .end local v1           #audienceParticipantId:Ljava/lang/String;
    .end local v3           #audiencePerson:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_27
    return v5

    :cond_28
    const/4 v5, 0x0

    goto :goto_27
.end method

.method private loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$Suggestion;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .line 246
    .local v3, suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getSuggestedUserList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 247
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeople:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 251
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v3           #suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->updateSuggestedPeopleDisplay()V

    .line 252
    return-void
.end method

.method private loadSuggestedPeopleFromCache()V
    .registers 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 269
    return-void
.end method

.method private resetViews()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mResumeHangoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    const v1, 0x7f080249

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    return-void
.end method

.method private toast(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, toastText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 667
    return-void
.end method

.method private toggleHangoutRing()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 634
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z

    if-eqz v0, :cond_a

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->disableHangoutRing(ZZ)V

    .line 641
    :cond_9
    :goto_9
    return-void

    .line 636
    :cond_a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->audienceSizeIsGreaterThan(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 637
    invoke-direct {p0, v1, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->disableHangoutRing(ZZ)V

    goto :goto_9

    .line 638
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isAudienceEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 639
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->enableHangoutRing(Z)V

    goto :goto_9
.end method

.method private updateSuggestedPeopleDisplay()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 276
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeople:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 278
    .local v9, suggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    const/4 v2, 0x0

    .line 279
    .local v2, found:Z
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->displayedSuggestedParticipants:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 280
    .local v0, audiencePerson:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, participantId:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 282
    const/4 v2, 0x1

    .line 287
    .end local v0           #audiencePerson:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v8           #participantId:Ljava/lang/String;
    :cond_36
    if-nez v2, :cond_8

    .line 288
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->displayedSuggestedParticipants:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_8

    .line 291
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 296
    .end local v2           #found:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #suggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_4f
    const/4 v5, 0x0

    .line 297
    .local v5, id:I
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleQuery;->columnNames:[Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 298
    .local v7, matrixCursor:Landroid/database/MatrixCursor;
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->displayedSuggestedParticipants:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 299
    .local v1, displayedSuggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    const/4 v10, 0x4

    new-array v13, v10, [Ljava/lang/Object;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #id:I
    .local v6, id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v12

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v11

    const/4 v10, 0x2

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v14, 0x3

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isInAudience(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_98

    move v10, v11

    :goto_8d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-virtual {v7, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move v5, v6

    .end local v6           #id:I
    .restart local v5       #id:I
    goto :goto_5d

    .end local v5           #id:I
    .restart local v6       #id:I
    :cond_98
    move v10, v12

    goto :goto_8d

    .line 305
    .end local v1           #displayedSuggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #id:I
    .restart local v5       #id:I
    :cond_9a
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10, v7}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 308
    iget v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleSize:I

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v11

    if-eq v10, v11, :cond_c4

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    if-ne v10, v11, :cond_c4

    .line 310
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v12, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 311
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v10

    iput v10, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleSize:I

    .line 313
    :cond_c4
    return-void
.end method

.method private viewUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 1016
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method


# virtual methods
.method public audienceSizeIsGreaterThan(I)Z
    .registers 11
    .parameter "size"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 782
    const/4 v3, 0x0

    .line 784
    .local v3, count:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 785
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-nez v0, :cond_d

    move v5, v6

    .line 808
    :cond_c
    :goto_c
    return v5

    .line 789
    :cond_d
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v7

    if-lez v7, :cond_18

    .line 790
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v7

    add-int/2addr v3, v7

    .line 793
    :cond_18
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 794
    .local v2, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    if-eqz v2, :cond_58

    .line 795
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 796
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    sget-object v8, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-eq v7, v8, :cond_c

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    sget-object v8, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-eq v7, v8, :cond_c

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    sget-object v8, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-eq v7, v8, :cond_c

    .line 802
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasSize()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v7

    if-lez v7, :cond_22

    .line 803
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_22

    .line 808
    .end local v1           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_58
    if-gt v3, p1, :cond_c

    move v5, v6

    goto :goto_c
.end method

.method public final getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method protected getSuggestedPeople()V
    .registers 5

    .prologue
    .line 670
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 671
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isAudienceEmpty()Z

    move-result v1

    .line 673
    .local v1, emptyAudience:Z
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    .line 674
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->requestSuggestedParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    .line 676
    if-eqz v1, :cond_21

    .line 679
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->loadSuggestedPeopleFromCache()V

    .line 681
    :cond_21
    return-void
.end method

.method public isAudienceEmpty()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 753
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 754
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-nez v0, :cond_b

    .line 770
    :cond_a
    :goto_a
    return v4

    .line 756
    :cond_b
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    if-lez v6, :cond_13

    move v4, v5

    .line 757
    goto :goto_a

    .line 759
    :cond_13
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 760
    .local v2, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    if-eqz v2, :cond_a

    .line 761
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 762
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasSize()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v6

    if-gtz v6, :cond_45

    :cond_35
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v6

    sget-object v7, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-eq v6, v7, :cond_45

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v6

    sget-object v7, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-ne v6, v7, :cond_1d

    :cond_45
    move v4, v5

    .line 765
    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 333
    if-nez p1, :cond_1c

    .line 334
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 335
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "audience"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 336
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz v0, :cond_1c

    .line 337
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 340
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 742
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 743
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 744
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 747
    :cond_12
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 852
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 835
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 836
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090069

    if-ne v0, v1, :cond_2e

    .line 728
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    .line 729
    .local v3, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f0802d4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCircleUsageType:I

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPublicProfileSearchEnabled:Z

    iget-boolean v8, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mFilterNullGaiaIds:Z

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 735
    .end local v3           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_2e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 465
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeople:Ljava/util/List;

    .line 466
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->displayedSuggestedParticipants:Ljava/util/List;

    .line 467
    if-eqz p1, :cond_51

    .line 468
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 469
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    .line 470
    const-string v1, "cache_suggestions_response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    .line 476
    :goto_31
    const-string v1, "show_suggested_people"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    .line 478
    const-string v1, "public_profile_search"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPublicProfileSearchEnabled:Z

    .line 480
    const-string v1, "phone_only_contacts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    .line 482
    const-string v1, "plus_pages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePlusPages:Z

    .line 486
    :cond_51
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setCirclesUsageType(I)V

    .line 487
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setIncludePhoneOnlyContacts(Z)V

    .line 488
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setIncludePlusPages(Z)V

    .line 489
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setPublicProfileSearchEnabled(Z)V

    .line 490
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setShowSuggestedPeople(Z)V

    .line 491
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setFilterNullGaiaIds(Z)V

    .line 493
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->ACTIVE_HANGOUT_MODE:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, activeHangoutMode:Ljava/lang/String;
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 495
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_DISABLE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    .line 503
    :goto_77
    return-void

    .line 473
    .end local v0           #activeHangoutMode:Ljava/lang/String;
    :cond_78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    .line 474
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    goto :goto_31

    .line 496
    .restart local v0       #activeHangoutMode:Ljava/lang/String;
    :cond_7e
    const-string v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 497
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_HIDE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    goto :goto_77

    .line 498
    :cond_8b
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 499
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->MODE_NONE:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    goto :goto_77

    .line 501
    :cond_98
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->ACTIVE_HANGOUT_MODE_DEFAULT:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    goto :goto_77
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
    const/4 v4, 0x0

    .line 873
    const-string v0, "HangoutFrag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 874
    const-string v0, "HangoutFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateLoader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_22
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3d

    .line 877
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->HANGOUT_SUGGESTIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 879
    .local v2, suggestionsUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$HangoutSuggestionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "sequence ASC"

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 884
    .end local v2           #suggestionsUri:Landroid/net/Uri;
    :goto_3c
    return-object v0

    :cond_3d
    move-object v0, v4

    goto :goto_3c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 511
    const v1, 0x7f03005d

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mGridView:Landroid/widget/GridView;

    .line 513
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

    .line 515
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    .line 516
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    .line 517
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 518
    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    .line 519
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    .line 522
    invoke-direct {p0, v4, v4}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->disableHangoutRing(ZZ)V

    .line 523
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    .line 531
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mResumeHangoutButton:Landroid/widget/Button;

    .line 543
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mResumeHangoutButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_af

    .line 560
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 562
    :cond_af
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 565
    return-object v0
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 866
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 719
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->onItemClick(I)V

    .line 720
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
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 893
    const-string v1, "HangoutFrag"

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 894
    const-string v1, "HangoutFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFinished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_26
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-ne v1, v4, :cond_63

    .line 898
    if-eqz p2, :cond_63

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 900
    :cond_34
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    .line 906
    .local v0, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeople:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_34

    .line 909
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->updateSuggestedPeopleDisplay()V

    .line 912
    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_63
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 920
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1002
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 1010
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 1004
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08046c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, helpUrlParam:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->viewUri(Landroid/net/Uri;)V

    .line 1007
    const/4 v1, 0x1

    goto :goto_b

    .line 1002
    :pswitch_data_24
    .packed-switch 0x7f0902ad
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 454
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    if-eqz v0, :cond_c

    .line 455
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 457
    :cond_c
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 845
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 3
    .parameter "actionBar"

    .prologue
    .line 994
    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(I)V

    .line 995
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 398
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 401
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->resetViews()V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mStartHangoutButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mToggleHangoutRingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mResumeHangoutButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    sget-object v1, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$5;->$SwitchMap$com$google$android$apps$plus$fragments$HostedHangoutFragment$ActiveHangoutMode:[I

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mActiveViewMode:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$ActiveHangoutMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a6

    .line 426
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_40

    .line 427
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 430
    :cond_40
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    if-eqz v1, :cond_49

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 433
    :cond_49
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_59

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 446
    :cond_59
    :goto_59
    return-void

    .line 411
    :pswitch_5a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    .line 416
    :pswitch_65
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    .line 437
    :cond_6b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v0

    .line 438
    .local v0, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 441
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 442
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    goto :goto_59

    .line 409
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_65
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 692
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 693
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 695
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 696
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const-string v0, "cache_suggestions_response"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCacheSuggestionsResponse:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 699
    :cond_22
    const-string v0, "show_suggested_people"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 700
    const-string v0, "public_profile_search"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    const-string v0, "phone_only_contacts"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 702
    const-string v0, "plus_pages"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePlusPages:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 703
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 821
    invoke-virtual {p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 822
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    :cond_10
    :goto_10
    return-void

    .line 824
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 347
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStart()V

    .line 348
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v1, :cond_c

    .line 349
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 353
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 354
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_1c

    .line 355
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShakeDetectorWasRunning:Z

    .line 357
    :cond_1c
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStart()V

    .line 365
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v1, :cond_c

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 370
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_1d

    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 372
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_1d

    .line 373
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 376
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_1d
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 3
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 859
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 573
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 574
    const v1, 0x7f090064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    .line 575
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 577
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0035

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 579
    .local v0, themeContext:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 581
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 582
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePlusPages:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 583
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 584
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCircleUsageType:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 585
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mFilterNullGaiaIds:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setFilterNullGaiaIds(Z)V

    .line 586
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 587
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 588
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 589
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 590
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;)V

    .line 592
    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 625
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    if-eqz v1, :cond_a5

    .line 626
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v1, :cond_a2

    .line 627
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mListHeader:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getSuggestedPeople()V

    .line 631
    :cond_a5
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 1024
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 1025
    return-void
.end method

.method public final setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter "audience"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 940
    return-void
.end method

.method public final setCirclesUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 950
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mCircleUsageType:I

    .line 951
    return-void
.end method

.method public setFilterNullGaiaIds(Z)V
    .registers 2
    .parameter "filterNullGaiaIds"

    .prologue
    .line 971
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mFilterNullGaiaIds:Z

    .line 972
    return-void
.end method

.method public setIncludePhoneOnlyContacts(Z)V
    .registers 2
    .parameter "includePhoneContactsOnly"

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePhoneOnlyContacts:Z

    .line 958
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "includePlusPages"

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mIncludePlusPages:Z

    .line 965
    return-void
.end method

.method public final setPublicProfileSearchEnabled(Z)V
    .registers 2
    .parameter "publicProfileSearchEnabled"

    .prologue
    .line 978
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mPublicProfileSearchEnabled:Z

    .line 979
    return-void
.end method

.method public setShowSuggestedPeople(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 986
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mShowSuggestedPeople:Z

    .line 987
    return-void
.end method
