.class public Lcom/sec/android/socialhub/sns/adapter/sp/Me2day;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "Me2day.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field private mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Me2day;->MAX_RECIPIENTS:I

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/Me2dayConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/Me2dayConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 36
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Me2day;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 229
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 230
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 231
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 233
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 235
    :cond_29
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 238
    :cond_32
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 243
    :cond_44
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 163
    const v0, 0x7f0200b8

    return v0
.end method

.method public getDrawable(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 281
    const/4 v0, -0x1

    .line 283
    .local v0, resource:I
    sparse-switch p1, :sswitch_data_16

    .line 302
    :goto_4
    return v0

    .line 286
    :sswitch_5
    const v0, 0x7f020051

    .line 287
    goto :goto_4

    .line 290
    :sswitch_9
    const v0, 0x7f020051

    .line 291
    goto :goto_4

    .line 294
    :sswitch_d
    const v0, 0x7f020054

    .line 295
    goto :goto_4

    .line 298
    :sswitch_11
    const v0, 0x7f0200f6

    goto :goto_4

    .line 283
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_9
        0x3 -> :sswitch_d
        0x14 -> :sswitch_11
    .end sparse-switch
.end method

.method public getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "httpStatus"
    .parameter "errCode"
    .parameter "subErrorCode"
    .parameter "reason"

    .prologue
    .line 204
    packed-switch p3, :pswitch_data_1c

    .line 221
    :goto_3
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 207
    :pswitch_8
    packed-switch p4, :pswitch_data_22

    goto :goto_3

    .line 211
    :pswitch_c
    const v0, 0x7f080117

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 215
    :pswitch_14
    const v0, 0x7f080118

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 204
    :pswitch_data_1c
    .packed-switch 0xe2e
        :pswitch_8
    .end packed-switch

    .line 207
    :pswitch_data_22
    .packed-switch 0x8dd2
        :pswitch_c
        :pswitch_14
    .end packed-switch
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_18

    .line 157
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 145
    :pswitch_7
    const v0, 0x7f0200b8

    goto :goto_6

    .line 148
    :pswitch_b
    const v0, 0x7f02007f

    goto :goto_6

    .line 151
    :pswitch_f
    const v0, 0x7f020080

    goto :goto_6

    .line 154
    :pswitch_13
    const v0, 0x7f02007e

    goto :goto_6

    .line 142
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
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, ret:I
    packed-switch p1, :pswitch_data_10

    .line 199
    :goto_4
    return v0

    .line 183
    :pswitch_5
    const/16 v0, 0x96

    .line 184
    goto :goto_4

    .line 187
    :pswitch_8
    const/16 v0, 0x96

    .line 188
    goto :goto_4

    .line 191
    :pswitch_b
    const/16 v0, 0x96

    .line 192
    goto :goto_4

    .line 195
    :pswitch_e
    const/4 v0, 0x1

    goto :goto_4

    .line 180
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
    .line 173
    const v0, 0x7f02004b

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 168
    const v0, 0x7f020080

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    const-string v0, "com.sec.android.app.snsaccountme.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 383
    const/16 v0, 0xe

    return v0
.end method

.method public getString(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 248
    const/4 v0, -0x1

    .line 250
    .local v0, resource:I
    packed-switch p1, :pswitch_data_1a

    .line 275
    :goto_4
    return v0

    .line 253
    :pswitch_5
    const v0, 0x7f08010f

    .line 254
    goto :goto_4

    .line 257
    :pswitch_9
    const v0, 0x7f08010f

    .line 258
    goto :goto_4

    .line 261
    :pswitch_d
    const v0, 0x7f080055

    .line 262
    goto :goto_4

    .line 266
    :pswitch_11
    const v0, 0x7f080110

    .line 267
    goto :goto_4

    .line 271
    :pswitch_15
    const v0, 0x7f080111

    goto :goto_4

    .line 250
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .parameter "str"

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 467
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_8

    .line 474
    :goto_4
    return-object v0

    .line 470
    :pswitch_5
    move-object v0, p2

    goto :goto_4

    .line 467
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_a

    .line 395
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 392
    :pswitch_5
    const v0, 0x7f08010d

    goto :goto_4

    .line 389
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public isLikeOrFavorite(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 400
    packed-switch p1, :pswitch_data_16

    .line 424
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 421
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 412
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 415
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 421
    goto :goto_f

    .line 400
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_f
        :pswitch_14
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

    .line 48
    packed-switch p1, :pswitch_data_2c

    .line 132
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 129
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 57
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 66
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 69
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 78
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 81
    goto :goto_f

    :pswitch_1a
    move v0, v1

    .line 84
    goto :goto_f

    :pswitch_1c
    move v0, v1

    .line 90
    goto :goto_f

    :pswitch_1e
    move v0, v1

    .line 102
    goto :goto_f

    :pswitch_20
    move v0, v1

    .line 108
    goto :goto_f

    :pswitch_22
    move v0, v1

    .line 111
    goto :goto_f

    :pswitch_24
    move v0, v1

    .line 114
    goto :goto_f

    :pswitch_26
    move v0, v1

    .line 117
    goto :goto_f

    :pswitch_28
    move v0, v1

    .line 123
    goto :goto_f

    :pswitch_2a
    move v0, v1

    .line 126
    goto :goto_f

    .line 48
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_f
        :pswitch_1c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_1e
        :pswitch_f
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_f
        :pswitch_28
        :pswitch_2a
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V
    .registers 8
    .parameter "context"
    .parameter "inflator"
    .parameter "menu"
    .parameter "what"

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V

    .line 339
    const v2, 0x7f0b0133

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 340
    .local v1, statusupdate:Landroid/view/MenuItem;
    const v2, 0x7f0b0135

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 342
    .local v0, newme2write:Landroid/view/MenuItem;
    if-eqz v1, :cond_17

    .line 343
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    :cond_17
    if-eqz v0, :cond_1d

    .line 346
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    :cond_1d
    return-void
.end method

.method public onHandleSnsCallback(Landroid/content/Context;IZ)V
    .registers 6
    .parameter "context"
    .parameter "reqType"
    .parameter "bSuccess"

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onHandleSnsCallback(Landroid/content/Context;IZ)V

    .line 445
    packed-switch p2, :pswitch_data_16

    .line 454
    :cond_6
    :goto_6
    return-void

    .line 448
    :pswitch_7
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 450
    const v0, 0x7f08010e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 445
    :pswitch_data_16
    .packed-switch 0x7
        :pswitch_7
    .end packed-switch
.end method

.method public onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V

    .line 359
    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 376
    :cond_8
    :goto_8
    return-void

    .line 364
    :cond_9
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    goto :goto_8

    .line 367
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 371
    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 364
    :pswitch_data_24
    .packed-switch 0x7f0b0135
        :pswitch_11
    .end packed-switch
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 320
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 322
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Me2day;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/Me2dayEventHandler;->getMessageClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 326
    :cond_26
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 329
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 331
    :cond_4e
    return-void
.end method
