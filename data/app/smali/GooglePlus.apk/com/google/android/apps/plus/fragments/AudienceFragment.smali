.class public Lcom/google/android/apps/plus/fragments/AudienceFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "AudienceFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;,
        Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;,
        Lcom/google/android/apps/plus/fragments/AudienceFragment$HangoutSuggestionsQuery;,
        Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;"
    }
.end annotation


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

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceChangedCallback:Ljava/lang/Runnable;

.field protected mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field protected mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mCacheSuggestionsResponse:Z

.field private mCircleUsageType:I

.field private mFilterNullGaiaIds:Z

.field private mGridView:Landroid/widget/GridView;

.field private mIncludePhoneOnlyContacts:Z

.field private mIncludePlusPages:Z

.field private mListHeader:Landroid/widget/TextView;

.field private mListParent:Landroid/view/View;

.field private mPublicProfileSearchEnabled:Z

.field private mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

.field private mRequestId:Ljava/lang/Integer;

.field protected mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mShowSuggestedPeople:Z

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

.field private mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

.field private mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

.field private mSuggestedPeopleSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 89
    new-instance v0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/android/apps/plus/fragments/AudienceFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    .line 94
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleSize:I

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/AudienceFragment;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isInAudience(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->updateSuggestedPeopleDisplay()V

    return-void
.end method

.method private cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    if-eqz v0, :cond_10

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsAudienceData;->processSuggestionsResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    .line 234
    :cond_10
    return-void
.end method

.method private isInAudience(Ljava/lang/String;)Z
    .registers 8
    .parameter "participantId"

    .prologue
    .line 288
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 289
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v2

    .line 290
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

    .line 291
    .local v3, audiencePerson:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v3}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantIdFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, audienceParticipantId:Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 295
    const/4 v5, 0x1

    .line 299
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
    .line 216
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v4

    .line 218
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

    .line 219
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

    .line 220
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeople:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 223
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v3           #suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->updateSuggestedPeopleDisplay()V

    .line 224
    return-void
.end method

.method private loadSuggestedPeopleFromCache()V
    .registers 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 241
    return-void
.end method

.method private updateSuggestedPeopleDisplay()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 248
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeople:Ljava/util/List;

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

    .line 250
    .local v9, suggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    const/4 v2, 0x0

    .line 251
    .local v2, found:Z
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->displayedSuggestedParticipants:Ljava/util/List;

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

    .line 252
    .local v0, audiencePerson:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, participantId:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 254
    const/4 v2, 0x1

    .line 259
    .end local v0           #audiencePerson:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v8           #participantId:Ljava/lang/String;
    :cond_36
    if-nez v2, :cond_8

    .line 260
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->displayedSuggestedParticipants:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_8

    .line 263
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 268
    .end local v2           #found:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #suggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_4f
    const/4 v5, 0x0

    .line 269
    .local v5, id:I
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleQuery;->columnNames:[Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 270
    .local v7, matrixCursor:Landroid/database/MatrixCursor;
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->displayedSuggestedParticipants:Ljava/util/List;

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

    .line 271
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

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isInAudience(Ljava/lang/String;)Z

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

    .line 277
    .end local v1           #displayedSuggestedParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #id:I
    .restart local v5       #id:I
    :cond_9a
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10, v7}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 280
    iget v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleSize:I

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v11

    if-eq v10, v11, :cond_c4

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    if-ne v10, v11, :cond_c4

    .line 282
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v12, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 283
    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->getCount()I

    move-result v10

    iput v10, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleSize:I

    .line 285
    :cond_c4
    return-void
.end method


# virtual methods
.method public final getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method protected final getShortAudienceDescription(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;
    .registers 4
    .parameter "audience"

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSuggestedPeople()V
    .registers 5

    .prologue
    .line 488
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 489
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->isAudienceEmpty()Z

    move-result v1

    .line 491
    .local v1, emptyAudience:Z
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    .line 492
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->requestSuggestedParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 494
    if-eqz v1, :cond_21

    .line 497
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeopleFromCache()V

    .line 499
    :cond_21
    return-void
.end method

.method public isAudienceEmpty()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 574
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 575
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-nez v0, :cond_b

    .line 591
    :cond_a
    :goto_a
    return v4

    .line 577
    :cond_b
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    if-lez v6, :cond_13

    move v4, v5

    .line 578
    goto :goto_a

    .line 580
    :cond_13
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 581
    .local v2, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    if-eqz v2, :cond_a

    .line 582
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

    .line 583
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

    .line 586
    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    if-nez p1, :cond_1c

    .line 315
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "audience"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 317
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz v0, :cond_1c

    .line 318
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 321
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
    .line 563
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 564
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 565
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 568
    :cond_12
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 679
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 309
    return-void
.end method

.method protected onAudienceChanged()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 503
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    :cond_9
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 657
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    instance-of v0, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    if-eqz v0, :cond_12

    .line 658
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    check-cast v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 660
    :cond_12
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 556
    :goto_7
    return-void

    .line 548
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    .line 549
    .local v3, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f0802d4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    iget-boolean v8, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mFilterNullGaiaIds:Z

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 545
    :sswitch_data_2e
    .sparse-switch
        0x7f090064 -> :sswitch_8
        0x7f090069 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeople:Ljava/util/List;

    .line 391
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->displayedSuggestedParticipants:Ljava/util/List;

    .line 392
    if-eqz p1, :cond_4f

    .line 393
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 394
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 395
    const-string v0, "cache_suggestions_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    .line 401
    :goto_2f
    const-string v0, "show_suggested_people"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    .line 403
    const-string v0, "public_profile_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    .line 405
    const-string v0, "phone_only_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 407
    const-string v0, "plus_pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    .line 410
    :cond_4f
    return-void

    .line 398
    :cond_50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    goto :goto_2f
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

    .line 700
    const-string v0, "Audience"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 701
    const-string v0, "Audience"

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

    .line 703
    :cond_22
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3d

    .line 704
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->HANGOUT_SUGGESTIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 706
    .local v2, suggestionsUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/AudienceFragment$HangoutSuggestionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "sequence ASC"

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 711
    .end local v2           #suggestionsUri:Landroid/net/Uri;
    :goto_3c
    return-object v0

    :cond_3d
    move-object v0, v4

    goto :goto_3c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 418
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mGridView:Landroid/widget/GridView;

    .line 420
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleScrollView:Landroid/widget/ScrollView;

    .line 423
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    .line 424
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    .line 425
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 426
    new-instance v1, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    .line 427
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 429
    return-object v0
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 693
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
    .line 537
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->onItemClick(I)V

    .line 538
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

    .line 720
    const-string v1, "Audience"

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 721
    const-string v1, "Audience"

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

    .line 724
    :cond_26
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-ne v1, v4, :cond_63

    .line 725
    if-eqz p2, :cond_63

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 727
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

    .line 733
    .local v0, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeople:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_34

    .line 736
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->updateSuggestedPeopleDisplay()V

    .line 739
    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_63
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 747
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 379
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v0, :cond_c

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 382
    :cond_c
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    instance-of v0, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    if-eqz v0, :cond_12

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    check-cast v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 672
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 350
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_f

    .line 352
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 355
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v1, :cond_18

    .line 356
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 358
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 371
    :cond_28
    :goto_28
    return-void

    .line 362
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v0

    .line 363
    .local v0, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 366
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 367
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    goto :goto_28
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 514
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string v0, "cache_suggestions_response"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCacheSuggestionsResponse:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    :cond_22
    const-string v0, "show_suggested_people"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v0, "public_profile_search"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 519
    const-string v0, "phone_only_contacts"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    const-string v0, "plus_pages"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 642
    invoke-virtual {p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    :cond_10
    :goto_10
    return-void

    .line 645
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStart()V

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 332
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 339
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStart()V

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 343
    :cond_c
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 3
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 686
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 435
    const v2, 0x7f090064

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/AudienceView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 437
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0035

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 439
    .local v1, themeContext:Landroid/content/Context;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 441
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 442
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 443
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 444
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 445
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mFilterNullGaiaIds:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setFilterNullGaiaIds(Z)V

    .line 446
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 447
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 448
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    instance-of v2, v2, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    if-eqz v2, :cond_6d

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    check-cast v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    .line 450
    .local v0, audienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    const v2, 0x7f080248

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 451
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 453
    .end local v0           #audienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    :cond_6d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 454
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;)V

    .line 456
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setupAudienceClickListener()V

    .line 457
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    new-instance v3, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 471
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v2, :cond_a4

    .line 472
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_a1

    .line 473
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getSuggestedPeople()V

    .line 477
    :cond_a4
    return-void
.end method

.method public final setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter "audience"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 768
    return-void
.end method

.method public setAudienceChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    .line 634
    return-void
.end method

.method public final setCirclesUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 778
    iput p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    .line 779
    return-void
.end method

.method public setFilterNullGaiaIds(Z)V
    .registers 2
    .parameter "filterNullGaiaIds"

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mFilterNullGaiaIds:Z

    .line 800
    return-void
.end method

.method public setIncludePhoneOnlyContacts(Z)V
    .registers 2
    .parameter "includePhoneContactsOnly"

    .prologue
    .line 785
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 786
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "includePlusPages"

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    .line 793
    return-void
.end method

.method public final setPublicProfileSearchEnabled(Z)V
    .registers 2
    .parameter "publicProfileSearchEnabled"

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    .line 807
    return-void
.end method

.method public setShowSuggestedPeople(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    .line 815
    return-void
.end method

.method protected setupAudienceClickListener()V
    .registers 3

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-void
.end method
