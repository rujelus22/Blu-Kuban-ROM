.class public Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;
.super Lcom/google/android/apps/plus/phone/HostedFragment;
.source "HostedStreamOneUpFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;
.implements Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;
.implements Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;
.implements Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;
.implements Lcom/google/android/apps/plus/views/StreamOneUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$5;,
        Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$MyTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/HostedFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/views/ExpandButtonView$ClickableButtonListener;",
        "Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;",
        "Lcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;",
        "Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;",
        "Lcom/google/android/apps/plus/views/StreamOneUpListener;"
    }
.end annotation


# static fields
.field private static sAvatarMarginTop:I

.field private static final sMakeVicHappy:Z

.field private static sMaxWidth:I

.field private static sMinExposureLand:I

.field private static sMinExposurePort:I

.field private static sResourcesLoaded:Z


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mActivityRequestId:Ljava/lang/Integer;

.field private mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

.field private mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

.field private mAutoPlay:Z

.field private mBackgroundDesiredHeight:I

.field private mBackgroundDesiredWidth:I

.field private mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

.field private mCommentButton:Landroid/view/View;

.field private mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mFinishOnError:Z

.field private mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

.field private mFullBleed:Z

.field private mIsActivityLimited:Ljava/lang/Boolean;

.field private mIsActivityResharable:Ljava/lang/Boolean;

.field private mIsMyActivity:Ljava/lang/Boolean;

.field private mListParent:Landroid/view/View;

.field private mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

.field private mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mMediaCount:I

.field private mMuteProcessed:Z

.field private mOperationType:I

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mPlusOnedByData:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReadProcessed:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

.field private mShowAlbumOverlay:Z

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_FULL_BLEED_ONEUP:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMakeVicHappy:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;-><init>()V

    .line 198
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mServiceListener:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFinishOnError:Z

    .line 1556
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMaxWidth:I

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sAvatarMarginTop:I

    return v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMinExposureLand:I

    return v0
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMinExposurePort:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFinishOnError:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->dismissPendingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/api/AudienceData;)Lcom/google/android/apps/plus/api/AudienceData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Lcom/google/android/apps/plus/api/AudienceData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMuteProcessed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private bindStage(Landroid/database/Cursor;)V
    .registers 33
    .parameter "c"

    .prologue
    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v30

    .line 769
    .local v30, view:Landroid/view/View;
    if-nez v30, :cond_7

    .line 879
    :cond_6
    :goto_6
    return-void

    .line 775
    :cond_7
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 781
    const/16 v4, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 782
    .local v19, hangoutDataBytes:[B
    if-eqz v19, :cond_81

    .line 784
    :try_start_19
    invoke-static/range {v19 .. v19}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->parseFrom([B)Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v18

    .line 785
    .local v18, hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 786
    .local v15, authorName:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 788
    .local v14, authorId:Ljava/lang/String;
    const v4, 0x7f090262

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 789
    .local v28, stage:Landroid/view/View;
    if-nez v28, :cond_45

    .line 791
    const v4, 0x7f090264

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v28

    .line 794
    :cond_45
    const v4, 0x7f090268

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;

    .line 796
    .local v20, hangoutView:Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;
    if-eqz v20, :cond_6

    .line 800
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v15, v14, v2}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->bind(Lcom/google/apps/tacotown/proto/A2a$HangoutData;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/StreamOneUpListener;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    const v5, 0x7f090266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setAlwaysExpanded(Z)V
    :try_end_6c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_19 .. :try_end_6c} :catch_6d

    goto :goto_6

    .line 804
    .end local v14           #authorId:Ljava/lang/String;
    .end local v15           #authorName:Ljava/lang/String;
    .end local v18           #hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .end local v20           #hangoutView:Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;
    .end local v28           #stage:Landroid/view/View;
    :catch_6d
    move-exception v17

    .line 805
    .local v17, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "StreamOneUp"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 806
    const-string v4, "StreamOneUp"

    const-string v5, "Error parsing HangoutData"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 812
    .end local v17           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_81
    const/4 v3, 0x0

    .line 815
    .local v3, bgMediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 816
    .local v24, mediaBytes:[B
    if-eqz v24, :cond_163

    .line 817
    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v16

    .line 818
    .local v16, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/16 v21, 0x0

    .local v21, i:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .local v27, size:I
    :goto_97
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_163

    .line 819
    aget-object v4, v16, v21

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v23

    .line 820
    .local v23, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v29

    .line 822
    .local v29, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_174

    .line 818
    :cond_b2
    :goto_b2
    add-int/lit8 v21, v21, 0x1

    goto :goto_97

    .line 825
    :pswitch_b5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMediaCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMediaCount:I

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-nez v4, :cond_b2

    if-nez v3, :cond_b2

    .line 827
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_fc

    const/16 v22, 0x1

    .line 828
    .local v22, isVideo:Z
    :goto_cf
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    .line 829
    .local v7, thumbnailUrl:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v25

    .line 830
    .local v25, mediaUrl:Ljava/lang/String;
    if-eqz v22, :cond_e5

    .line 831
    invoke-static/range {v25 .. v25}, Lcom/google/android/apps/plus/util/ImageUtils;->rewriteYoutubeMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 833
    .local v26, rewrittenUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e5

    .line 834
    move-object/from16 v7, v26

    .line 838
    .end local v26           #rewrittenUrl:Ljava/lang/String;
    :cond_e5
    new-instance v3, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v3           #bgMediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v4, 0x0

    aget-object v5, v16, v21

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaTag()J

    move-result-wide v5

    if-eqz v22, :cond_ff

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :goto_f4
    if-eqz v22, :cond_101

    sget-object v9, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    :goto_f8
    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 841
    .restart local v3       #bgMediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_b2

    .line 827
    .end local v7           #thumbnailUrl:Ljava/lang/String;
    .end local v22           #isVideo:Z
    .end local v25           #mediaUrl:Ljava/lang/String;
    :cond_fc
    const/16 v22, 0x0

    goto :goto_cf

    .line 838
    .end local v3           #bgMediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v7       #thumbnailUrl:Ljava/lang/String;
    .restart local v22       #isVideo:Z
    .restart local v25       #mediaUrl:Ljava/lang/String;
    :cond_ff
    const/4 v8, 0x0

    goto :goto_f4

    :cond_101
    sget-object v9, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_f8

    .line 847
    .end local v7           #thumbnailUrl:Ljava/lang/String;
    .end local v22           #isVideo:Z
    .end local v25           #mediaUrl:Ljava/lang/String;
    .restart local v3       #bgMediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :pswitch_104
    const v4, 0x7f090262

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 848
    .restart local v28       #stage:Landroid/view/View;
    if-nez v28, :cond_11e

    .line 850
    const v4, 0x7f090263

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v28

    .line 853
    :cond_11e
    const v4, 0x7f09026b

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;

    .line 855
    .local v8, skyjamView:Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;
    if-eqz v8, :cond_6

    .line 859
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getAlbum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    const v5, 0x7f090266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setAlwaysExpanded(Z)V

    .line 865
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAutoPlay:Z

    if-eqz v4, :cond_6

    .line 866
    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->startAutoPlay()V

    .line 867
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAutoPlay:Z

    goto/16 :goto_6

    .line 875
    .end local v8           #skyjamView:Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;
    .end local v16           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v21           #i:I
    .end local v23           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v27           #size:I
    .end local v28           #stage:Landroid/view/View;
    .end local v29           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_163
    if-eqz v3, :cond_6

    .line 876
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->bindStageMedia(Landroid/view/View;)Z

    goto/16 :goto_6

    .line 822
    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_b5
        :pswitch_104
        :pswitch_104
    .end packed-switch
.end method

.method private bindStageMedia(Landroid/view/View;)Z
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 734
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-nez v0, :cond_a

    const/4 v1, 0x0

    .line 736
    .local v1, backgroundUrl:Ljava/lang/String;
    :goto_6
    if-nez v1, :cond_11

    move v0, v7

    .line 758
    :goto_9
    return v0

    .line 734
    .end local v1           #backgroundUrl:Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 740
    .restart local v1       #backgroundUrl:Ljava/lang/String;
    :cond_11
    const v0, 0x7f090262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 741
    .local v6, stage:Landroid/view/View;
    if-nez v6, :cond_66

    .line 743
    const v0, 0x7f090261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    .line 745
    const v0, 0x7f09018d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 747
    const v0, 0x7f090269

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    .line 748
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredHeight:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->init(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;)V

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    const v2, 0x7f090266

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setAlwaysExpanded(Z)V

    .line 755
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 758
    :cond_66
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private dismissPendingDialog()V
    .registers 4

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1546
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_16

    .line 1547
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1548
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1550
    :cond_16
    return-void
.end method

.method private doDeleteActivity()V
    .registers 6

    .prologue
    .line 1420
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_REMOVE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1421
    const v1, 0x7f080171

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08018a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1425
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1426
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_delete_activity"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method private varargs doDeleteComments([Ljava/lang/String;)V
    .registers 7
    .parameter "commentIds"

    .prologue
    .line 1359
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1360
    const v1, 0x7f080179

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_40

    const v1, 0x7f080181

    :goto_13
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1365
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1366
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comment_list"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_delete_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1368
    return-void

    .line 1360
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_40
    const v1, 0x7f080182

    goto :goto_13
.end method

.method private doEditComment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "commentId"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 1347
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1348
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getEditCommentActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1350
    .local v7, editCommentIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 1351
    return-void
.end method

.method private doMuteActivity()V
    .registers 6

    .prologue
    .line 1405
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_MUTE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1406
    const v1, 0x7f080177

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08018b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1410
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1412
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_mute_activity"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method private doReportActivity()V
    .registers 6

    .prologue
    .line 1433
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_REPORT_ABUSE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1434
    const v1, 0x7f080178

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08018c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1438
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1440
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activity_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_report_activity"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method private varargs doReportComments(Z[Ljava/lang/String;)V
    .registers 8
    .parameter "delete"
    .parameter "commentIds"

    .prologue
    .line 1377
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_REPORT_ABUSE_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1378
    const v1, 0x7f080178

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    array-length v1, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_49

    const v1, 0x7f080183

    :goto_13
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080209

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1383
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1384
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comment_list"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "hsouf_report_comment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1387
    return-void

    .line 1378
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :cond_49
    const v1, 0x7f080184

    goto :goto_13
.end method

.method private doReshareActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1393
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_RESHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1394
    const v1, 0x7f0801f5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801f6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0801f7

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/apps/plus/fragments/ConfirmIntentDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 1398
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reshare_activity"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method private getSafeContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private handleCommentClick(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;)V
    .registers 14
    .parameter "view"

    .prologue
    const/4 v11, 0x5

    .line 1063
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1064
    .local v8, res:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getAuthorId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v1

    .line 1065
    .local v1, myComment:Z
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getActivityAuthorId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v2

    .line 1066
    .local v2, myPost:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1067
    .local v5, optionTextList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1069
    .local v3, optionActionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPlusOneByMe()Z

    move-result v6

    .line 1070
    .local v6, plusOneByMe:Z
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPlusOneId()Ljava/lang/String;

    move-result-object v7

    .line 1073
    .local v7, plusOneId:Ljava/lang/String;
    if-eqz v6, :cond_ee

    const v9, 0x7f08044b

    :goto_36
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    const/16 v9, 0x24

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    if-eqz v1, :cond_f3

    .line 1078
    const v9, 0x7f08044e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    const/16 v9, 0x25

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :goto_5b
    if-nez v2, :cond_5f

    if-eqz v1, :cond_72

    .line 1089
    :cond_5f
    const v9, 0x7f08044d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    const/16 v9, 0x21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_72
    if-eqz v7, :cond_87

    .line 1093
    const v9, 0x7f08044f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    const/16 v9, 0x40

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v4, v9, [Ljava/lang/String;

    .line 1098
    .local v4, optionTextArray:[Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1100
    const v9, 0x7f080449

    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1103
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v9, 0x0

    invoke-virtual {v0, p0, v9}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "comment_action"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1105
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "comment_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getCommentId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "comment_content"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getCommentContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "plus_one_id"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "plus_one_by_me"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1109
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "plus_one_count"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->getPlusOneCount()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v10, "hsouf_delete_comment"

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->cancelPressedState()V

    .line 1114
    return-void

    .line 1073
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v4           #optionTextArray:[Ljava/lang/String;
    :cond_ee
    const v9, 0x7f08044a

    goto/16 :goto_36

    .line 1081
    :cond_f3
    const v9, 0x7f08044c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    if-eqz v2, :cond_10a

    .line 1083
    const/16 v9, 0x23

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 1085
    :cond_10a
    const/16 v9, 0x22

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b
.end method

.method private showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V
    .registers 11
    .parameter "audienceData"

    .prologue
    .line 1446
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    .line 1448
    .local v1, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v6, "StreamOneUp"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 1449
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Description: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hidden count text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getHiddenCountText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audience circles: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/4 v5, 0x0

    .local v5, i:I
    :goto_62
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v6

    if-ge v5, v6, :cond_8b

    .line 1454
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Circles: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 1457
    :cond_8b
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audience users: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v5, 0x0

    :goto_a8
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    if-ge v5, v6, :cond_d1

    .line 1459
    const-string v6, "StreamOneUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Users: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    .line 1463
    .end local v5           #i:I
    :cond_d1
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getAclText()Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, aclText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_103

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v6

    if-nez v6, :cond_103

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v6

    if-nez v6, :cond_103

    .line 1466
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/AudienceData;->getDescription()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080209

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v3

    .line 1469
    .local v3, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "hsouf_audience"

    invoke-virtual {v3, v6, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1480
    .end local v3           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_102
    return-void

    .line 1472
    :cond_103
    new-instance v4, Lcom/google/android/apps/plus/fragments/AclFragment;

    invoke-direct {v4}, Lcom/google/android/apps/plus/fragments/AclFragment;-><init>()V

    .line 1473
    .local v4, fragment:Lcom/google/android/apps/plus/fragments/AclFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1474
    .local v2, bundle:Landroid/os/Bundle;
    const-string v6, "account"

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1475
    const-string v6, "audience"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1476
    const-string v6, "acl_display"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/fragments/AclFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "hsouf_audience"

    invoke-virtual {v4, v6, v7}, Lcom/google/android/apps/plus/fragments/AclFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_102
.end method

.method private showPlusOnePeople(Ljava/lang/String;I)V
    .registers 7
    .parameter "plusOneId"
    .parameter "totalPlusOnes"

    .prologue
    .line 1484
    new-instance v1, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;-><init>()V

    .line 1485
    .local v1, fragment:Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1486
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1487
    const-string v2, "plus_one_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const-string v2, "total_plus_ones"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1489
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1490
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "hsouf_plus_ones"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "operationType"

    .prologue
    .line 1500
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I

    .line 1502
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1d

    const v1, 0x7f0800c4

    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "hsouf_pending"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1507
    return-void

    .line 1502
    .end local v0           #message:Ljava/lang/String;
    :cond_1d
    const v1, 0x7f0801af

    goto :goto_9
.end method


# virtual methods
.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public onActionButtonClicked(I)V
    .registers 9
    .parameter "actionId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 415
    if-nez p1, :cond_26

    .line 416
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityLimited:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 418
    .local v6, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityLimited:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 419
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doReshareActivity(Landroid/content/Intent;)V

    .line 436
    .end local v6           #intent:Landroid/content/Intent;
    :cond_21
    :goto_21
    return-void

    .line 421
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_22
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 423
    .end local v6           #intent:Landroid/content/Intent;
    :cond_26
    if-ne p1, v2, :cond_64

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    if-eqz v0, :cond_21

    .line 425
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFullBleed:Z

    if-nez v0, :cond_59

    move v0, v2

    :goto_31
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFullBleed:Z

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-nez v0, :cond_5b

    const/4 v1, 0x0

    .line 428
    .local v1, backgroundUrl:Ljava/lang/String;
    :goto_38
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFullBleed:Z

    if-nez v4, :cond_62

    :goto_3e
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->makeVicHappy(Z)V

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredHeight:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->init(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/apps/plus/views/OneUpBackgroundView$BackgroundViewLoadedListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->invalidateActionBar()V

    goto :goto_21

    .end local v1           #backgroundUrl:Ljava/lang/String;
    :cond_59
    move v0, v3

    .line 425
    goto :goto_31

    .line 426
    :cond_5b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .restart local v1       #backgroundUrl:Ljava/lang/String;
    :cond_62
    move v2, v3

    .line 428
    goto :goto_3e

    .line 434
    .end local v1           #backgroundUrl:Ljava/lang/String;
    :cond_64
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onActionButtonClicked(I)V

    goto :goto_21
.end method

.method public onBackgroundViewLoaded(Lcom/google/android/apps/plus/views/OneUpBackgroundView;)V
    .registers 12
    .parameter "backgroundView"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 601
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->getId()I

    move-result v7

    const v9, 0x7f090269

    if-ne v7, v9, :cond_57

    .line 602
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 604
    .local v4, view:Landroid/view/View;
    const v7, 0x7f09018d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v7, :cond_58

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v7

    sget-object v9, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v7, v9, :cond_58

    move v2, v5

    .line 608
    .local v2, isVideo:Z
    :goto_2a
    const v7, 0x7f090252

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 609
    .local v3, mediaOverlay:Landroid/view/View;
    if-eqz v2, :cond_5a

    move v7, v6

    :goto_34
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 611
    if-nez v2, :cond_5c

    iget v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMediaCount:I

    if-le v7, v5, :cond_5c

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mShowAlbumOverlay:Z

    if-eqz v7, :cond_5c

    move v1, v5

    .line 612
    .local v1, isAlbum:Z
    :goto_42
    const v5, 0x7f09026a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EsImageView;

    .line 613
    .local v0, albumOverlay:Lcom/google/android/apps/plus/views/EsImageView;
    if-eqz v1, :cond_5e

    :goto_4d
    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 614
    if-eqz v1, :cond_57

    .line 615
    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/EsImageView;->startFadeOut(I)V

    .line 618
    .end local v0           #albumOverlay:Lcom/google/android/apps/plus/views/EsImageView;
    .end local v1           #isAlbum:Z
    .end local v2           #isVideo:Z
    .end local v3           #mediaOverlay:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_57
    return-void

    .restart local v4       #view:Landroid/view/View;
    :cond_58
    move v2, v6

    .line 606
    goto :goto_2a

    .restart local v2       #isVideo:Z
    .restart local v3       #mediaOverlay:Landroid/view/View;
    :cond_5a
    move v7, v8

    .line 609
    goto :goto_34

    :cond_5c
    move v1, v6

    .line 611
    goto :goto_42

    .restart local v0       #albumOverlay:Lcom/google/android/apps/plus/views/EsImageView;
    .restart local v1       #isAlbum:Z
    :cond_5e
    move v6, v8

    .line 613
    goto :goto_4d
.end method

.method public onCancelRequested()V
    .registers 7

    .prologue
    .line 1323
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-nez v2, :cond_c

    .line 1324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1338
    :goto_b
    return-void

    .line 1326
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_24

    .line 1328
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_b

    .line 1330
    :cond_24
    const v2, 0x7f08017f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080180

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08020e

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 1334
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1335
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "hsouf_cancel_edits"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 21
    .parameter "view"

    .prologue
    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_130

    .line 1042
    .end local p1
    :cond_7
    :goto_7
    return-void

    .line 969
    .restart local p1
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, commentText:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-nez v2, :cond_7

    .line 972
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_POST_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v7

    .line 974
    .local v7, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/EsService;->createComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 977
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    goto :goto_7

    .line 980
    .end local v7           #mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_7

    .line 987
    .end local v6           #commentText:Ljava/lang/String;
    :sswitch_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-nez v2, :cond_b1

    .line 988
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    if-eqz v2, :cond_7

    .line 989
    check-cast p1, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getLastTouchEvent()Landroid/view/MotionEvent;

    move-result-object v9

    .line 990
    .local v9, event:Landroid/view/MotionEvent;
    if-eqz v9, :cond_7

    .line 991
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    .line 992
    .local v17, x:F
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    .line 993
    .local v18, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090262

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 994
    .local v15, stage:Landroid/view/View;
    if-eqz v15, :cond_7

    .line 995
    const v2, 0x7f090268

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;

    .line 997
    .local v10, hangoutView:Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;
    if-eqz v10, :cond_9d

    .line 998
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;->processClick(FF)V

    .line 1001
    :cond_9d
    const v2, 0x7f09026b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;

    .line 1003
    .local v14, skyjamView:Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;
    if-eqz v14, :cond_7

    .line 1004
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;->processClick(FF)V

    goto/16 :goto_7

    .line 1012
    .end local v9           #event:Landroid/view/MotionEvent;
    .end local v10           #hangoutView:Lcom/google/android/apps/plus/views/StreamOneUpHangoutView;
    .end local v14           #skyjamView:Lcom/google/android/apps/plus/views/StreamOneUpSkyjamView;
    .end local v15           #stage:Landroid/view/View;
    .end local v17           #x:F
    .end local v18           #y:F
    .restart local p1
    :cond_b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v2, v3, :cond_ff

    const/4 v11, 0x1

    .line 1013
    .local v11, isImage:Z
    :goto_be
    if-eqz v11, :cond_115

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v8

    .line 1016
    .local v8, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v12

    .line 1018
    .local v12, photoId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_101

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setActivityId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1024
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1030
    :goto_f4
    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 1012
    .end local v8           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .end local v11           #isImage:Z
    .end local v12           #photoId:J
    :cond_ff
    const/4 v11, 0x0

    goto :goto_be

    .line 1027
    .restart local v8       #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .restart local v11       #isImage:Z
    .restart local v12       #photoId:J
    :cond_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    goto :goto_f4

    .line 1032
    .end local v8           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .end local v12           #photoId:J
    :cond_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1033
    .local v16, videoUrl:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 967
    :sswitch_data_130
    .sparse-switch
        0x7f0900da -> :sswitch_8
        0x7f090266 -> :sswitch_62
        0x7f090269 -> :sswitch_62
    .end sparse-switch
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ExpandButtonView;)V
    .registers 2
    .parameter "button"

    .prologue
    .line 1057
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 262
    const-string v1, "activity_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    .line 263
    const-string v1, "photo_ref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 264
    const-string v1, "photo_width"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredWidth:I

    .line 265
    const-string v1, "photo_height"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundDesiredHeight:I

    .line 266
    const-string v1, "photo_count"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMediaCount:I

    .line 268
    if-nez p1, :cond_9e

    move v1, v2

    :goto_45
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mShowAlbumOverlay:Z

    .line 270
    if-eqz p1, :cond_a0

    .line 271
    const-string v1, "pending_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 272
    const-string v1, "pending_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 274
    :cond_5d
    const-string v1, "activity_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 275
    const-string v1, "activity_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    .line 278
    :cond_71
    const-string v1, "audience_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/AudienceData;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    .line 279
    const-string v1, "operation_type"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I

    .line 280
    const-string v1, "finish_on_error"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFinishOnError:Z

    .line 281
    const-string v1, "mute_processed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMuteProcessed:Z

    .line 282
    const-string v1, "read_processed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mReadProcessed:Z

    .line 283
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAutoPlay:Z

    .line 289
    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    move v1, v3

    .line 268
    goto :goto_45

    .line 285
    :cond_a0
    const-string v1, "refresh"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->refresh()V

    goto :goto_9d
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
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
    .line 622
    packed-switch p1, :pswitch_data_14

    .line 629
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 624
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/apps/plus/fragments/StreamOneUpLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_4

    .line 622
    nop

    :pswitch_data_14
    .packed-switch 0x1efab34d
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 307
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v1

    .line 309
    .local v1, context:Landroid/content/Context;
    sget-boolean v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sResourcesLoaded:Z

    if-nez v4, :cond_37

    .line 310
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 312
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0d01d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMaxWidth:I

    .line 313
    const v4, 0x7f0d01d2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMinExposureLand:I

    .line 315
    const v4, 0x7f0d01d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMinExposurePort:I

    .line 317
    const v4, 0x7f0d01d8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sput v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sAvatarMarginTop:I

    .line 319
    sput-boolean v5, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sResourcesLoaded:Z

    .line 322
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_37
    const v4, 0x7f0300dd

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090265

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    .line 326
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    const v7, 0x7f090266

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/StreamOneUpListView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    .line 330
    new-instance v4, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-direct {v4, v1, v9, p0, v7}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/StreamOneUpListener;Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    .line 331
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    sget v7, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMaxWidth:I

    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setMaxWidth(I)V

    .line 332
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V

    .line 338
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->bindStageMedia(Landroid/view/View;)Z

    .line 341
    const v4, 0x7f090078

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    .line 342
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    const v7, 0x7f09014d

    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    const v7, 0x7f090267

    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->setLayoutListener(Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;)V

    .line 345
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    sget v7, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMaxWidth:I

    invoke-virtual {v4, v7}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->setMaxWidth(I)V

    .line 347
    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 349
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v4, v7}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 351
    .local v0, circleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 352
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {v4, p0, v7, v8, v9}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 355
    const v4, 0x7f0900da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    .line 356
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_134

    move v4, v5

    :goto_f0
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    new-instance v4, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$MyTextWatcher;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    invoke-direct {v4, v5, v9}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$MyTextWatcher;-><init>(Landroid/view/View;Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$1;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 360
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const v5, 0x1efab34d

    invoke-virtual {v4, v5, v9, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 377
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "show_keyboard"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 378
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    :cond_133
    return-object v3

    :cond_134
    move v4, v6

    .line 357
    goto :goto_f0
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 569
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 571
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 572
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;

    .line 576
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->onDestroyView()V

    .line 577
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1268
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 15
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1272
    const-string v0, "comment_action"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1273
    .local v6, mCommentAction:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v6, :cond_12

    .line 1274
    const-string v0, "StreamOneUp"

    const-string v1, "No actions for comment option dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :goto_11
    return-void

    .line 1277
    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_20

    .line 1278
    const-string v0, "StreamOneUp"

    const-string v1, "Option selected outside the action list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1282
    :cond_20
    const-string v0, "comment_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, mCommentId:Ljava/lang/String;
    const-string v0, "comment_content"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1284
    .local v7, mCommentContent:Ljava/lang/String;
    const-string v0, "plus_one_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1285
    .local v4, plusOneId:Ljava/lang/String;
    const-string v0, "plus_one_by_me"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1286
    .local v8, plusOneByMe:Z
    const-string v0, "plus_one_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1288
    .local v9, plusOneCount:I
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_8a

    goto :goto_11

    .line 1308
    :sswitch_4c
    new-array v0, v5, [Ljava/lang/String;

    aput-object v3, v0, v10

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doDeleteComments([Ljava/lang/String;)V

    goto :goto_11

    .line 1290
    :sswitch_54
    if-eqz v4, :cond_58

    if-nez v8, :cond_65

    .line 1291
    :cond_58
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_11

    .line 1294
    :cond_65
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_11

    .line 1299
    :sswitch_72
    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doEditComment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1302
    :sswitch_76
    new-array v0, v5, [Ljava/lang/String;

    aput-object v3, v0, v10

    invoke-direct {p0, v10, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doReportComments(Z[Ljava/lang/String;)V

    goto :goto_11

    .line 1305
    :sswitch_7e
    new-array v0, v5, [Ljava/lang/String;

    aput-object v3, v0, v10

    invoke-direct {p0, v5, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doReportComments(Z[Ljava/lang/String;)V

    goto :goto_11

    .line 1311
    :sswitch_86
    invoke-direct {p0, v4, v9}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showPlusOnePeople(Ljava/lang/String;I)V

    goto :goto_11

    .line 1288
    :sswitch_data_8a
    .sparse-switch
        0x21 -> :sswitch_4c
        0x22 -> :sswitch_76
        0x23 -> :sswitch_7e
        0x24 -> :sswitch_54
        0x25 -> :sswitch_72
        0x40 -> :sswitch_86
    .end sparse-switch
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1264
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1239
    const-string v0, "hsouf_delete_activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1240
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1241
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    .line 1260
    :cond_1f
    :goto_1f
    return-void

    .line 1242
    :cond_20
    const-string v0, "hsouf_delete_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1243
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    const-string v3, "comment_list"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1245
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    goto :goto_1f

    .line 1246
    :cond_46
    const-string v0, "hsouf_report_comment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1247
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    const-string v3, "comment_list"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->moderateComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1250
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    goto :goto_1f

    .line 1251
    :cond_74
    const-string v0, "hsouf_mute_activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1252
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1253
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    goto :goto_1f

    .line 1254
    :cond_94
    const-string v0, "hsouf_report_activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1255
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->reportActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1256
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    goto/16 :goto_1f

    .line 1257
    :cond_b5
    const-string v0, "hsouf_cancel_edits"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1258
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_1f
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 1046
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    if-eqz v0, :cond_a

    .line 1047
    check-cast p2, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    .end local p2
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->handleCommentClick(Lcom/google/android/apps/plus/views/StreamOneUpCommentView;)V

    .line 1053
    :cond_9
    :goto_9
    return-void

    .line 1049
    .restart local p2
    :cond_a
    const-string v0, "StreamOneUp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1050
    const-string v0, "StreamOneUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostedStreamOneUpFragment.onItemClick: Some other view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 963
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16
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
    const/4 v11, 0x0

    const/16 v9, 0x8

    const/4 v12, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_120

    .line 726
    :cond_d
    :goto_d
    return-void

    .line 638
    :pswitch_e
    if-eqz p2, :cond_16

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_42

    .line 640
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->refresh()V

    .line 699
    :cond_19
    :goto_19
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->bindStage(Landroid/database/Cursor;)V

    .line 700
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    invoke-virtual {v6, p2}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 702
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMuteProcessed:Z

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mute"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 704
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    .line 642
    :cond_42
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mReadProcessed:Z

    if-eqz v6, :cond_4d

    .line 643
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_MARK_ACTIVITY_AS_READ:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 644
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mReadProcessed:Z

    .line 649
    :cond_4d
    iput-object v11, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 650
    const/16 v6, 0xa

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 651
    .local v3, locationBytes:[B
    if-eqz v3, :cond_5d

    .line 653
    :try_start_57
    invoke-static {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :try_end_5d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_5d} :catch_f0

    .line 661
    :cond_5d
    :goto_5d
    const/4 v6, 0x4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, authorId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsMyActivity:Ljava/lang/Boolean;

    .line 663
    const/16 v6, 0x10

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_104

    move v6, v7

    :goto_77
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityResharable:Ljava/lang/Boolean;

    .line 665
    const/16 v6, 0xe

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_107

    move v6, v7

    :goto_86
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityLimited:Ljava/lang/Boolean;

    .line 667
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 668
    .local v4, plusOneBytes:[B
    if-eqz v4, :cond_b2

    .line 670
    :try_start_93
    invoke-static {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    .line 671
    .local v5, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v5, :cond_b2

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v6

    if-lez v6, :cond_b2

    .line 673
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPlusOnedByData:Landroid/util/Pair;
    :try_end_b2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_93 .. :try_end_b2} :catch_10a

    .line 684
    .end local v5           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->invalidateActionBar()V

    .line 687
    const/16 v6, 0xf

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_11b

    move v1, v7

    .line 689
    .local v1, canComment:Z
    :goto_be
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    const v10, 0x7f09014d

    invoke-virtual {v6, v10}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v1, :cond_11d

    move v6, v8

    :goto_ca
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    const v10, 0x7f090267

    invoke-virtual {v6, v10}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_d9

    move v9, v8

    :cond_d9
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    if-eqz v6, :cond_19

    .line 695
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;

    const v9, 0x7f090266

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setCanAnimate(Z)V

    goto/16 :goto_19

    .line 654
    .end local v0           #authorId:Ljava/lang/String;
    .end local v1           #canComment:Z
    .end local v4           #plusOneBytes:[B
    :catch_f0
    move-exception v2

    .line 655
    .local v2, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v6, "StreamOneUp"

    invoke-static {v6, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 656
    const-string v6, "StreamOneUp"

    const-string v10, "Error parsing Location"

    invoke-static {v6, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    :cond_100
    iput-object v11, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    goto/16 :goto_5d

    .end local v2           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0       #authorId:Ljava/lang/String;
    :cond_104
    move v6, v8

    .line 663
    goto/16 :goto_77

    :cond_107
    move v6, v8

    .line 665
    goto/16 :goto_86

    .line 677
    .restart local v4       #plusOneBytes:[B
    :catch_10a
    move-exception v2

    .line 678
    .restart local v2       #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v6, "StreamOneUp"

    invoke-static {v6, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 679
    const-string v6, "StreamOneUp"

    const-string v10, "Error parsing PlusOneData"

    invoke-static {v6, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2

    .end local v2           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_11b
    move v1, v8

    .line 687
    goto :goto_be

    .restart local v1       #canComment:Z
    :cond_11d
    move v6, v9

    .line 689
    goto :goto_ca

    .line 636
    nop

    :pswitch_data_120
    .packed-switch 0x1efab34d
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 884
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 4
    .parameter "activityId"
    .parameter "location"

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/plus/util/MapUtils;->showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 1159
    return-void
.end method

.method public onMeasured(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 916
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    if-ne p1, v1, :cond_10

    .line 918
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->setContainerHeight(I)V

    .line 955
    :cond_f
    :goto_f
    return-void

    .line 919
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    if-ne p1, v1, :cond_f

    .line 920
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFooter:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->getMeasuredHeight()I

    move-result v0

    .line 925
    .local v0, footerHeight:I
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 465
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    .line 467
    .local v0, context:Landroid/content/Context;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_60

    .line 507
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_10
    return v1

    .line 469
    :sswitch_11
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    move v1, v3

    .line 472
    goto :goto_10

    .line 475
    :sswitch_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/MapUtils;->showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    move v1, v3

    .line 477
    goto :goto_10

    .line 480
    :sswitch_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getEditPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 482
    goto :goto_10

    .line 485
    :sswitch_37
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doDeleteActivity()V

    move v1, v3

    .line 487
    goto :goto_10

    .line 490
    :sswitch_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPlusOnedByData:Landroid/util/Pair;

    if-eqz v1, :cond_53

    .line 491
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPlusOnedByData:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPlusOnedByData:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showPlusOnePeople(Ljava/lang/String;I)V

    :cond_53
    move v1, v3

    .line 494
    goto :goto_10

    .line 497
    :sswitch_55
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doReportActivity()V

    move v1, v3

    .line 499
    goto :goto_10

    .line 502
    :sswitch_5a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->doMuteActivity()V

    move v1, v3

    .line 504
    goto :goto_10

    .line 467
    nop

    :sswitch_data_60
    .sparse-switch
        0x7f0902ac -> :sswitch_11
        0x7f0902e7 -> :sswitch_55
        0x7f0902e9 -> :sswitch_2a
        0x7f0902ea -> :sswitch_1f
        0x7f0902eb -> :sswitch_5a
        0x7f0902ec -> :sswitch_37
        0x7f0902ef -> :sswitch_3c
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 549
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPause()V

    .line 551
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    if-eqz v2, :cond_c

    .line 552
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->onStop()V

    .line 555
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    if-eqz v2, :cond_2c

    .line 556
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_2c

    .line 557
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 558
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;

    if-eqz v2, :cond_29

    .line 559
    check-cast v1, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onStop()V

    .line 556
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 564
    .end local v0           #i:I
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mServiceListener:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 565
    return-void
.end method

.method public onPlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V
    .registers 10
    .parameter "activityId"
    .parameter "plusOneData"
    .parameter "objectType"

    .prologue
    const/4 v5, 0x1

    .line 1197
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->isPostPlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1199
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1200
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, v5}, Lcom/google/android/apps/plus/service/EsService;->deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    .line 1205
    .end local v0           #activity:Landroid/app/Activity;
    :cond_18
    :goto_18
    return-void

    .line 1202
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I

    goto :goto_18
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 6
    .parameter "actionBar"

    .prologue
    const/4 v3, 0x1

    .line 394
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 395
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityResharable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsActivityResharable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 397
    const/4 v0, 0x0

    const v1, 0x7f0200a4

    const v2, 0x7f080172

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 401
    :cond_1d
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->sMakeVicHappy:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    if-eqz v0, :cond_32

    .line 402
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFullBleed:Z

    if-eqz v0, :cond_36

    .line 403
    const v0, 0x7f0200a5

    const v1, 0x7f080174

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 410
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->updateProgressIndicator()V

    .line 411
    return-void

    .line 406
    :cond_36
    const v0, 0x7f0200a6

    const v1, 0x7f080173

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    goto :goto_32
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 440
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_12

    .line 443
    const v0, 0x7f0902ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsMyActivity:Ljava/lang/Boolean;

    if-eqz v0, :cond_32

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mIsMyActivity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 448
    const v0, 0x7f0902e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    const v0, 0x7f0902ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPlusOnedByData:Landroid/util/Pair;

    if-eqz v0, :cond_40

    .line 457
    const v0, 0x7f0902ef

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 460
    :cond_40
    const v0, 0x7f0902ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    return-void

    .line 451
    :cond_4b
    const v0, 0x7f0902e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    const v0, 0x7f0902eb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_32
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 513
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->onResume()V

    .line 515
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    if-eqz v3, :cond_c

    .line 516
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mBackgroundView:Lcom/google/android/apps/plus/views/OneUpBackgroundView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/OneUpBackgroundView;->onStart()V

    .line 519
    :cond_c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    if-eqz v3, :cond_2c

    .line 520
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_2c

    .line 521
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListView:Lcom/google/android/apps/plus/views/StreamOneUpListView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 522
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;

    if-eqz v3, :cond_29

    .line 523
    check-cast v2, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onStart()V

    .line 520
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 528
    .end local v0           #i:I
    :cond_2c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mServiceListener:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 530
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_56

    .line 531
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_56

    .line 532
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 533
    .local v1, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mServiceListener:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v3, v4, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;->access$400(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$ServiceListener;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 537
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_56
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_72

    .line 538
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_72

    .line 539
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 540
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    .line 544
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->updateProgressIndicator()V

    .line 545
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 584
    const-string v0, "pending_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 587
    const-string v0, "activity_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    if-eqz v0, :cond_2c

    .line 590
    const-string v0, "audience_data"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 593
    :cond_2c
    const-string v0, "operation_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    const-string v0, "finish_on_error"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mFinishOnError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 595
    const-string v0, "mute_processed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMuteProcessed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    const-string v0, "read_processed"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mReadProcessed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 597
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 294
    const-string v0, "auto_play_music"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAutoPlay:Z

    .line 295
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 959
    return-void
.end method

.method public onSkyjamBuyClick(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1210
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1212
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1213
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 1215
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    :cond_2b
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1218
    return-void
.end method

.method public onSkyjamListenClick(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1223
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.SHARED_PLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    const-string v2, "authAccount"

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string v2, "accountType"

    const-string v3, "com.google"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_49

    .line 1230
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1231
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1232
    const-string v2, "market://details?id=com.google.android.music"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1234
    :cond_49
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1235
    return-void
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 9
    .parameter "span"

    .prologue
    .line 1163
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    .line 1166
    .local v0, context:Landroid/content/Context;
    const-string v5, "acl:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1167
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    if-nez v5, :cond_2c

    .line 1168
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-nez v5, :cond_2b

    .line 1169
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->getActivityAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1171
    const/16 v5, 0x30

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V

    .line 1192
    :cond_2b
    :goto_2b
    return-void

    .line 1175
    :cond_2c
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V

    goto :goto_2b

    .line 1177
    :cond_32
    const-string v5, "+1:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1178
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, parts:[Ljava/lang/String;
    if-eqz v2, :cond_2b

    array-length v5, v2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2b

    .line 1180
    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showPlusOnePeople(Ljava/lang/String;I)V

    goto :goto_2b

    .line 1182
    .end local v2           #parts:[Ljava/lang/String;
    :cond_58
    const-string v5, "gplus://app/stream/search?query=%23"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gplus://app/stream/search?query=%23"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, searchKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v5, v3}, Lcom/google/android/apps/plus/phone/Intents;->getPostSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1185
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 1187
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #searchKey:Ljava/lang/String;
    :cond_87
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1188
    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_PERSON:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1190
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v5, v6, v4}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    .line 1118
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    .line 1119
    .local v0, context:Landroid/content/Context;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_AUTHOR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1120
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 1122
    return-void
.end method

.method public recordNavigationAction()V
    .registers 1

    .prologue
    .line 1511
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 891
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/HostedFragment;->refresh()V

    .line 893
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_19

    .line 894
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    .line 897
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->updateProgressIndicator()V

    .line 898
    return-void
.end method

.method protected updateProgressIndicator()V
    .registers 3

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v0

    .line 907
    .local v0, actionBar:Lcom/google/android/apps/plus/views/HostActionBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityRequestId:Ljava/lang/Integer;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_18

    .line 908
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 912
    :goto_17
    return-void

    .line 910
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->hideProgressIndicator()V

    goto :goto_17
.end method
