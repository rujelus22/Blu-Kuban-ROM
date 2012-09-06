.class public Lcom/google/android/apps/plus/fragments/EditAudienceFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "EditAudienceFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;,
        Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;
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
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

.field private mAudienceChangedCallback:Ljava/lang/Runnable;

.field private mAudienceSet:Z

.field private mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCircleSelectionEnabled:Z

.field private mCircleUsageType:I

.field private mExcludedCircleId:Ljava/lang/String;

.field private mFilterNullGaiaIds:Z

.field private mIncludePlusPages:Z

.field private mIncomingAudienceIsReadOnly:Z

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

.field private mLoaderError:Z

.field private mLoadersInitialized:Z

.field private final mSelectedCircles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedPeople:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    .line 303
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 310
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncomingAudienceIsReadOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudienceFromList()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CircleListItemView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addToSelectedCircles(Lcom/google/android/apps/plus/views/CircleListItemView;)V

    return-void
.end method

.method private addToSelectedCircles(Lcom/google/android/apps/plus/views/CircleListItemView;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleId()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, circleId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 632
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 633
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleType()I

    move-result v2

    invoke-static {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 634
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 635
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CircleListItemView;->getMemberCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 636
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-void
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method private getAudienceFromList()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 6

    .prologue
    .line 735
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 736
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 737
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_e

    .line 739
    .end local v1           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 740
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_28

    .line 742
    .end local v3           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_38
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    return-object v4
.end method

.method private updateSelectionCount()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    if-eqz v0, :cond_11

    .line 490
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, ""

    :goto_e
    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;->onAudienceChanged(Ljava/lang/String;)V

    .line 494
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    if-eqz v0, :cond_1e

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudienceFromList()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 497
    :cond_1e
    return-void

    .line 490
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getSelectionCountText()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public addSelectedCircle(Ljava/lang/String;[B)V
    .registers 5
    .parameter "circleId"
    .parameter "circleProto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 764
    return-void
.end method

.method public addSelectedPerson(Ljava/lang/String;[B)V
    .registers 6
    .parameter "personId"
    .parameter "personProto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoadersInitialized:Z

    if-eqz v0, :cond_16

    .line 752
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 754
    :cond_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 755
    return-void
.end method

.method public excludeMembersOfCircle(Ljava/lang/String;)V
    .registers 2
    .parameter "circleId"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mExcludedCircleId:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPeople()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectionCountText()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v10, 0x1

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, circleCount:I
    const/4 v4, 0x0

    .line 773
    .local v4, extendedCircles:Z
    const/4 v5, 0x0

    .line 775
    .local v5, myCircles:Z
    iget-boolean v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    if-eqz v8, :cond_39

    .line 776
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v3

    .line 777
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_39

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_39

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 779
    :cond_1c
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, circleId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 781
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 782
    .local v7, type:I
    packed-switch v7, :pswitch_data_8c

    .line 796
    :pswitch_31
    add-int/lit8 v0, v0, 0x1

    .line 799
    .end local v7           #type:I
    :cond_33
    :goto_33
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 803
    .end local v1           #circleId:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    :cond_39
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v2, v8, v0

    .line 804
    .local v2, count:I
    if-nez v2, :cond_68

    .line 805
    if-eqz v4, :cond_56

    .line 806
    const v8, 0x7f0802d6

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 814
    .end local v2           #count:I
    :goto_4c
    return-object v8

    .line 785
    .restart local v1       #circleId:Ljava/lang/String;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v7       #type:I
    :pswitch_4d
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4c

    .line 788
    :pswitch_52
    const/4 v4, 0x1

    .line 789
    goto :goto_33

    .line 792
    :pswitch_54
    const/4 v5, 0x1

    .line 793
    goto :goto_33

    .line 807
    .end local v1           #circleId:Ljava/lang/String;
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v7           #type:I
    .restart local v2       #count:I
    :cond_56
    if-eqz v5, :cond_60

    .line 808
    const v8, 0x7f0802d7

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4c

    .line 810
    :cond_60
    const v8, 0x7f0802d9

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4c

    .line 813
    :cond_68
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int v6, v8, v9

    .line 814
    .local v6, total:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0018

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4c

    .line 782
    nop

    :pswitch_data_8c
    .packed-switch 0x5
        :pswitch_54
        :pswitch_31
        :pswitch_52
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method public hasAudience()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceSet:Z

    return v0
.end method

.method protected isEmpty()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isLoading()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    return v0
.end method

.method protected isLoading()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 438
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2b

    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    move v0, v1

    :cond_2c
    return v0
.end method

.method public isSelectionValid()Z
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 371
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 375
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 376
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 378
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 386
    if-eqz p1, :cond_12

    .line 387
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 389
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 390
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    if-eqz v0, :cond_25

    .line 391
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 393
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 395
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoadersInitialized:Z

    .line 396
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 14
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
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 504
    packed-switch p1, :pswitch_data_80

    .line 524
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 506
    :pswitch_a
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleUsageType:I

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v7

    const-string v6, "circle_name"

    aput-object v6, v5, v4

    const-string v4, "circle_id"

    aput-object v4, v5, v8

    const-string v4, "type"

    aput-object v4, v5, v9

    const-string v4, "contact_count"

    aput-object v4, v5, v10

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_9

    .line 512
    :pswitch_31
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v7

    const-string v5, "name"

    aput-object v5, v3, v4

    const-string v5, "person_id"

    aput-object v5, v3, v8

    const-string v5, "gaia_id"

    aput-object v5, v3, v9

    const-string v5, "packed_circle_ids"

    aput-object v5, v3, v10

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mExcludedCircleId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mFilterNullGaiaIds:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;ZLjava/lang/String;ZZ)V

    goto :goto_9

    .line 518
    :pswitch_5c
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v7

    const-string v5, "name"

    aput-object v5, v3, v4

    const-string v4, "person_id"

    aput-object v4, v3, v8

    const-string v4, "gaia_id"

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mFilterNullGaiaIds:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/HashMap;Z)V

    goto :goto_9

    .line 504
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_a
        :pswitch_31
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 413
    const v1, 0x7f030027

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/google/android/apps/plus/views/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 415
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 416
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 417
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 419
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    .line 420
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 421
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 424
    return-object v0
.end method

.method public onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V
    .registers 13
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 565
    instance-of v8, p1, Lcom/google/android/apps/plus/views/CircleListItemView;

    if-eqz v8, :cond_62

    move-object v5, p1

    .line 566
    check-cast v5, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 567
    .local v5, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleId()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, circleId:Ljava/lang/String;
    if-eqz p2, :cond_5c

    .line 569
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 570
    .local v1, activity:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 571
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleType()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenMinorPublicExtendedDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 573
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 575
    const v8, 0x7f0803c1

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 577
    const v8, 0x7f080209

    new-instance v9, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;

    invoke-direct {v9, p0, v5, v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CircleListItemView;Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 586
    const v8, 0x7f08020a

    new-instance v9, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;

    invoke-direct {v9, p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CheckableListItemView;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 621
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #circleId:Ljava/lang/String;
    .end local v5           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 622
    return-void

    .line 596
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v3       #circleId:Ljava/lang/String;
    .restart local v5       #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_58
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addToSelectedCircles(Lcom/google/android/apps/plus/views/CircleListItemView;)V

    goto :goto_54

    .line 599
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activity:Landroid/app/Activity;
    :cond_5c
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 601
    .end local v3           #circleId:Ljava/lang/String;
    .end local v5           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_62
    instance-of v8, p1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    if-eqz v8, :cond_54

    move-object v5, p1

    .line 602
    check-cast v5, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 603
    .local v5, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, personId:Ljava/lang/String;
    if-eqz p2, :cond_a9

    .line 605
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v6

    .line 606
    .local v6, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, gaiaId:Ljava/lang/String;
    if-eqz v4, :cond_7c

    .line 608
    invoke-virtual {v6, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 610
    :cond_7c
    const-string v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 611
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 615
    :cond_8c
    :goto_8c
    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContactName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 616
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 612
    :cond_9d
    const-string v8, "p:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 613
    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_8c

    .line 618
    .end local v4           #gaiaId:Ljava/lang/String;
    .end local v6           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_a9
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54
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
    .line 644
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_9

    .line 645
    check-cast p2, Landroid/widget/Checkable;

    .end local p2
    invoke-interface {p2}, Landroid/widget/Checkable;->toggle()V

    .line 647
    :cond_9
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    if-nez p2, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoaderError:Z

    .line 533
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 547
    :goto_e
    return-void

    :cond_f
    move v0, v2

    .line 532
    goto :goto_5

    .line 535
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 536
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 539
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 540
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 543
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 544
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 533
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 554
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 433
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    .line 435
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 404
    const-string v0, "audience"

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudienceFromList()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 405
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 668
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 654
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache;->pause()V

    .line 659
    :goto_8
    return-void

    .line 657
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache;->resume()V

    goto :goto_8
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 10
    .parameter "audience"

    .prologue
    .line 690
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceSet:Z

    .line 691
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 692
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 693
    if-eqz p1, :cond_92

    .line 694
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 695
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 698
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_2d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 699
    .local v4, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    const/4 v5, 0x0

    .line 700
    .local v5, personId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 701
    .local v2, gaiaId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 702
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v2

    .line 704
    :cond_4d
    if-eqz v2, :cond_6a

    .line 705
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 716
    :cond_62
    :goto_62
    if-eqz v5, :cond_35

    .line 717
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 706
    :cond_6a
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 708
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, email:Ljava/lang/String;
    const-string v6, "p:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 710
    move-object v5, v1

    goto :goto_62

    .line 712
    :cond_7e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_62

    .line 721
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #gaiaId:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v5           #personId:Ljava/lang/String;
    :cond_92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 722
    return-void
.end method

.method public setCircleSelectionEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    .line 343
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 328
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleUsageType:I

    .line 329
    return-void
.end method

.method public setFilterNullGaiaIds(Z)V
    .registers 2
    .parameter "filterNullGaiaIds"

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mFilterNullGaiaIds:Z

    .line 354
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncludePlusPages:Z

    .line 336
    return-void
.end method

.method public setIncomingAudienceIsReadOnly(Z)V
    .registers 2
    .parameter "isReadOnly"

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncomingAudienceIsReadOnly:Z

    .line 362
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    .line 322
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 461
    const v2, 0x102000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, list:Landroid/view/View;
    const v2, 0x7f090085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 463
    .local v1, serverError:Landroid/view/View;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoaderError:Z

    if-eqz v2, :cond_22

    .line 464
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showContent(Landroid/view/View;)V

    .line 482
    :goto_1e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 483
    return-void

    .line 467
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 468
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_1e

    .line 471
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 472
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const v2, 0x7f0801fa

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_1e

    .line 477
    :cond_48
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showContent(Landroid/view/View;)V

    goto :goto_1e
.end method
