.class public Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "Mixi.java"


# static fields
.field public static final deeplink:[Ljava/lang/String;

.field private static mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;


# instance fields
.field private final MAX_RECIPIENTS:I

.field private mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->deeplink:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->MAX_RECIPIENTS:I

    .line 41
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/MixiConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/MixiConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;

    .line 47
    return-void
.end method


# virtual methods
.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 6
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 208
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 210
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 212
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 214
    :cond_26
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 215
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 216
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 218
    invoke-virtual {p1, v3}, Lcom/sec/android/socialhub/feedslist/FeedView;->setVisibleView(I)V

    .line 223
    :cond_4d
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 224
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 225
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 226
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 228
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_83

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 230
    :cond_83
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 233
    :cond_8c
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 164
    const v0, 0x7f020115

    return v0
.end method

.method public getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "httpStatus"
    .parameter "errCode"
    .parameter "subErrorCode"
    .parameter "reason"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, str:Ljava/lang/String;
    packed-switch p3, :pswitch_data_16

    .line 372
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_8
    return-object v0

    .line 364
    :pswitch_9
    packed-switch p4, :pswitch_data_1c

    goto :goto_8

    .line 367
    :pswitch_d
    const v1, 0x7f080125

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 361
    nop

    :pswitch_data_16
    .packed-switch 0xf65
        :pswitch_9
    .end packed-switch

    .line 364
    :pswitch_data_1c
    .packed-switch 0x99f4
        :pswitch_d
    .end packed-switch
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    const v0, 0x7f020115

    .line 142
    packed-switch p1, :pswitch_data_10

    .line 157
    :goto_6
    :pswitch_6
    return v0

    .line 145
    :pswitch_7
    const v0, 0x7f020118

    goto :goto_6

    .line 151
    :pswitch_b
    const v0, 0x7f020116

    goto :goto_6

    .line 142
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public getLimitation(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, ret:I
    packed-switch p1, :pswitch_data_10

    .line 202
    :goto_4
    return v0

    .line 185
    :pswitch_5
    const/16 v0, 0x1f40

    .line 186
    goto :goto_4

    .line 189
    :pswitch_8
    const/16 v0, 0x96

    .line 190
    goto :goto_4

    .line 193
    :pswitch_b
    const/16 v0, 0x1f40

    .line 194
    goto :goto_4

    .line 197
    :pswitch_e
    const/4 v0, 0x1

    goto :goto_4

    .line 182
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method public getReplyImageSource()I
    .registers 2

    .prologue
    .line 174
    const v0, 0x7f02004b

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 169
    const v0, 0x7f020116

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    const-string v0, "com.sec.android.app.snsaccountmx.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 267
    const/16 v0, 0xd

    return v0
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_a

    .line 289
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 283
    :pswitch_5
    const v0, 0x7f0800b5

    goto :goto_4

    .line 277
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
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
    const/4 v0, 0x0

    .line 297
    packed-switch p1, :pswitch_data_10

    .line 317
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 303
    :pswitch_d
    const/4 v0, 0x1

    .line 315
    :pswitch_e
    return v0

    .line 297
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    packed-switch p1, :pswitch_data_2e

    .line 136
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 133
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 73
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 79
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 82
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 85
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 88
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 100
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 106
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 112
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 115
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 118
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 121
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 124
    goto :goto_f

    :pswitch_28
    move v0, v1

    .line 127
    goto :goto_f

    :pswitch_2a
    move v0, v1

    .line 130
    goto :goto_f

    :pswitch_2c
    move v0, v1

    .line 133
    goto :goto_f

    .line 52
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_f
        :pswitch_1c
        :pswitch_f
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_28
        :pswitch_2a
        :pswitch_2c
    .end packed-switch
.end method

.method public requestCommentFavoritePost(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 14
    .parameter "info"

    .prologue
    .line 333
    const/4 v11, -0x1

    .line 335
    .local v11, isSuccess:I
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    iget-object v3, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentType:Ljava/lang/String;

    const-string v6, "favorite"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v8, v8, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFavorite:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v9, v9, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentFavoritePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v11

    .line 349
    if-gez v11, :cond_3c

    .line 351
    const-string v0, "TAG"

    const-string v1, "onClick()"

    const-string v2, "isSuccess is -1!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_3c
    return-void
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 243
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Mixi;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;->getCommentListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 249
    :cond_26
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 255
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 259
    :cond_4e
    return-void
.end method
