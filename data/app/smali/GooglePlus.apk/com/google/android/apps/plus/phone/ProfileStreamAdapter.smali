.class public Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
.super Lcom/google/android/apps/plus/phone/StreamAdapter;
.source "ProfileStreamAdapter.java"


# instance fields
.field private mBlockRequestPending:Z

.field mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field mCircleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

.field mDisplayName:Ljava/lang/String;

.field private mErrorText:Ljava/lang/String;

.field mFamilyName:Ljava/lang/String;

.field mFavicons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field mFullName:Ljava/lang/String;

.field mGivenName:Ljava/lang/String;

.field mHasProfile:Z

.field mIsBlocked:Z

.field mIsLocalPlusPage:Z

.field mIsMyProfile:Z

.field mIsPlusPage:Z

.field mIsSmsIntentRegistered:Z

.field mIsUnclaimedLocalPlusPage:Z

.field mMapLocationBitmap:Landroid/graphics/Bitmap;

.field private mPackedCircleIds:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field mPlusOneByMe:Z

.field mPlusOnes:I

.field private mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

.field mProfileLoadFailed:Z

.field private mProfileViewOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

.field mShowAddToCircles:Z

.field mShowBlocked:Z

.field mShowCircles:Z

.field mShowProgress:Z

.field private mViewIsExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V
    .registers 11
    .parameter "context"
    .parameter "gridView"
    .parameter "account"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewUseListener"
    .parameter "markPostsAsRead"
    .parameter "plusBarClickListener"
    .parameter "floatingComposeBarView"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p9}, Lcom/google/android/apps/plus/phone/StreamAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOnes:I

    .line 92
    return-void
.end method

.method private getFaviconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "url"

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFavicons:Ljava/util/HashMap;

    if-eqz v3, :cond_1d

    .line 419
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, domain:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFavicons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 421
    .local v2, imageData:[B
    if-eqz v2, :cond_1d

    .line 422
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #imageData:[B
    :cond_1d
    return-object v0
.end method

.method private updateFullName(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 331
    if-eqz p1, :cond_16

    .line 332
    iget-object v0, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mDisplayName:Ljava/lang/String;

    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    .line 339
    :cond_16
    return-void

    .line 335
    :cond_17
    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method


# virtual methods
.method public bindProfileAboutView(Lcom/google/android/apps/plus/views/ProfileAboutView;)V
    .registers 61
    .parameter "profileView"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-nez v5, :cond_7

    .line 878
    :cond_6
    :goto_6
    return-void

    .line 434
    :cond_7
    const/16 v38, 0x0

    .line 436
    .local v38, intro:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    if-eqz v5, :cond_2d2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->coverPhotoEntry:Lcom/google/api/services/plusi/model/ScrapBookEntry;

    if-eqz v5, :cond_2d2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->coverPhotoEntry:Lcom/google/api/services/plusi/model/ScrapBookEntry;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBookEntry;->url:Ljava/lang/String;

    if-eqz v5, :cond_2d2

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->coverPhotoEntry:Lcom/google/api/services/plusi/model/ScrapBookEntry;

    iget-object v0, v5, Lcom/google/api/services/plusi/model/ScrapBookEntry;->url:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 440
    .local v47, photoUrl:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setCoverPhotoUrl(Ljava/lang/String;)V

    .line 462
    .end local v47           #photoUrl:Ljava/lang/String;
    :goto_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v12, v5, Lcom/google/api/services/plusi/model/CommonContent;->photoUrl:Ljava/lang/String;

    .line 463
    .local v12, avatarUrl:Ljava/lang/String;
    if-eqz v12, :cond_349

    .line 464
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsMyProfile:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAvatarUrl(Ljava/lang/String;Z)V

    .line 469
    :goto_55
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mGivenName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFamilyName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    if-eqz v5, :cond_34e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonConfig;->incomingConnections:Lcom/google/api/services/plusi/model/IntField;

    if-eqz v5, :cond_34e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonConfig;->incomingConnections:Lcom/google/api/services/plusi/model/IntField;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/IntField;->value:Ljava/lang/Integer;

    if-eqz v5, :cond_34e

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonConfig;->incomingConnections:Lcom/google/api/services/plusi/model/IntField;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/IntField;->value:Ljava/lang/Integer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAddedByCount(Ljava/lang/Integer;)V

    .line 479
    :goto_93
    const/16 v41, 0x0

    .line 481
    .local v41, localPageAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsLocalPlusPage:Z

    if-eqz v5, :cond_356

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getFullAddress(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v41

    .line 483
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocation(Ljava/lang/String;Z)V

    .line 513
    :cond_ab
    :goto_ab
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    if-eqz v5, :cond_3ee

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOnes:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3ee

    .line 514
    const v5, 0x7f080422

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOnes:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 516
    .local v48, plusOnesString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOneByMe:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setPlusOneData(Ljava/lang/String;Z)V

    .line 522
    .end local v48           #plusOnesString:Ljava/lang/String;
    :goto_df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-eqz v5, :cond_3f7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->tagLine:Lcom/google/api/services/plusi/model/StringField;

    if-eqz v5, :cond_3f7

    .line 523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->tagLine:Lcom/google/api/services/plusi/model/StringField;

    iget-object v0, v5, Lcom/google/api/services/plusi/model/StringField;->value:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 528
    .local v55, tagLine:Ljava/lang/String;
    :goto_fd
    invoke-static/range {v55 .. v55}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3fb

    .line 529
    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setTagLine(Ljava/lang/String;)V

    .line 534
    :goto_10a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mHasProfile:Z

    if-nez v5, :cond_123

    .line 536
    const v5, 0x7f080225

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 539
    :cond_123
    if-nez v38, :cond_145

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-eqz v5, :cond_145

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->introduction:Lcom/google/api/services/plusi/model/StringField;

    if-eqz v5, :cond_145

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->introduction:Lcom/google/api/services/plusi/model/StringField;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/StringField;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    .line 544
    :cond_145
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_152

    .line 545
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setIntroduction(Ljava/lang/String;)V

    .line 548
    :cond_152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-eqz v5, :cond_403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    if-eqz v5, :cond_403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Links;->link:Ljava/util/List;

    if-eqz v5, :cond_403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Links;->link:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_403

    const/16 v31, 0x1

    .line 553
    .local v31, hasLinks:Z
    :goto_182
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsLocalPlusPage:Z

    if-eqz v5, :cond_4b6

    .line 554
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsUnclaimedLocalPlusPage:Z

    if-eqz v5, :cond_1a2

    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getCoverPhotoUrl(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v12

    .line 557
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a2

    .line 558
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAvatarUrl(Ljava/lang/String;Z)V

    .line 562
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getPhoneNumber(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v46

    .line 563
    .local v46, phone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getCid(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v43

    .line 565
    .local v43, mapsCid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move-object/from16 v2, v43

    move-object/from16 v3, v41

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocalActions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getEditorialScores(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;

    move-result-object v6

    .line 570
    .local v6, scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
    if-eqz v6, :cond_407

    const/4 v5, 0x1

    :goto_1cc
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocalEditorialReviewsSection(Z)V

    .line 571
    if-eqz v6, :cond_1f8

    .line 572
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getZagatEditorialReviewText(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getPriceLabel(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getPriceValue(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getReviewCount(Lcom/google/api/services/plusi/model/SimpleProfile;)I

    move-result v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocalEditorialReviews(Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 580
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getKnownForTerms(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/util/List;

    move-result-object v39

    .line 581
    .local v39, knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getOpeningHoursSummary(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v45

    .line 582
    .local v45, openingHoursSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getOpeningHoursFull(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v44

    .line 584
    .local v44, openingHoursFull:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21c

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40a

    :cond_21c
    const/16 v34, 0x1

    .line 586
    .local v34, hasOpeningHours:Z
    :goto_21e
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22c

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_22c

    if-eqz v34, :cond_40e

    :cond_22c
    const/16 v32, 0x1

    .line 589
    .local v32, hasLocalDetails:Z
    :goto_22e
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocalDetailsSection(Z)V

    .line 590
    if-eqz v32, :cond_244

    .line 591
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-object/from16 v2, v46

    move-object/from16 v3, v45

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocalDetails(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getHomepageUrl(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/PlacePageLink;

    move-result-object v40

    .line 596
    .local v40, link:Lcom/google/api/services/plusi/model/PlacePageLink;
    if-eqz v40, :cond_412

    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlacePageLink;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_412

    const/16 v30, 0x1

    .line 597
    .local v30, hasHomepage:Z
    :goto_25a
    if-eqz v30, :cond_416

    if-nez v31, :cond_416

    const/16 v52, 0x1

    .line 599
    .local v52, shouldShowHomepage:Z
    :goto_260
    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableHompageSection(Z)V

    .line 600
    if-eqz v52, :cond_280

    .line 601
    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlacePageLink;->url:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/google/api/services/plusi/model/PlacePageLink;->text:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/google/api/services/plusi/model/PlacePageLink;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFaviconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setHomepage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 604
    :cond_280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getUserActivityStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    move-result-object v54

    .line 606
    .local v54, story:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    if-eqz v54, :cond_41a

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalReviews:Ljava/lang/Integer;

    if-eqz v5, :cond_41a

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalReviews:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_41a

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->activity:Ljava/util/List;

    if-eqz v5, :cond_41a

    const/16 v24, 0x1

    .line 611
    .local v24, hasActivity:Z
    :goto_2a2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearAllReviews()V

    .line 613
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocalYourActivitySection(Z)V

    .line 614
    if-eqz v24, :cond_41e

    .line 615
    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->activity:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :cond_2b6
    :goto_2b6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    .line 616
    .local v21, entry:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->review:Lcom/google/api/services/plusi/model/GoogleReviewProto;

    if-eqz v5, :cond_2b6

    .line 617
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->review:Lcom/google/api/services/plusi/model/GoogleReviewProto;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addYourReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V

    goto :goto_2b6

    .line 441
    .end local v6           #scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
    .end local v12           #avatarUrl:Ljava/lang/String;
    .end local v21           #entry:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;
    .end local v24           #hasActivity:Z
    .end local v30           #hasHomepage:Z
    .end local v31           #hasLinks:Z
    .end local v32           #hasLocalDetails:Z
    .end local v34           #hasOpeningHours:Z
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v39           #knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v40           #link:Lcom/google/api/services/plusi/model/PlacePageLink;
    .end local v41           #localPageAddress:Ljava/lang/String;
    .end local v43           #mapsCid:Ljava/lang/String;
    .end local v44           #openingHoursFull:Ljava/lang/String;
    .end local v45           #openingHoursSummary:Ljava/lang/String;
    .end local v46           #phone:Ljava/lang/String;
    .end local v52           #shouldShowHomepage:Z
    .end local v54           #story:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    .end local v55           #tagLine:Ljava/lang/String;
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    if-eqz v5, :cond_344

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->albumId:Ljava/lang/String;

    if-eqz v5, :cond_344

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->plusiEntry:Ljava/util/List;

    if-eqz v5, :cond_344

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->plusiEntry:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v53

    .line 446
    .local v53, size:I
    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    .line 447
    .local v57, urls:[Ljava/lang/String;
    const/16 v36, 0x0

    .local v36, i:I
    :goto_30a
    move/from16 v0, v36

    move/from16 v1, v53

    if-ge v0, v1, :cond_329

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->plusiEntry:Ljava/util/List;

    move/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/plusi/model/ScrapBookEntry;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBookEntry;->url:Ljava/lang/String;

    aput-object v5, v57, v36

    .line 447
    add-int/lit8 v36, v36, 0x1

    goto :goto_30a

    .line 451
    :cond_329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/ScrapBook;->albumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setScrapbookAlbumUrls(Ljava/lang/Long;[Ljava/lang/String;)V

    goto/16 :goto_42

    .line 454
    .end local v36           #i:I
    .end local v53           #size:I
    .end local v57           #urls:[Ljava/lang/String;
    :cond_344
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setCoverPhotoToDefault()V

    goto/16 :goto_42

    .line 466
    .restart local v12       #avatarUrl:Ljava/lang/String;
    :cond_349
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAvatarToDefault()V

    goto/16 :goto_55

    .line 476
    :cond_34e
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setAddedByCount(Ljava/lang/Integer;)V

    goto/16 :goto_93

    .line 484
    .restart local v41       #localPageAddress:Ljava/lang/String;
    :cond_356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_ab

    .line 485
    const/16 v18, 0x0

    .line 486
    .local v18, employer:Ljava/lang/String;
    const/16 v42, 0x0

    .line 487
    .local v42, location:Ljava/lang/String;
    const/16 v51, 0x0

    .line 489
    .local v51, school:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    if-eqz v5, :cond_393

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Employments;->employment:Ljava/util/List;

    if-eqz v5, :cond_393

    .line 491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Employments;->employment:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/api/services/plusi/model/Employment;

    .line 492
    .local v19, employment:Lcom/google/api/services/plusi/model/Employment;
    if-eqz v19, :cond_393

    .line 493
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Employment;->employer:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 496
    .end local v19           #employment:Lcom/google/api/services/plusi/model/Employment;
    :cond_393
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEmployer(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    if-eqz v5, :cond_3b0

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v0, v5, Lcom/google/api/services/plusi/model/Locations;->currentLocation:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 501
    :cond_3b0
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocation(Ljava/lang/String;Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    if-eqz v5, :cond_3e5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Educations;->education:Ljava/util/List;

    if-eqz v5, :cond_3e5

    .line 505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Educations;->education:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/api/services/plusi/model/Education;

    .line 506
    .local v15, education:Lcom/google/api/services/plusi/model/Education;
    if-eqz v15, :cond_3e5

    .line 507
    iget-object v0, v15, Lcom/google/api/services/plusi/model/Education;->school:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 510
    .end local v15           #education:Lcom/google/api/services/plusi/model/Education;
    :cond_3e5
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEducation(Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 518
    .end local v18           #employer:Ljava/lang/String;
    .end local v42           #location:Ljava/lang/String;
    .end local v51           #school:Ljava/lang/String;
    :cond_3ee
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setPlusOneData(Ljava/lang/String;Z)V

    goto/16 :goto_df

    .line 525
    :cond_3f7
    const/16 v55, 0x0

    .restart local v55       #tagLine:Ljava/lang/String;
    goto/16 :goto_fd

    .line 531
    :cond_3fb
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setTagLine(Ljava/lang/String;)V

    goto/16 :goto_10a

    .line 548
    :cond_403
    const/16 v31, 0x0

    goto/16 :goto_182

    .line 570
    .restart local v6       #scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
    .restart local v31       #hasLinks:Z
    .restart local v43       #mapsCid:Ljava/lang/String;
    .restart local v46       #phone:Ljava/lang/String;
    :cond_407
    const/4 v5, 0x0

    goto/16 :goto_1cc

    .line 584
    .restart local v39       #knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v44       #openingHoursFull:Ljava/lang/String;
    .restart local v45       #openingHoursSummary:Ljava/lang/String;
    :cond_40a
    const/16 v34, 0x0

    goto/16 :goto_21e

    .line 586
    .restart local v34       #hasOpeningHours:Z
    :cond_40e
    const/16 v32, 0x0

    goto/16 :goto_22e

    .line 596
    .restart local v32       #hasLocalDetails:Z
    .restart local v40       #link:Lcom/google/api/services/plusi/model/PlacePageLink;
    :cond_412
    const/16 v30, 0x0

    goto/16 :goto_25a

    .line 597
    .restart local v30       #hasHomepage:Z
    :cond_416
    const/16 v52, 0x0

    goto/16 :goto_260

    .line 606
    .restart local v52       #shouldShowHomepage:Z
    .restart local v54       #story:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    :cond_41a
    const/16 v24, 0x0

    goto/16 :goto_2a2

    .line 622
    .restart local v24       #hasActivity:Z
    :cond_41e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getCircleActivityStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;

    move-result-object v54

    .line 623
    if-eqz v54, :cond_46d

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalReviews:Ljava/lang/Integer;

    if-eqz v5, :cond_46d

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->totalReviews:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_46d

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->activity:Ljava/util/List;

    if-eqz v5, :cond_46d

    const/16 v24, 0x1

    .line 628
    :goto_440
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocalYourCirclesActivitySection(Z)V

    .line 629
    if-eqz v24, :cond_470

    .line 631
    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;->activity:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_451
    :goto_451
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_470

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    .line 632
    .restart local v21       #entry:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->review:Lcom/google/api/services/plusi/model/GoogleReviewProto;

    if-eqz v5, :cond_451

    .line 633
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;->review:Lcom/google/api/services/plusi/model/GoogleReviewProto;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addCircleReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V

    goto :goto_451

    .line 623
    .end local v21           #entry:Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;
    .end local v37           #i$:Ljava/util/Iterator;
    :cond_46d
    const/16 v24, 0x0

    goto :goto_440

    .line 638
    :cond_470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getGoogleReviewStory(Lcom/google/api/services/plusi/model/SimpleProfile;)Lcom/google/api/services/plusi/model/GoogleReviewsProto;

    move-result-object v23

    .line 640
    .local v23, googleReviewsStory:Lcom/google/api/services/plusi/model/GoogleReviewsProto;
    if-eqz v23, :cond_4b3

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->review:Ljava/util/List;

    if-eqz v5, :cond_4b3

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->review:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4b3

    const/16 v24, 0x1

    .line 644
    :goto_48c
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocalReviewsSection(Z)V

    .line 645
    if-eqz v24, :cond_4b6

    .line 647
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/api/services/plusi/model/GoogleReviewsProto;->review:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_49d
    :goto_49d
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b6

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    .line 648
    .local v49, review:Lcom/google/api/services/plusi/model/GoogleReviewProto;
    if-eqz v49, :cond_49d

    .line 649
    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addLocalReview(Lcom/google/api/services/plusi/model/GoogleReviewProto;)V

    goto :goto_49d

    .line 640
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v49           #review:Lcom/google/api/services/plusi/model/GoogleReviewProto;
    :cond_4b3
    const/16 v24, 0x0

    goto :goto_48c

    .line 655
    .end local v6           #scores:Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
    .end local v23           #googleReviewsStory:Lcom/google/api/services/plusi/model/GoogleReviewsProto;
    .end local v24           #hasActivity:Z
    .end local v30           #hasHomepage:Z
    .end local v32           #hasLocalDetails:Z
    .end local v34           #hasOpeningHours:Z
    .end local v39           #knownForTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v40           #link:Lcom/google/api/services/plusi/model/PlacePageLink;
    .end local v43           #mapsCid:Ljava/lang/String;
    .end local v44           #openingHoursFull:Ljava/lang/String;
    .end local v45           #openingHoursSummary:Ljava/lang/String;
    .end local v46           #phone:Ljava/lang/String;
    .end local v52           #shouldShowHomepage:Z
    .end local v54           #story:Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
    :cond_4b6
    const/16 v28, 0x0

    .line 656
    .local v28, hasEmails:Z
    const/16 v35, 0x0

    .line 657
    .local v35, hasPhoneNumbers:Z
    const/16 v25, 0x0

    .line 659
    .local v25, hasAddresses:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-nez v5, :cond_548

    const/4 v14, 0x0

    .line 661
    .local v14, contacts:Lcom/google/api/services/plusi/model/Contacts;
    :goto_4c5
    if-eqz v14, :cond_4f1

    .line 662
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    if-eqz v5, :cond_552

    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_552

    const/16 v28, 0x1

    .line 663
    :goto_4d5
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    if-eqz v5, :cond_555

    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_555

    const/16 v35, 0x1

    .line 664
    :goto_4e3
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->address:Ljava/util/List;

    if-eqz v5, :cond_558

    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->address:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_558

    const/16 v25, 0x1

    .line 667
    :cond_4f1
    :goto_4f1
    if-nez v28, :cond_4f7

    if-nez v35, :cond_4f7

    if-eqz v25, :cond_55b

    :cond_4f7
    const/16 v27, 0x1

    .line 669
    .local v27, hasContactInformation:Z
    :goto_4f9
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableContactSection(Z)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearEmails()V

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearPhoneNumbers()V

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearAddresses()V

    .line 674
    if-eqz v28, :cond_55e

    .line 675
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :goto_511
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/api/services/plusi/model/TaggedEmail;

    .line 676
    .local v17, email:Lcom/google/api/services/plusi/model/TaggedEmail;
    const/16 v56, 0x0

    .line 678
    .local v56, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    if-nez v5, :cond_531

    .line 679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/google/api/services/plusi/model/TaggedEmail;->tag:Lcom/google/api/services/plusi/model/ContactTag;

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForEmailType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;

    move-result-object v56

    .line 682
    :cond_531
    if-nez v56, :cond_53c

    .line 683
    const v5, 0x7f080284

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 686
    :cond_53c
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/api/services/plusi/model/TaggedEmail;->value:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_511

    .line 659
    .end local v14           #contacts:Lcom/google/api/services/plusi/model/Contacts;
    .end local v17           #email:Lcom/google/api/services/plusi/model/TaggedEmail;
    .end local v27           #hasContactInformation:Z
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v56           #type:Ljava/lang/String;
    :cond_548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v14, v5, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    goto/16 :goto_4c5

    .line 662
    .restart local v14       #contacts:Lcom/google/api/services/plusi/model/Contacts;
    :cond_552
    const/16 v28, 0x0

    goto :goto_4d5

    .line 663
    :cond_555
    const/16 v35, 0x0

    goto :goto_4e3

    .line 664
    :cond_558
    const/16 v25, 0x0

    goto :goto_4f1

    .line 667
    :cond_55b
    const/16 v27, 0x0

    goto :goto_4f9

    .line 690
    .restart local v27       #hasContactInformation:Z
    :cond_55e
    if-eqz v35, :cond_5ac

    .line 691
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :goto_566
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5ac

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/google/api/services/plusi/model/TaggedPhone;

    .line 694
    .local v46, phone:Lcom/google/api/services/plusi/model/TaggedPhone;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    if-eqz v5, :cond_59f

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/google/api/services/plusi/model/TaggedPhone;->tag:Lcom/google/api/services/plusi/model/ContactTag;

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPlusPagePhoneType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;

    move-result-object v56

    .line 700
    .restart local v56       #type:Ljava/lang/String;
    :goto_584
    if-nez v56, :cond_58f

    .line 701
    const v5, 0x7f080285

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 704
    :cond_58f
    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/google/api/services/plusi/model/TaggedPhone;->value:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsSmsIntentRegistered:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1, v7}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_566

    .line 697
    .end local v56           #type:Ljava/lang/String;
    :cond_59f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v46

    iget-object v7, v0, Lcom/google/api/services/plusi/model/TaggedPhone;->tag:Lcom/google/api/services/plusi/model/ContactTag;

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForPhoneType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;

    move-result-object v56

    .restart local v56       #type:Ljava/lang/String;
    goto :goto_584

    .line 708
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v46           #phone:Lcom/google/api/services/plusi/model/TaggedPhone;
    .end local v56           #type:Ljava/lang/String;
    :cond_5ac
    if-eqz v25, :cond_5e7

    .line 709
    iget-object v5, v14, Lcom/google/api/services/plusi/model/Contacts;->address:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :goto_5b4
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/api/services/plusi/model/TaggedAddress;

    .line 710
    .local v11, address:Lcom/google/api/services/plusi/model/TaggedAddress;
    const/16 v56, 0x0

    .line 712
    .restart local v56       #type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    if-nez v5, :cond_5d2

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    iget-object v7, v11, Lcom/google/api/services/plusi/model/TaggedAddress;->tag:Lcom/google/api/services/plusi/model/ContactTag;

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getStringForAddress(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;

    move-result-object v56

    .line 716
    :cond_5d2
    if-nez v56, :cond_5dd

    .line 717
    const v5, 0x7f0802a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 720
    :cond_5dd
    iget-object v5, v11, Lcom/google/api/services/plusi/model/TaggedAddress;->value:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b4

    .line 724
    .end local v11           #address:Lcom/google/api/services/plusi/model/TaggedAddress;
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v56           #type:Ljava/lang/String;
    :cond_5e7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateContactSectionDividers()V

    .line 726
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_6e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->gender:Lcom/google/api/services/plusi/model/Gender;

    if-eqz v5, :cond_6e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->gender:Lcom/google/api/services/plusi/model/Gender;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Gender;->value:Ljava/lang/String;

    if-eqz v5, :cond_6e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->gender:Lcom/google/api/services/plusi/model/Gender;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Gender;->value:Ljava/lang/String;

    const-string v7, "UNKNOWN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e4

    const/16 v29, 0x1

    .line 731
    .local v29, hasGender:Z
    :goto_61c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_6e8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->birthday:Lcom/google/api/services/plusi/model/BirthdayField;

    if-eqz v5, :cond_6e8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->birthday:Lcom/google/api/services/plusi/model/BirthdayField;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/BirthdayField;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e8

    const/16 v26, 0x1

    .line 735
    .local v26, hasBirthday:Z
    :goto_640
    if-nez v29, :cond_644

    if-eqz v26, :cond_6ec

    :cond_644
    const/4 v5, 0x1

    :goto_645
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enablePersonalSection(Z)V

    .line 737
    if-eqz v29, :cond_704

    .line 738
    const-string v58, ""

    .line 739
    .local v58, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->gender:Lcom/google/api/services/plusi/model/Gender;

    iget-object v0, v5, Lcom/google/api/services/plusi/model/Gender;->value:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 740
    .local v22, gender:Ljava/lang/String;
    const-string v5, "MALE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6ef

    .line 741
    const v5, 0x7f08029e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 745
    :cond_66d
    :goto_66d
    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setGender(Ljava/lang/String;)V

    .line 750
    .end local v22           #gender:Ljava/lang/String;
    .end local v58           #value:Ljava/lang/String;
    :goto_674
    if-eqz v26, :cond_70c

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->birthday:Lcom/google/api/services/plusi/model/BirthdayField;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/BirthdayField;->value:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setBirthday(Ljava/lang/String;)V

    .line 756
    :goto_685
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updatePersonalSectionDividers()V

    .line 758
    const/16 v20, 0x0

    .line 759
    .local v20, employmentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_71e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    if-eqz v5, :cond_71e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Employments;->employment:Ljava/util/List;

    if-eqz v5, :cond_71e

    .line 764
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v50, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->employments:Lcom/google/api/services/plusi/model/Employments;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Employments;->employment:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_6bb
    :goto_6bb
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_714

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/api/services/plusi/model/Employment;

    .line 766
    .restart local v19       #employment:Lcom/google/api/services/plusi/model/Employment;
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/api/services/plusi/model/Employment;->employer:Ljava/lang/String;

    if-eqz v5, :cond_6bb

    .line 767
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6da

    .line 768
    const-string v5, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_6da
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/api/services/plusi/model/Employment;->employer:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6bb

    .line 726
    .end local v19           #employment:Lcom/google/api/services/plusi/model/Employment;
    .end local v20           #employmentText:Ljava/lang/String;
    .end local v26           #hasBirthday:Z
    .end local v29           #hasGender:Z
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v50           #sb:Ljava/lang/StringBuilder;
    :cond_6e4
    const/16 v29, 0x0

    goto/16 :goto_61c

    .line 731
    .restart local v29       #hasGender:Z
    :cond_6e8
    const/16 v26, 0x0

    goto/16 :goto_640

    .line 735
    .restart local v26       #hasBirthday:Z
    :cond_6ec
    const/4 v5, 0x0

    goto/16 :goto_645

    .line 742
    .restart local v22       #gender:Ljava/lang/String;
    .restart local v58       #value:Ljava/lang/String;
    :cond_6ef
    const-string v5, "FEMALE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66d

    .line 743
    const v5, 0x7f08029f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v58

    goto/16 :goto_66d

    .line 747
    .end local v22           #gender:Ljava/lang/String;
    .end local v58           #value:Ljava/lang/String;
    :cond_704
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setGender(Ljava/lang/String;)V

    goto/16 :goto_674

    .line 753
    :cond_70c
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_685

    .line 774
    .restart local v20       #employmentText:Ljava/lang/String;
    .restart local v37       #i$:Ljava/util/Iterator;
    .restart local v50       #sb:Ljava/lang/StringBuilder;
    :cond_714
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_71e

    .line 775
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 779
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v50           #sb:Ljava/lang/StringBuilder;
    :cond_71e
    const/16 v16, 0x0

    .line 780
    .local v16, educationText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_780

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    if-eqz v5, :cond_780

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Educations;->education:Ljava/util/List;

    if-eqz v5, :cond_780

    .line 785
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .restart local v50       #sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->educations:Lcom/google/api/services/plusi/model/Educations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Educations;->education:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_751
    :goto_751
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_776

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/api/services/plusi/model/Education;

    .line 787
    .restart local v15       #education:Lcom/google/api/services/plusi/model/Education;
    iget-object v5, v15, Lcom/google/api/services/plusi/model/Education;->school:Ljava/lang/String;

    if-eqz v5, :cond_751

    .line 788
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_76e

    .line 789
    const-string v5, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_76e
    iget-object v5, v15, Lcom/google/api/services/plusi/model/Education;->school:Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_751

    .line 795
    .end local v15           #education:Lcom/google/api/services/plusi/model/Education;
    :cond_776
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_780

    .line 796
    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 800
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v50           #sb:Ljava/lang/StringBuilder;
    :cond_780
    if-nez v20, :cond_784

    if-eqz v16, :cond_851

    :cond_784
    const/4 v5, 0x1

    :goto_785
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableWorkEducationSection(Z)V

    .line 802
    if-eqz v20, :cond_854

    .line 803
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEmploymentLocations(Ljava/lang/String;)V

    .line 808
    :goto_793
    if-eqz v16, :cond_85c

    .line 809
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEducationLocations(Ljava/lang/String;)V

    .line 815
    :goto_79c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateWorkEducationDividers()V

    .line 817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v5, :cond_864

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    if-eqz v5, :cond_864

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->currentLocation:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7dd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->otherLocation:Ljava/util/List;

    if-eqz v5, :cond_864

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->otherLocation:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_864

    :cond_7dd
    const/16 v33, 0x1

    .line 823
    .local v33, hasLocations:Z
    :goto_7df
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLocationsSection(Z)V

    .line 825
    if-eqz v33, :cond_868

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mMapLocationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLocationMap(Landroid/graphics/Bitmap;)V

    .line 828
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearLocations()V

    .line 830
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->currentLocation:Ljava/lang/String;

    if-eqz v5, :cond_81a

    .line 831
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->currentLocation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 832
    .local v11, address:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_81a

    .line 833
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addLocation(Ljava/lang/String;Z)V

    .line 837
    .end local v11           #address:Ljava/lang/String;
    :cond_81a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->otherLocation:Ljava/util/List;

    if-eqz v5, :cond_868

    .line 838
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/User;->locations:Lcom/google/api/services/plusi/model/Locations;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Locations;->otherLocation:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_834
    :goto_834
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_868

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 839
    .restart local v11       #address:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 840
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_834

    .line 841
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addLocation(Ljava/lang/String;Z)V

    goto :goto_834

    .line 800
    .end local v11           #address:Ljava/lang/String;
    .end local v33           #hasLocations:Z
    .end local v37           #i$:Ljava/util/Iterator;
    :cond_851
    const/4 v5, 0x0

    goto/16 :goto_785

    .line 805
    :cond_854
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEmploymentLocations(Ljava/lang/String;)V

    goto/16 :goto_793

    .line 812
    :cond_85c
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setEducationLocations(Ljava/lang/String;)V

    goto/16 :goto_79c

    .line 817
    :cond_864
    const/16 v33, 0x0

    goto/16 :goto_7df

    .line 847
    .restart local v33       #hasLocations:Z
    :cond_868
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateLocationsSectionDividers()V

    .line 848
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->enableLinksSection(Z)V

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->clearLinks()V

    .line 851
    if-eqz v31, :cond_8c2

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    iget-object v5, v5, Lcom/google/api/services/plusi/model/Links;->link:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37       #i$:Ljava/util/Iterator;
    :cond_885
    :goto_885
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c2

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/google/api/services/plusi/model/ProfilesLink;

    .line 853
    .local v40, link:Lcom/google/api/services/plusi/model/ProfilesLink;
    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/google/api/services/plusi/model/ProfilesLink;->url:Ljava/lang/String;

    if-eqz v5, :cond_885

    .line 854
    const/16 v56, 0x0

    .line 855
    .restart local v56       #type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    if-eqz v5, :cond_8a8

    .line 856
    const v5, 0x7f0802aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 860
    :cond_8a8
    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/google/api/services/plusi/model/ProfilesLink;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFaviconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 862
    .local v13, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/google/api/services/plusi/model/ProfilesLink;->url:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/google/api/services/plusi/model/ProfilesLink;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v7, v13, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->addLink(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_885

    .line 867
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v40           #link:Lcom/google/api/services/plusi/model/ProfilesLink;
    .end local v56           #type:Ljava/lang/String;
    :cond_8c2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->updateLinksSectionDividers()V

    .line 869
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    if-eqz v5, :cond_8d6

    .line 870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mCircleNames:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setCircles(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 871
    :cond_8d6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    if-eqz v5, :cond_8e1

    .line 872
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->showAddToCircles()V

    goto/16 :goto_6

    .line 873
    :cond_8e1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    if-eqz v5, :cond_8ec

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->showBlocked()V

    goto/16 :goto_6

    .line 875
    :cond_8ec
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    if-eqz v5, :cond_6

    .line 876
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->showProgress()V

    goto/16 :goto_6
.end method

.method public bindStreamView(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 136
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-nez v1, :cond_4a

    .line 137
    const-string v1, "ProfileAdapter"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 138
    const-string v1, "ProfileAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindView(); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/google/android/apps/plus/views/ProfileAboutView;

    .line 141
    .local v0, profileView:Lcom/google/android/apps/plus/views/ProfileAboutView;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mViewIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->init(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getDisplayPolicies()Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setDisplayPolicies(Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;)V

    .line 143
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfileLoadFailed:Z

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->showError(ZLjava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-eqz v1, :cond_49

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->bindProfileAboutView(Lcom/google/android/apps/plus/views/ProfileAboutView;)V

    .line 146
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfileViewOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setOnClickListener(Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;)V

    .line 151
    .end local v0           #profileView:Lcom/google/android/apps/plus/views/ProfileAboutView;
    :cond_49
    :goto_49
    return-void

    .line 149
    :cond_4a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->bindStreamView(Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_49
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPolicies()Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 219
    new-instance v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;-><init>()V

    .line 221
    .local v0, dp:Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;
    sget-object v1, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v1, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    packed-switch v1, :pswitch_data_3a

    .line 233
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_36

    .line 234
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    .line 235
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showDetailsAlways:Z

    .line 243
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsUnclaimedLocalPlusPage:Z

    if-eqz v1, :cond_1f

    .line 244
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-nez v1, :cond_1f

    .line 245
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showDetailsAlways:Z

    .line 249
    :cond_1f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsMyProfile:Z

    if-eqz v1, :cond_29

    .line 250
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_29

    .line 251
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->hideButtons:Z

    .line 255
    :cond_29
    return-object v0

    .line 223
    :pswitch_2a
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    .line 224
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v1, :cond_33

    .line 225
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showDetailsAlways:Z

    goto :goto_15

    .line 227
    :cond_33
    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showExpandButtonText:Z

    goto :goto_15

    .line 237
    :cond_36
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$DisplayPolicies;->showInfoIcons:Z

    goto :goto_15

    .line 221
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2a
    .end packed-switch
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 174
    if-nez p1, :cond_5

    .line 175
    const-wide/16 v0, 0x0

    .line 177
    :goto_4
    return-wide v0

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_4
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 155
    if-nez p1, :cond_b

    .line 156
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    .line 158
    :goto_8
    return v0

    .line 156
    :cond_9
    const/4 v0, 0x7

    goto :goto_8

    .line 158
    :cond_b
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_8
.end method

.method public getLayoutParams()Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .registers 10

    .prologue
    .line 182
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v5, :cond_2c

    const/4 v3, 0x1

    .line 185
    .local v3, orientation:I
    :goto_5
    const/4 v4, -0x3

    .line 188
    .local v4, size:I
    sget-object v5, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v5, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    packed-switch v5, :pswitch_data_34

    .line 196
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-eqz v5, :cond_31

    .line 197
    sget-object v5, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    iget v5, v5, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    int-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L

    mul-double/2addr v5, v7

    double-to-int v4, v5

    .line 202
    :goto_1d
    const/4 v2, 0x1

    .line 203
    .local v2, minorSpan:I
    const/4 v1, 0x1

    .line 208
    .local v1, majorSpan:I
    :goto_1f
    new-instance v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    .line 211
    .local v0, lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mLandscape:Z

    if-nez v5, :cond_2b

    .line 212
    const/4 v5, -0x2

    iput v5, v0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    .line 215
    :cond_2b
    return-object v0

    .line 182
    .end local v0           #lp:Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
    .end local v1           #majorSpan:I
    .end local v2           #minorSpan:I
    .end local v3           #orientation:I
    .end local v4           #size:I
    :cond_2c
    const/4 v3, 0x2

    goto :goto_5

    .line 190
    .restart local v3       #orientation:I
    .restart local v4       #size:I
    :pswitch_2e
    const/4 v2, 0x2

    .line 191
    .restart local v2       #minorSpan:I
    const/4 v1, 0x2

    .line 192
    .restart local v1       #majorSpan:I
    goto :goto_1f

    .line 199
    .end local v1           #majorSpan:I
    .end local v2           #minorSpan:I
    :cond_31
    const/4 v4, -0x3

    goto :goto_1d

    .line 188
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method getString(I)Ljava/lang/String;
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "resourceId"
    .parameter "formatArgs"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(Ljava/lang/String;ZZZLcom/google/android/apps/plus/fragments/CircleNameResolver;)V
    .registers 6
    .parameter "personId"
    .parameter "isMyProfile"
    .parameter "hasProfile"
    .parameter "isSmsIntentRegistered"
    .parameter "circleNameResolver"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPersonId:Ljava/lang/String;

    .line 97
    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsMyProfile:Z

    .line 98
    iput-boolean p3, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mHasProfile:Z

    .line 99
    iput-boolean p4, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsSmsIntentRegistered:Z

    .line 100
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 101
    return-void
.end method

.method public isBlocked()Z
    .registers 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsBlocked:Z

    return v0
.end method

.method public isLocalPlusPage()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsLocalPlusPage:Z

    return v0
.end method

.method public isPlusPage()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    return v0
.end method

.method public newStreamView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 116
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_4f

    .line 117
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300a1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ProfileAboutView;

    .line 121
    .local v1, view:Lcom/google/android/apps/plus/views/ProfileAboutView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getLayoutParams()Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2d

    .line 123
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/ProfileAboutView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 125
    :cond_2d
    const-string v2, "ProfileAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 126
    const-string v2, "ProfileAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newView() -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Lcom/google/android/apps/plus/views/ProfileAboutView;
    :cond_4e
    :goto_4e
    return-object v1

    :cond_4f
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->newStreamView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_4e
.end method

.method public setBlockInProgress(Z)V
    .registers 2
    .parameter "inProgress"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mBlockRequestPending:Z

    .line 349
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateCircleList()V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 351
    return-void
.end method

.method public setContactData(Landroid/database/Cursor;)V
    .registers 5
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mDisplayName:Ljava/lang/String;

    .line 321
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPackedCircleIds:Ljava/lang/String;

    .line 322
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_27

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsBlocked:Z

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateFullName(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateCircleList()V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-eqz v0, :cond_26

    .line 326
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 328
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 322
    goto :goto_15
.end method

.method public setFavicons(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFavicons:Ljava/util/HashMap;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_9
    return-void
.end method

.method public setLocationMapBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mMapLocationBitmap:Landroid/graphics/Bitmap;

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-eqz v0, :cond_9

    .line 412
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 414
    :cond_9
    return-void
.end method

.method public setOnClickListener(Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfileViewOnClickListener:Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;

    .line 105
    return-void
.end method

.method public setPlusOneData(IZ)V
    .registers 3
    .parameter "plusOnes"
    .parameter "plusOneByMe"

    .prologue
    .line 342
    iput p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOnes:I

    .line 343
    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPlusOneByMe:Z

    .line 344
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 345
    return-void
.end method

.method public setProfileData(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 7
    .parameter "data"

    .prologue
    const/4 v4, 0x2

    .line 267
    if-nez p1, :cond_4

    .line 317
    :goto_3
    return-void

    .line 271
    :cond_4
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 272
    iget-object v2, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-nez v2, :cond_5e

    .line 277
    new-instance v2, Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-direct {v2}, Lcom/google/api/services/plusi/model/SimpleProfile;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    .line 278
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    const-string v3, "USER"

    iput-object v3, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    .line 280
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPersonId:Ljava/lang/String;

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 281
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    new-instance v3, Lcom/google/api/services/plusi/model/CommonContent;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/CommonContent;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    .line 282
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    new-instance v3, Lcom/google/api/services/plusi/model/Contacts;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/Contacts;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    .line 283
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    .line 284
    new-instance v0, Lcom/google/api/services/plusi/model/TaggedEmail;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/TaggedEmail;-><init>()V

    .line 285
    .local v0, email:Lcom/google/api/services/plusi/model/TaggedEmail;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPersonId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/api/services/plusi/model/TaggedEmail;->value:Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/Contacts;->email:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v0           #email:Lcom/google/api/services/plusi/model/TaggedEmail;
    :cond_5e
    :goto_5e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    if-eqz v2, :cond_95

    .line 298
    const-string v2, "USER"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 299
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    if-eqz v2, :cond_92

    .line 300
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/Name;->given:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mGivenName:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/Name;->family:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mFamilyName:Ljava/lang/String;

    .line 303
    :cond_92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    .line 313
    :cond_95
    :goto_95
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateFullName(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateCircleList()V

    .line 316
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 287
    :cond_a0
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPersonId:Ljava/lang/String;

    const-string v3, "p:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 288
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    new-instance v3, Lcom/google/api/services/plusi/model/CommonContent;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/CommonContent;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    .line 289
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    new-instance v3, Lcom/google/api/services/plusi/model/Contacts;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/Contacts;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    .line 290
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    .line 291
    new-instance v1, Lcom/google/api/services/plusi/model/TaggedPhone;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/TaggedPhone;-><init>()V

    .line 292
    .local v1, phone:Lcom/google/api/services/plusi/model/TaggedPhone;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPersonId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/api/services/plusi/model/TaggedPhone;->value:Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/Contacts;->phone:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    .line 304
    .end local v1           #phone:Lcom/google/api/services/plusi/model/TaggedPhone;
    :cond_e5
    const-string v2, "PLUSPAGE"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsPlusPage:Z

    .line 306
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsLocalPageData;->isLocalPage(Lcom/google/api/services/plusi/model/SimpleProfile;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsLocalPlusPage:Z

    .line 307
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsLocalPlusPage:Z

    if-eqz v2, :cond_95

    .line 308
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsLocalPageData;->isUnclaimed(Lcom/google/api/services/plusi/model/SimpleProfile;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsUnclaimedLocalPlusPage:Z

    goto :goto_95
.end method

.method public setViewIsExpanded(Z)V
    .registers 2
    .parameter "isExpanded"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mViewIsExpanded:Z

    .line 355
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 3
    .parameter "errorText"

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfileLoadFailed:Z

    .line 359
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mErrorText:Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method public updateCircleList()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsMyProfile:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsUnclaimedLocalPlusPage:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mProfile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 368
    :cond_16
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    .line 383
    :goto_1e
    return-void

    .line 369
    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mBlockRequestPending:Z

    if-eqz v0, :cond_2c

    .line 370
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    .line 371
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    goto :goto_1e

    .line 372
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mIsBlocked:Z

    if-eqz v0, :cond_39

    .line 373
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    .line 374
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    goto :goto_1e

    .line 375
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPackedCircleIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 376
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    .line 377
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    goto :goto_1e

    .line 379
    :cond_4a
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowBlocked:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowProgress:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowAddToCircles:Z

    .line 380
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mShowCircles:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNameListForPackedIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->mCircleNames:Ljava/util/ArrayList;

    goto :goto_1e
.end method
