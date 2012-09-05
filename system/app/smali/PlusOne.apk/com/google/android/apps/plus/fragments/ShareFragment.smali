.class public Lcom/google/android/apps/plus/fragments/ShareFragment;
.super Landroid/support/v4/app/Fragment;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$AccountStatusQuery;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mApiaryListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

.field private mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mAudienceDisplay:Ljava/lang/String;

.field private mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mExternalId:Ljava/lang/String;

.field private mFooterMessage:Ljava/lang/String;

.field private mImageThumbnail:Landroid/graphics/Bitmap;

.field private mImageUri:Landroid/net/Uri;

.field private mLoadingAudience:Z

.field private mLoadingView:Landroid/view/View;

.field private mPendingPostId:Ljava/lang/Integer;

.field private mPendingPreview:Ljava/lang/Boolean;

.field private mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private mText:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageThumbnail:Landroid/graphics/Bitmap;

    .line 124
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 129
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    .line 304
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->buildPostableString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserShareActions(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mExternalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/AudienceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static buildPostableString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 745
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {p2, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 748
    new-instance v3, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    new-instance v4, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 750
    array-length v1, v0

    new-array v5, v1, [I

    .line 751
    array-length v1, v0

    new-array v6, v1, [I

    move v1, v2

    .line 754
    :goto_21
    array-length v7, v0

    if-ge v1, v7, :cond_68

    .line 755
    aget-object v7, v0, v1

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v7

    .line 756
    const-string v8, "g:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 758
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :goto_41
    aget-object v7, v0, v1

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aput v7, v5, v1

    .line 768
    aget-object v7, v0, v1

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    aput v7, v6, v1

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 760
    :cond_54
    const-string v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 762
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 765
    :cond_64
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 771
    :cond_68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/util/PeopleUtils;->getPublicIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 776
    :goto_75
    array-length v3, v0

    if-ge v2, v3, :cond_7e

    .line 777
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b1

    .line 785
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8b
    if-ltz v1, :cond_c1

    .line 787
    aget v3, v5, v1

    aget v7, v6, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8b

    .line 780
    :cond_b1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_be

    .line 781
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_be
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 791
    :cond_c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 971
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 983
    :cond_c
    :goto_c
    return-void

    .line 975
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 977
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 979
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_c

    .line 980
    const/16 v1, 0x409e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 981
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_c
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 987
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 989
    :cond_d
    return-void
.end method

.method private recordUserShareActions(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .parameter "comment"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p2, circles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, special:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 886
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_COMMENT_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 888
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 889
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CIRCLES_SHARE_ACL_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 891
    :cond_16
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 892
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_OTHER_SHARE_ACL_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 894
    :cond_21
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 895
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PEOPLE_SHARE_ACL_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 897
    :cond_2c
    return-void
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "audience"

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceDisplay:Ljava/lang/String;

    .line 623
    const-string v0, "ShareFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 624
    const-string v0, "ShareFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACL display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_2f
    return-void
.end method

.method private updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "view"
    .parameter "audience"

    .prologue
    .line 636
    const v0, 0x7f0d0054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 639
    return-void

    .line 636
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private updatePostUI(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/ShareActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->invalidateMenu()V

    .line 613
    return-void
.end method

.method private updateViews(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 906
    if-eqz p1, :cond_aa

    .line 908
    const v9, 0x7f0d0168

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 909
    .local v5, nameView:Landroid/widget/TextView;
    const v9, 0x7f0d0167

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 910
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 912
    const v9, 0x7f07013b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    const v9, 0x7f0d0169

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 917
    .local v8, previewContainer:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mText:Ljava/lang/String;

    if-eqz v9, :cond_50

    .line 918
    const v9, 0x7f0d0140

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 919
    .local v1, comment:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mText:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 922
    .end local v1           #comment:Landroid/widget/EditText;
    :cond_50
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 924
    const/4 v7, 0x0

    .line 926
    .local v7, preview:Landroid/view/View;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;

    if-eqz v9, :cond_ab

    .line 927
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageThumbnail:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_7e

    .line 928
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030097

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 931
    .local v6, photoPreview:Landroid/view/View;
    const v9, 0x7f0d017a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 932
    .local v4, imageView:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 933
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    move-object v7, v6

    .line 941
    .end local v4           #imageView:Landroid/widget/ImageView;
    .end local v6           #photoPreview:Landroid/view/View;
    :cond_7e
    :goto_7e
    if-eqz v7, :cond_88

    .line 942
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 943
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 946
    :cond_88
    const v9, 0x7f0d016a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 947
    .local v3, footerSep:Landroid/view/View;
    const v9, 0x7f0d016b

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 949
    .local v2, footer:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    if-eqz v9, :cond_b6

    .line 950
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 951
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    :goto_a7
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 961
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v2           #footer:Landroid/widget/TextView;
    .end local v3           #footerSep:Landroid/view/View;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v7           #preview:Landroid/view/View;
    .end local v8           #previewContainer:Landroid/view/ViewGroup;
    :cond_aa
    return-void

    .line 937
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v5       #nameView:Landroid/widget/TextView;
    .restart local v7       #preview:Landroid/view/View;
    .restart local v8       #previewContainer:Landroid/view/ViewGroup;
    :cond_ab
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory;->createViewFromActivity(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/views/ActivityPreviewView;

    move-result-object v7

    goto :goto_7e

    .line 954
    .restart local v2       #footer:Landroid/widget/TextView;
    .restart local v3       #footerSep:Landroid/view/View;
    :cond_b6
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 955
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 721
    packed-switch p1, :pswitch_data_54

    .line 737
    :cond_3
    return-void

    .line 723
    :pswitch_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 724
    const-string v2, "audience"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 726
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v2, :cond_3

    .line 727
    const-string v2, "ShareFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 729
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    const-string v2, "ShareFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out circle id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 721
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 681
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 664
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 699
    :goto_8
    return-void

    .line 691
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f070223

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 689
    :pswitch_data_28
    .packed-switch 0x7f0d0054
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 197
    if-nez p1, :cond_31

    .line 199
    const-string v1, "audience"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-nez v1, :cond_31

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    invoke-direct {v2, p0, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 205
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingAudience:Z

    .line 209
    :cond_31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0d0140

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 398
    const v4, 0x7f030092

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 400
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0d0169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    const v4, 0x7f0d0071

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    .line 404
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 405
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "start_editing"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-nez p3, :cond_4c

    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 409
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->requestFocus()Z

    .line 412
    :cond_4c
    const v4, 0x7f0d004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/AudienceView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 413
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingAudience:Z

    if-eqz v4, :cond_171

    const v4, 0x7f070096

    :goto_60
    invoke-virtual {v5, v4}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 415
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/ShareFragment$3;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 427
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f002c

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 430
    .local v2, themeContext:Landroid/content/Context;
    new-instance v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 432
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 433
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, v8}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 434
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;)V

    .line 435
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 436
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/AudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 437
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 439
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 440
    if-nez p3, :cond_ca

    .line 441
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_ca
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4, p0, v5, v6, v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 445
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/ShareFragment$4;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 469
    const v4, 0x7f0d0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    if-eqz p3, :cond_152

    .line 472
    const-string v4, "audience"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 473
    const-string v4, "audience"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 475
    .local v1, audienceBytes:[B
    :try_start_100
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 476
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 477
    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_10a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_100 .. :try_end_10a} :catch_196

    .line 482
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v1           #audienceBytes:[B
    :cond_10a
    :goto_10a
    const-string v4, "pending_request_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 483
    const-string v4, "pending_request_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 486
    :cond_11e
    const-string v4, "preview_result"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_130

    .line 487
    const-string v4, "preview_result"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/network/ApiaryActivity;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 490
    :cond_130
    const-string v4, "api_key"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 491
    const-string v4, "api_key"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 494
    :cond_142
    const-string v4, "footer"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 495
    const-string v4, "footer"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    .line 500
    :cond_152
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 501
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V

    .line 503
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_176

    .line 504
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v7, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;

    invoke-direct {v7, p0, v9}, Lcom/google/android/apps/plus/fragments/ShareFragment$BitmapLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 506
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_170
    :goto_170
    return-object v3

    .line 413
    .end local v2           #themeContext:Landroid/content/Context;
    :cond_171
    const v4, 0x7f07019a

    goto/16 :goto_60

    .line 507
    .restart local v2       #themeContext:Landroid/content/Context;
    :cond_176
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_170

    .line 508
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPreview:Ljava/lang/Boolean;

    .line 509
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x2

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v7, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    invoke-direct {v7, p0, v9}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 511
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_170

    .line 478
    .restart local v1       #audienceBytes:[B
    :catch_196
    move-exception v4

    goto/16 :goto_10a
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 524
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 525
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 707
    packed-switch p2, :pswitch_data_e

    .line 713
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 709
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 710
    const/4 v0, 0x1

    goto :goto_8

    .line 707
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onGetPreviewResult(Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 8
    .parameter "result"
    .parameter "activity"

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 157
    const-string v2, "ShareFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 158
    const-string v2, "ShareFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve preview: errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x6e27

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 162
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_5a

    move-result-object p2

    .line 168
    :cond_3a
    :goto_3a
    if-eqz p2, :cond_4f

    .line 169
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    .local v1, mainHandler:Landroid/os/Handler;
    new-instance v2, Lcom/google/android/apps/plus/fragments/ShareFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .end local v1           #mainHandler:Landroid/os/Handler;
    :cond_4f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 183
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPreview:Ljava/lang/Boolean;

    .line 185
    return-void

    .line 163
    :catch_5a
    move-exception v0

    .line 164
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "ShareFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create dummy preview for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
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
    .line 647
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onItemClick(I)V

    .line 648
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 576
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 577
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ApiaryService;->unregisterListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V

    .line 578
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 672
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 673
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 554
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_1f

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 558
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 563
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->registerListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V

    .line 565
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 566
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 567
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->handleResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 569
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_47
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 590
    const-string v0, "pending_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    if-eqz v0, :cond_22

    .line 594
    const-string v0, "preview_result"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 597
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-eqz v0, :cond_2d

    .line 598
    const-string v0, "api_key"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 601
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 602
    const-string v0, "footer"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 604
    :cond_38
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 655
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 532
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 536
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 543
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 544
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 547
    :cond_c
    return-void
.end method

.method public post()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 800
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPreview:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 854
    :cond_d
    :goto_d
    return v6

    .line 804
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 805
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    .line 806
    .local v1, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 809
    .local v4, spannable:Landroid/text/Spannable;
    invoke-static {v1}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 810
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/AudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 811
    .local v2, editor:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 812
    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    .line 813
    .local v3, message:Ljava/lang/CharSequence;
    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 817
    .end local v2           #editor:Landroid/widget/EditText;
    .end local v3           #message:Ljava/lang/CharSequence;
    :cond_39
    const/16 v6, 0x409e

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 822
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    invoke-direct {v6, p0, v0, v1, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/app/Activity;Lcom/google/wireless/tacotruck/proto/Data$Audience;Landroid/text/Spannable;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 852
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 854
    const/4 v6, 0x1

    goto :goto_d
.end method

.method public setData(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;)V
    .registers 6
    .parameter "imageUri"
    .parameter "text"
    .parameter "url"
    .parameter "apiKey"
    .parameter "externalId"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;

    .line 877
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mText:Ljava/lang/String;

    .line 878
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    .line 879
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 880
    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mExternalId:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setFooterMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "footerMessage"

    .prologue
    .line 861
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    .line 862
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V

    .line 863
    return-void
.end method
