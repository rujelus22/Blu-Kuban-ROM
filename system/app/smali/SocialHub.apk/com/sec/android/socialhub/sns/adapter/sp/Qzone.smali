.class public Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "Qzone.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field protected mCommentId:Ljava/lang/String;

.field protected mCommentSubId:Ljava/lang/String;

.field protected mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->MAX_RECIPIENTS:I

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/QzoneConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/QzoneConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 30
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 31
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    .line 32
    return-void
.end method


# virtual methods
.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 197
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 199
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 200
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 201
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 203
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 205
    :cond_32
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->alphaReply(I)V

    .line 206
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 209
    :cond_40
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 211
    :cond_52
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 213
    :cond_5b
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 155
    const v0, 0x7f0200bb

    return v0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_18

    .line 149
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 137
    :pswitch_7
    const v0, 0x7f0200bb

    goto :goto_6

    .line 140
    :pswitch_b
    const v0, 0x7f02008d

    goto :goto_6

    .line 143
    :pswitch_f
    const v0, 0x7f02008e

    goto :goto_6

    .line 146
    :pswitch_13
    const v0, 0x7f02008c

    goto :goto_6

    .line 134
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
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, ret:I
    packed-switch p1, :pswitch_data_10

    .line 191
    :goto_4
    return v0

    .line 175
    :pswitch_5
    const/16 v0, 0x118

    .line 176
    goto :goto_4

    .line 179
    :pswitch_8
    const/16 v0, 0x118

    .line 180
    goto :goto_4

    .line 183
    :pswitch_b
    const/4 v0, 0x0

    .line 184
    goto :goto_4

    .line 187
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_4

    .line 172
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method public getReplyImageSource()I
    .registers 2

    .prologue
    .line 165
    const v0, 0x7f02004a

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 160
    const v0, 0x7f02008e

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    const-string v0, "com.sec.android.app.snsaccountqz.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 235
    const/16 v0, 0xf

    return v0
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_a

    .line 247
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 244
    :pswitch_5
    const v0, 0x7f080038

    goto :goto_4

    .line 241
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 253
    packed-switch p1, :pswitch_data_12

    .line 274
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 272
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    goto :goto_f

    .line 253
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    packed-switch p1, :pswitch_data_34

    .line 127
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 124
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 52
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 55
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 58
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 61
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 64
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 73
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 76
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 79
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 85
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 91
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 97
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 100
    goto :goto_f

    :pswitch_28
    move v0, v1

    .line 103
    goto :goto_f

    :pswitch_2a
    move v0, v1

    .line 106
    goto :goto_f

    :pswitch_2c
    move v0, v1

    .line 109
    goto :goto_f

    :pswitch_2e
    move v0, v1

    .line 112
    goto :goto_f

    :pswitch_30
    move v0, v1

    .line 115
    goto :goto_f

    :pswitch_32
    move v0, v1

    .line 118
    goto :goto_f

    .line 43
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_18
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_f
        :pswitch_20
        :pswitch_f
        :pswitch_22
        :pswitch_f
        :pswitch_24
        :pswitch_26
        :pswitch_28
        :pswitch_2a
        :pswitch_2c
        :pswitch_2e
        :pswitch_30
        :pswitch_32
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I
    .registers 15
    .parameter "service"
    .parameter "context"
    .parameter "intent"
    .parameter "type"

    .prologue
    .line 287
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 288
    .local v8, bundle:Landroid/os/Bundle;
    const/4 v9, -0x1

    .line 290
    .local v9, ret:I
    packed-switch p4, :pswitch_data_64

    :goto_8
    move v0, v9

    .line 315
    :goto_9
    return v0

    .line 294
    :pswitch_a
    const-string v0, "taISpType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    .line 295
    const-string v0, "taActivityId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActivityID:Ljava/lang/String;

    .line 296
    const-string v0, "taActorId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    .line 297
    const-string v0, "taCommentId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->mCommentId:Ljava/lang/String;

    .line 298
    const-string v0, "taCommentSubId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->mCommentSubId:Ljava/lang/String;

    .line 299
    const-string v0, "taCommnetType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    .line 300
    const-string v0, "taContent"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    .line 302
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->getLimitation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 304
    const/4 v0, -0x1

    goto :goto_9

    .line 307
    :cond_51
    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->mCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Qzone;->mCommentSubId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentPost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_8

    .line 290
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 222
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 224
    :cond_17
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 227
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 229
    :cond_3f
    return-void
.end method
