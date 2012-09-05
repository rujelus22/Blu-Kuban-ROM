.class public Lcom/google/android/apps/plus/fragments/AudienceFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "AudienceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;,
        Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;,
        Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleQuery;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAudienceChangedCallback:Ljava/lang/Runnable;

.field protected mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field protected mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mCircleUsageType:I

.field private mIncludePhoneOnlyContacts:Z

.field private mIncludePlusPages:Z

.field private mListHeader:Landroid/widget/TextView;

.field private mListParent:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mPublicProfileSearchEnabled:Z

.field private mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

.field private mRequestId:Ljava/lang/Integer;

.field protected mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mShowSuggestedPeople:Z

.field private mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/android/apps/plus/fragments/AudienceFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    .line 72
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    return-object v0
.end method

.method private loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 15
    .parameter "response"

    .prologue
    const/4 v12, 0x0

    .line 202
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleQuery;->columnNames:[Ljava/lang/String;

    invoke-direct {v5, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 204
    .local v5, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .line 205
    .local v3, id:I
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v8

    .line 206
    .local v8, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$Suggestion;>;"
    const/4 v0, 0x0

    .line 207
    .local v0, count:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .line 208
    .local v7, suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getSuggestedUserList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 209
    .local v6, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    add-int/lit8 v0, v0, 0x1

    .line 210
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #id:I
    .local v4, id:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move v3, v4

    .end local v4           #id:I
    .restart local v3       #id:I
    goto :goto_26

    .line 216
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v7           #suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    :cond_52
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v9, v5}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 217
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v9, :cond_64

    .line 218
    if-nez v0, :cond_65

    .line 219
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_64
    :goto_64
    return-void

    .line 221
    :cond_65
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_64
.end method


# virtual methods
.method public final getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method protected final getAudienceEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method protected final getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v0

    return-object v0
.end method

.method protected final getShortAudienceDescription(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;
    .registers 4
    .parameter "audience"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSuggestedPeople()V
    .registers 4

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 389
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->requestSuggestedParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 391
    return-void
.end method

.method public isAudienceEmpty()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 463
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-nez v0, :cond_b

    .line 477
    :cond_a
    :goto_a
    return v4

    .line 465
    :cond_b
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    if-lez v6, :cond_13

    move v4, v5

    .line 466
    goto :goto_a

    .line 468
    :cond_13
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    .line 469
    .local v2, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    if-eqz v2, :cond_a

    .line 470
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

    .line 471
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->hasSize()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v6

    if-lez v6, :cond_1d

    move v4, v5

    .line 472
    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 238
    if-nez p1, :cond_1c

    .line 239
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 240
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "audience"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 241
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz v0, :cond_1c

    .line 242
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 245
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
    .line 451
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 452
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 453
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 456
    :cond_12
    return-void
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 522
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 233
    return-void
.end method

.method protected onAudienceChanged()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    :cond_9
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 504
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 505
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0054

    if-ne v0, v1, :cond_2c

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    .line 438
    .local v3, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f070224

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 444
    .end local v3           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_2c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    if-eqz p1, :cond_39

    .line 314
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 315
    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    .line 319
    :goto_19
    const-string v0, "show_suggested_people"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    .line 321
    const-string v0, "public_profile_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    .line 323
    const-string v0, "phone_only_contacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 325
    const-string v0, "plus_pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    .line 328
    :cond_39
    return-void

    .line 317
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    goto :goto_19
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 336
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListView:Landroid/widget/ListView;

    .line 338
    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    .line 339
    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    new-instance v1, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    .line 342
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    return-object v0
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
    .line 428
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->onItemClick(I)V

    .line 429
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 302
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v0, :cond_c

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 305
    :cond_c
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 514
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 274
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_f

    .line 276
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceResult:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 279
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v1, :cond_18

    .line 280
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRealTimeChatListener:Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 282
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 283
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 294
    :cond_28
    :goto_28
    return-void

    .line 286
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v0

    .line 287
    .local v0, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 290
    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    goto :goto_28
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 405
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 406
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    :cond_1b
    const-string v0, "show_suggested_people"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    const-string v0, "public_profile_search"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    const-string v0, "phone_only_contacts"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string v0, "plus_pages"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 490
    invoke-virtual {p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 491
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_10
    :goto_10
    return-void

    .line 493
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStart()V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 256
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onStart()V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 267
    :cond_c
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 350
    const v1, 0x7f0d004f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/AudienceView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    const v2, 0x7f07019a

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 353
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f002c

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 355
    .local v0, themeContext:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 357
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePhoneNumberContacts(Z)V

    .line 358
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setIncludePlusPages(Z)V

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setPublicProfileSearchEnabled(Z)V

    .line 360
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 361
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;)V

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 363
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSearchListAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 366
    const v1, 0x7f0d0054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    new-instance v2, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 379
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    if-eqz v1, :cond_99

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mSuggestedPeopleAdapter:Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    if-eqz v1, :cond_96

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mListHeader:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getSuggestedPeople()V

    .line 385
    :cond_99
    return-void
.end method

.method public final setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter "audience"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 542
    return-void
.end method

.method public setAudienceChangedCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    .line 482
    return-void
.end method

.method public final setCirclesUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 552
    iput p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mCircleUsageType:I

    .line 553
    return-void
.end method

.method public setIncludePhoneOnlyContacts(Z)V
    .registers 2
    .parameter "includePhoneContactsOnly"

    .prologue
    .line 559
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePhoneOnlyContacts:Z

    .line 560
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "includePlusPages"

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mIncludePlusPages:Z

    .line 567
    return-void
.end method

.method public final setPublicProfileSearchEnabled(Z)V
    .registers 2
    .parameter "publicProfileSearchEnabled"

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mPublicProfileSearchEnabled:Z

    .line 574
    return-void
.end method

.method public setShowSuggestedPeople(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mShowSuggestedPeople:Z

    .line 582
    return-void
.end method
