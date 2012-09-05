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
        "Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

.field private mAudienceSet:Z

.field private mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCircleSelectionEnabled:Z

.field private mCircleUsageType:I

.field private mExcludedCircleId:Ljava/lang/String;

.field private mIncludePlusPages:Z

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
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    .line 286
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    return-object v0
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 503
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

.method private updateSelectionCount()V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    if-eqz v0, :cond_11

    .line 441
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ""

    :goto_e
    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;->onAudienceChanged(Ljava/lang/String;)V

    .line 443
    :cond_11
    return-void

    .line 441
    :cond_12
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
    .line 659
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 661
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
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoadersInitialized:Z

    if-eqz v0, :cond_16

    .line 649
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 651
    :cond_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 652
    return-void
.end method

.method public excludeMembersOfCircle(Ljava/lang/String;)V
    .registers 2
    .parameter "circleId"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mExcludedCircleId:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 6

    .prologue
    .line 632
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 633
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

    .line 634
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_e

    .line 636
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

    .line 637
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_28

    .line 639
    .end local v3           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_38
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    return-object v4
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
    .line 587
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectionCountText()Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v10, 0x1

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, circleCount:I
    const/4 v4, 0x0

    .line 670
    .local v4, extendedCircles:Z
    const/4 v5, 0x0

    .line 672
    .local v5, myCircles:Z
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v3

    .line 673
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_2f

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 675
    :cond_12
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, circleId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 677
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 678
    .local v7, type:I
    packed-switch v7, :pswitch_data_82

    .line 692
    :pswitch_27
    add-int/lit8 v0, v0, 0x1

    .line 695
    .end local v7           #type:I
    :cond_29
    :goto_29
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_12

    .line 698
    .end local v1           #circleId:Ljava/lang/String;
    :cond_2f
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int v2, v8, v0

    .line 699
    .local v2, count:I
    if-nez v2, :cond_5e

    .line 700
    if-eqz v4, :cond_4c

    .line 701
    const v8, 0x7f070226

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 709
    .end local v2           #count:I
    :goto_42
    return-object v8

    .line 681
    .restart local v1       #circleId:Ljava/lang/String;
    .restart local v7       #type:I
    :pswitch_43
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    .line 684
    :pswitch_48
    const/4 v4, 0x1

    .line 685
    goto :goto_29

    .line 688
    :pswitch_4a
    const/4 v5, 0x1

    .line 689
    goto :goto_29

    .line 702
    .end local v1           #circleId:Ljava/lang/String;
    .end local v7           #type:I
    .restart local v2       #count:I
    :cond_4c
    if-eqz v5, :cond_56

    .line 703
    const v8, 0x7f070227

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    .line 705
    :cond_56
    const v8, 0x7f070229

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    .line 708
    :cond_5e
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int v6, v8, v9

    .line 709
    .local v6, total:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0012

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    .line 678
    nop

    :pswitch_data_82
    .packed-switch 0x5
        :pswitch_4a
        :pswitch_27
        :pswitch_48
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public hasAudience()Z
    .registers 2

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceSet:Z

    return v0
.end method

.method protected isEmpty()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 401
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

    .line 389
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
    .line 582
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

    .line 327
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 328
    new-instance v0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;-><init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->addPartition(ZZ)V

    .line 332
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 333
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 335
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    if-eqz p1, :cond_12

    .line 344
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 346
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 347
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    if-eqz v0, :cond_25

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 350
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 352
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoadersInitialized:Z

    .line 353
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

    .line 450
    packed-switch p1, :pswitch_data_7c

    .line 470
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 452
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

    .line 458
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

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_9

    .line 464
    :pswitch_5a
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PeopleNotInCirclesLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_9

    .line 450
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_a
        :pswitch_31
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 370
    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 374
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 375
    return-object v0
.end method

.method public onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V
    .registers 12
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 511
    instance-of v7, p1, Lcom/google/android/apps/plus/views/CircleListItemView;

    if-eqz v7, :cond_40

    move-object v4, p1

    .line 512
    check-cast v4, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 513
    .local v4, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleId()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, circleId:Ljava/lang/String;
    if-eqz p2, :cond_3a

    .line 515
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 516
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 517
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleType()I

    move-result v7

    invoke-static {v7}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 518
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->getCircleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 519
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->getMemberCount()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 520
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v1           #circleId:Ljava/lang/String;
    .end local v4           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 545
    return-void

    .line 522
    .restart local v1       #circleId:Ljava/lang/String;
    .restart local v4       #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_3a
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 524
    .end local v1           #circleId:Ljava/lang/String;
    .end local v4           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :cond_40
    instance-of v7, p1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    if-eqz v7, :cond_36

    move-object v4, p1

    .line 525
    check-cast v4, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 526
    .local v4, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, personId:Ljava/lang/String;
    if-eqz p2, :cond_8b

    .line 528
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v5

    .line 529
    .local v5, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContactId()J

    move-result-wide v2

    .line 530
    .local v2, gaiaId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_5e

    .line 531
    invoke-virtual {v5, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 533
    :cond_5e
    const-string v7, "e:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 534
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 538
    :cond_6e
    :goto_6e
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContactName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 539
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 535
    :cond_7f
    const-string v7, "p:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 536
    invoke-virtual {v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_6e

    .line 541
    .end local v2           #gaiaId:J
    .end local v5           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_8b
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36
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
    .line 552
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_9

    .line 553
    check-cast p2, Landroid/widget/Checkable;

    .end local p2
    invoke-interface {p2}, Landroid/widget/Checkable;->toggle()V

    .line 555
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

    .line 478
    if-nez p2, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoaderError:Z

    .line 479
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 493
    :goto_e
    return-void

    :cond_f
    move v0, v2

    .line 478
    goto :goto_5

    .line 481
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 485
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 486
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 489
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    goto :goto_e

    .line 479
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
    .line 50
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
    .line 500
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 385
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateView(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 361
    const-string v0, "audience"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 362
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 576
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 562
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->pause()V

    .line 567
    :goto_8
    return-void

    .line 565
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->resume()V

    goto :goto_8
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 10
    .parameter "audience"

    .prologue
    .line 598
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAudienceSet:Z

    .line 599
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 600
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 601
    if-eqz p1, :cond_8f

    .line 602
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 603
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedCircles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 606
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_2d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 607
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    const/4 v4, 0x0

    .line 608
    .local v4, personId:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 620
    :cond_5f
    :goto_5f
    if-eqz v4, :cond_35

    .line 621
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mSelectedPeople:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 610
    :cond_67
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 612
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, email:Ljava/lang/String;
    const-string v5, "p:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 614
    move-object v4, v1

    goto :goto_5f

    .line 616
    :cond_7b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    .line 625
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v4           #personId:Ljava/lang/String;
    :cond_8f
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 626
    return-void
.end method

.method public setCircleSelectionEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleSelectionEnabled:Z

    .line 316
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 301
    iput p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mCircleUsageType:I

    .line 302
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mIncludePlusPages:Z

    .line 309
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mListener:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;

    .line 295
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 412
    const v2, 0x102000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, list:Landroid/view/View;
    const v2, 0x7f0d0065

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, serverError:Landroid/view/View;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mLoaderError:Z

    if-eqz v2, :cond_22

    .line 415
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 417
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showContent(Landroid/view/View;)V

    .line 433
    :goto_1e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->updateSelectionCount()V

    .line 434
    return-void

    .line 418
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 419
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_1e

    .line 422
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 423
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 425
    const v2, 0x7f070160

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 426
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_1e

    .line 428
    :cond_48
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->showContent(Landroid/view/View;)V

    goto :goto_1e
.end method
