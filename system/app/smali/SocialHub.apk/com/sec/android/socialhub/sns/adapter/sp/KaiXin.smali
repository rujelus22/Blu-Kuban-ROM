.class public Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "KaiXin.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field protected mCommentId:Ljava/lang/String;

.field protected mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;->MAX_RECIPIENTS:I

    .line 28
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/KaiXinConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/KaiXinConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    .line 31
    return-void
.end method


# virtual methods
.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 195
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 197
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 198
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 199
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 201
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 203
    :cond_32
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->alphaReply(I)V

    .line 204
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 207
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

    .line 209
    :cond_52
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 211
    :cond_5b
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 152
    const v0, 0x7f0200b6

    return v0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_18

    .line 146
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 134
    :pswitch_7
    const v0, 0x7f0200b6

    goto :goto_6

    .line 137
    :pswitch_b
    const v0, 0x7f020079

    goto :goto_6

    .line 140
    :pswitch_f
    const v0, 0x7f02007a

    goto :goto_6

    .line 143
    :pswitch_13
    const v0, 0x7f020078

    goto :goto_6

    .line 131
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
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, ret:I
    packed-switch p1, :pswitch_data_12

    .line 188
    :goto_4
    return v0

    .line 172
    :pswitch_5
    const/16 v0, 0x118

    .line 173
    goto :goto_4

    .line 176
    :pswitch_8
    const/16 v0, 0x118

    .line 177
    goto :goto_4

    .line 180
    :pswitch_b
    const/16 v0, 0x1b6

    .line 181
    goto :goto_4

    .line 184
    :pswitch_e
    const/16 v0, 0x14

    goto :goto_4

    .line 169
    nop

    :pswitch_data_12
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
    .line 162
    const v0, 0x7f02004a

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 157
    const v0, 0x7f02007a

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    const-string v0, "com.sec.android.app.snsaccountkx.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x6

    return v0
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_a

    .line 245
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 242
    :pswitch_5
    const v0, 0x7f080036

    goto :goto_4

    .line 239
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    packed-switch p1, :pswitch_data_14

    .line 272
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 270
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 264
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 267
    goto :goto_f

    .line 251
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_f
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

    .line 41
    packed-switch p1, :pswitch_data_2c

    .line 125
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 122
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 62
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 71
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 74
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 77
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 83
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 89
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 95
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 98
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 101
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 104
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 107
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 110
    goto :goto_f

    :pswitch_28
    move v0, v1

    .line 113
    goto :goto_f

    :pswitch_2a
    move v0, v1

    .line 116
    goto :goto_f

    .line 41
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_f
        :pswitch_18
        :pswitch_f
        :pswitch_1a
        :pswitch_f
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_28
        :pswitch_2a
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
    .line 285
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 286
    .local v8, bundle:Landroid/os/Bundle;
    const/4 v9, -0x1

    .line 288
    .local v9, ret:I
    packed-switch p4, :pswitch_data_5c

    :goto_8
    move v0, v9

    .line 312
    :goto_9
    return v0

    .line 292
    :pswitch_a
    const-string v0, "taISpType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    .line 293
    const-string v0, "taActivityId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActivityID:Ljava/lang/String;

    .line 294
    const-string v0, "taActorId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    .line 295
    const-string v0, "taCommentId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;->mCommentId:Ljava/lang/String;

    .line 296
    const-string v0, "taCommnetType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    .line 297
    const-string v0, "taContent"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    .line 299
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;->getLimitation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 301
    const/4 v0, -0x1

    goto :goto_9

    .line 304
    :cond_49
    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/KaiXin;->mCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentPost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_8

    .line 288
    nop

    :pswitch_data_5c
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

    .line 218
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 220
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 222
    :cond_17
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 225
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 227
    :cond_3f
    return-void
.end method
