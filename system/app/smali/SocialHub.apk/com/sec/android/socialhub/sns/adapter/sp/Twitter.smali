.class public Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "Twitter.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field private mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

.field private mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

.field private mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field private mTwitterID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->MAX_RECIPIENTS:I

    .line 51
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 63
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/TwitterConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/TwitterConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 64
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 65
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Lcom/sec/android/socialhub/feedslist/FeedView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mTwitterID:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "adapter"

    .prologue
    const/4 v7, 0x1

    .line 439
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V

    .line 441
    const v4, 0x7f0b008c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, background:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 445
    .local v3, wrapper:Lcom/sec/android/socialhub/feedslist/FeedView;
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-nez v4, :cond_20

    .line 447
    new-instance v4, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-direct {v4, p2}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 452
    :cond_20
    const/4 v4, 0x6

    :try_start_21
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->isSupport(I)Z

    move-result v4

    if-ne v4, v7, :cond_66

    .line 454
    instance-of v4, p4, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;

    if-nez v4, :cond_66

    .line 456
    iget-object v4, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrOwnerName:Ljava/lang/String;

    .line 458
    iget-object v4, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v6, v6, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrOwnerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/socialhub/util/SocialHubUtil;->isMentioned(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 460
    .local v2, isMentioned:Z
    if-ne v2, v7, :cond_66

    .line 462
    const/16 v4, 0xff

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_66
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_21 .. :try_end_66} :catch_67

    .line 471
    .end local v2           #isMentioned:Z
    :cond_66
    :goto_66
    return-void

    .line 467
    :catch_67
    move-exception v1

    .line 469
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_66
.end method

.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 263
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 265
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 266
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 268
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFavorite:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 270
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 273
    :cond_26
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwardable:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 275
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 277
    :cond_35
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 190
    const v0, 0x7f0200bd

    return v0
.end method

.method public getDrawable(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 329
    const/4 v0, -0x1

    .line 331
    .local v0, resource:I
    packed-switch p1, :pswitch_data_12

    .line 347
    :goto_4
    return v0

    .line 334
    :pswitch_5
    const v0, 0x7f02004c

    .line 336
    goto :goto_4

    .line 339
    :pswitch_9
    const v0, 0x7f02004d

    .line 340
    goto :goto_4

    .line 343
    :pswitch_d
    const v0, 0x7f020054

    goto :goto_4

    .line 331
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "httpStatus"
    .parameter "errCode"
    .parameter "subErrorCode"
    .parameter "reason"

    .prologue
    .line 239
    packed-switch p3, :pswitch_data_20

    .line 257
    :goto_3
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 242
    :pswitch_8
    packed-switch p4, :pswitch_data_2a

    .line 249
    :pswitch_b
    packed-switch p4, :pswitch_data_30

    goto :goto_3

    .line 253
    :pswitch_f
    const v0, 0x7f0800b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 245
    :pswitch_17
    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 239
    nop

    :pswitch_data_20
    .packed-switch 0xf64
        :pswitch_8
        :pswitch_3
        :pswitch_b
    .end packed-switch

    .line 242
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    .line 249
    :pswitch_data_30
    .packed-switch 0x9a00
        :pswitch_f
    .end packed-switch
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_18

    .line 184
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 172
    :pswitch_7
    const v0, 0x7f0200bd

    goto :goto_6

    .line 175
    :pswitch_b
    const v0, 0x7f020099

    goto :goto_6

    .line 178
    :pswitch_f
    const v0, 0x7f02009a

    goto :goto_6

    .line 181
    :pswitch_13
    const v0, 0x7f020098

    goto :goto_6

    .line 169
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public getLimitation(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, ret:I
    packed-switch p1, :pswitch_data_14

    .line 230
    :goto_4
    return v0

    .line 210
    :pswitch_5
    const/16 v0, 0x8c

    .line 211
    goto :goto_4

    .line 214
    :pswitch_8
    const/16 v0, 0x8c

    .line 215
    goto :goto_4

    .line 218
    :pswitch_b
    const/16 v0, 0x8c

    .line 219
    goto :goto_4

    .line 222
    :pswitch_e
    const/4 v0, 0x1

    .line 223
    goto :goto_4

    .line 226
    :pswitch_10
    const/16 v0, 0xf

    goto :goto_4

    .line 207
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public getReplyImageSource()I
    .registers 2

    .prologue
    .line 200
    const v0, 0x7f020054

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 195
    const v0, 0x7f02009a

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 640
    const-string v0, "com.sec.android.app.snsaccounttw.SetupAccount"

    return-object v0
.end method

.method public getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x2

    return v0
.end method

.method public getString(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 306
    const/4 v0, -0x1

    .line 308
    .local v0, resource:I
    packed-switch p1, :pswitch_data_12

    .line 323
    :goto_4
    return v0

    .line 311
    :pswitch_5
    const v0, 0x7f08005e

    .line 312
    goto :goto_4

    .line 315
    :pswitch_9
    const v0, 0x7f08005d

    .line 316
    goto :goto_4

    .line 319
    :pswitch_d
    const v0, 0x7f080055

    goto :goto_4

    .line 308
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "type"
    .parameter "str"

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 653
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_1a

    .line 660
    :goto_4
    return-object v0

    .line 656
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 653
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 582
    packed-switch p1, :pswitch_data_a

    .line 588
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 585
    :pswitch_5
    const v0, 0x7f080032

    goto :goto_4

    .line 582
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public isFriend(Ljava/lang/String;)Z
    .registers 4
    .parameter "isFriend"

    .prologue
    .line 624
    :try_start_0
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_12

    move-result v1

    if-eqz v1, :cond_16

    .line 625
    :cond_10
    const/4 v1, 0x1

    .line 632
    :goto_11
    return v1

    .line 627
    :catch_12
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    .end local v0           #e:Ljava/lang/Exception;
    :cond_16
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isLikeOrFavorite(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 291
    if-eqz p1, :cond_c

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 293
    const/4 v0, 0x1

    .line 297
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isNeeds(I)Z
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 594
    packed-switch p1, :pswitch_data_12

    .line 617
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 615
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    goto :goto_f

    .line 594
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    packed-switch p1, :pswitch_data_28

    .line 163
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 160
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 91
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 94
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 100
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 103
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 106
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 118
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 121
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 127
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 130
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 136
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 151
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 160
    goto :goto_f

    .line 79
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1c
        :pswitch_f
        :pswitch_1e
        :pswitch_20
        :pswitch_f
        :pswitch_22
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_24
        :pswitch_f
        :pswitch_f
        :pswitch_26
    .end packed-switch
.end method

.method public onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I
    .registers 11
    .parameter "service"
    .parameter "context"
    .parameter "intent"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 477
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 478
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, -0x1

    .line 480
    .local v1, ret:I
    packed-switch p4, :pswitch_data_38

    move v3, v1

    .line 499
    :goto_a
    return v3

    .line 484
    :pswitch_b
    const-string v3, "taISpType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    .line 485
    const-string v3, "taContent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    .line 487
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getLimitation(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 489
    const/4 v3, -0x1

    goto :goto_a

    .line 492
    :cond_29
    new-array v2, v5, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    aput v4, v2, v3

    .line 494
    .local v2, snsSpTypeList:[I
    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I

    move-result v1

    move v3, v1

    .line 496
    goto :goto_a

    .line 480
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V
    .registers 13
    .parameter "context"
    .parameter "inflator"
    .parameter "menu"
    .parameter "what"

    .prologue
    const/4 v7, 0x1

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V

    .line 355
    const v6, 0x7f0b0133

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 356
    .local v5, status:Landroid/view/MenuItem;
    const v6, 0x7f0b0136

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 357
    .local v3, newtweet:Landroid/view/MenuItem;
    const v6, 0x7f0b013a

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 358
    .local v2, mention:Landroid/view/MenuItem;
    const v6, 0x7f0b013b

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 359
    .local v0, favourites:Landroid/view/MenuItem;
    const v6, 0x7f0b013c

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 360
    .local v1, lists:Landroid/view/MenuItem;
    const v6, 0x7f0b013d

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 362
    .local v4, search:Landroid/view/MenuItem;
    if-eqz v2, :cond_33

    .line 363
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 365
    :cond_33
    if-eqz v0, :cond_38

    .line 366
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    :cond_38
    if-eqz v1, :cond_3d

    .line 369
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 371
    :cond_3d
    if-eqz v4, :cond_42

    .line 372
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :cond_42
    if-eqz v5, :cond_48

    .line 375
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    :cond_48
    if-eqz v3, :cond_4d

    .line 378
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    :cond_4d
    return-void
.end method

.method public onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V

    .line 386
    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 432
    :cond_a
    :goto_a
    return-void

    .line 391
    :cond_b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    :pswitch_12
    goto :goto_a

    .line 424
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 428
    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 394
    :pswitch_25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    const-string v1, "sptype"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v1, "title"

    const v2, 0x7f0800d4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v1, "view"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 402
    :pswitch_46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v1, "sptype"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v1, "title"

    const v2, 0x7f0800d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 410
    :pswitch_67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    const-string v1, "param"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v1, "view_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 417
    :pswitch_80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    const-string v1, "param"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v1, "view_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 391
    :pswitch_data_9a
    .packed-switch 0x7f0b0136
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_25
        :pswitch_46
        :pswitch_67
        :pswitch_80
    .end packed-switch
.end method

.method public onPreCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onPreCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 509
    const/4 v0, 0x0

    .line 511
    .local v0, twitter_follow:Landroid/view/MenuItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 513
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    if-nez v1, :cond_1c

    .line 515
    const-string v1, "Twitter"

    const-string v2, "onPreCreateContextMenu()"

    const-string v3, "FeedView is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1b
    :goto_1b
    return-void

    .line 519
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-eqz v1, :cond_36

    .line 521
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->getSpType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 527
    :cond_36
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFriend:Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 529
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mFeed:Lcom/sec/android/socialhub/feedslist/FeedView;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFriend:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->isFriend(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 531
    const v1, 0x7f080062

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 539
    :cond_55
    :goto_55
    if-eqz v0, :cond_1b

    .line 541
    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1b

    .line 535
    :cond_60
    const v1, 0x7f080061

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_55
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 5
    .parameter "view"
    .parameter "layout"

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 284
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Twitter;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->getRetweetListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method
