.class public Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;
.super Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.source "Facebook.java"


# instance fields
.field private final MAX_RECIPIENTS:I

.field private mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;-><init>()V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->MAX_RECIPIENTS:I

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/FacebookConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/FacebookConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 36
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    .line 38
    return-void
.end method


# virtual methods
.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 203
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 205
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandRetweet:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 206
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 208
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 210
    :cond_29
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->alphaReply(I)V

    .line 211
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 214
    :cond_37
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 216
    :cond_49
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setVisibility(I)V

    .line 218
    :cond_52
    return-void
.end method

.method public getDefaultProfileImage()I
    .registers 2

    .prologue
    .line 161
    const v0, 0x7f0200b3

    return v0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_18

    .line 155
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 143
    :pswitch_7
    const v0, 0x7f0200b3

    goto :goto_6

    .line 146
    :pswitch_b
    const v0, 0x7f020072

    goto :goto_6

    .line 149
    :pswitch_f
    const v0, 0x7f020073

    goto :goto_6

    .line 152
    :pswitch_13
    const v0, 0x7f020071

    goto :goto_6

    .line 140
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
    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, ret:I
    packed-switch p1, :pswitch_data_12

    .line 197
    :goto_4
    return v0

    .line 181
    :pswitch_5
    const/16 v0, 0x1f40

    .line 182
    goto :goto_4

    .line 185
    :pswitch_8
    const/16 v0, 0x1388

    .line 186
    goto :goto_4

    .line 189
    :pswitch_b
    const/16 v0, 0x2710

    .line 190
    goto :goto_4

    .line 193
    :pswitch_e
    const/16 v0, 0x14

    goto :goto_4

    .line 178
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
    .line 171
    const v0, 0x7f02004b

    return v0
.end method

.method public getSmallIspIcon()I
    .registers 2

    .prologue
    .line 166
    const v0, 0x7f020073

    return v0
.end method

.method public getSnsAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    const-string v0, "com.sec.android.app.snsaccountfb.SetupAccount"

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getStringResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_a

    .line 339
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 336
    :pswitch_5
    const v0, 0x7f080030

    goto :goto_4

    .line 333
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

    .line 346
    packed-switch p1, :pswitch_data_14

    .line 369
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 367
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 358
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 367
    goto :goto_f

    .line 346
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_12
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    packed-switch p1, :pswitch_data_1a

    .line 133
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    const-string v1, "Required define support type!!"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e
    move v0, v1

    .line 130
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    move v0, v1

    .line 70
    goto :goto_f

    :pswitch_12
    move v0, v1

    .line 79
    goto :goto_f

    :pswitch_14
    move v0, v1

    .line 91
    goto :goto_f

    :pswitch_16
    move v0, v1

    .line 97
    goto :goto_f

    :pswitch_18
    move v0, v1

    .line 127
    goto :goto_f

    .line 49
    :pswitch_data_1a
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
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_14
        :pswitch_f
        :pswitch_16
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V
    .registers 14
    .parameter "context"
    .parameter "inflator"
    .parameter "menu"
    .parameter "what"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V

    .line 243
    const v5, 0x7f0b0133

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 244
    .local v3, statusupdate:Landroid/view/MenuItem;
    const v5, 0x7f0b0134

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 245
    .local v4, writepost:Landroid/view/MenuItem;
    const v5, 0x7f0b0138

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 246
    .local v1, notification:Landroid/view/MenuItem;
    const v5, 0x7f0b0139

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 247
    .local v0, groups:Landroid/view/MenuItem;
    const v5, 0x7f0b0137

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 249
    .local v2, photo:Landroid/view/MenuItem;
    if-eqz v3, :cond_2d

    .line 250
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    :cond_2d
    if-eqz v4, :cond_32

    .line 253
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_32
    if-eqz v1, :cond_37

    .line 256
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    :cond_37
    if-eqz v0, :cond_3c

    .line 259
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    :cond_3c
    if-eqz v2, :cond_41

    .line 262
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :cond_41
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v5

    new-array v6, v6, [I

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v7

    aput v7, v6, v8

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->notificationPost(Landroid/content/Context;[I)I

    .line 265
    return-void
.end method

.method public onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V

    .line 275
    iget-boolean v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    if-ne v0, v3, :cond_9

    .line 320
    :cond_8
    :goto_8
    return-void

    .line 280
    :cond_9
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    :pswitch_10
    goto :goto_8

    .line 300
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "wallType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "spType"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 306
    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 283
    :pswitch_31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedChooserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string v1, "param"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v1, "view_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 290
    :pswitch_4a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    const-string v1, "param"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 295
    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 311
    :pswitch_65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    const-string v1, "sp"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 316
    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 280
    :pswitch_data_80
    .packed-switch 0x7f0b0134
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_65
        :pswitch_4a
        :pswitch_31
    .end packed-switch
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 226
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandWallPost:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/FacebookEventHandler;->getWallPostListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 230
    :cond_26
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 233
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 235
    :cond_4e
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->updateNotification(Landroid/content/Context;)V

    .line 384
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->getSpType()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->notificationPost(Landroid/content/Context;[I)I

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/Facebook;->updateNotificationCount()V

    .line 386
    return-void
.end method
