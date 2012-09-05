.class public Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;
.source "SocialHubNewTweetActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bIsPosting:Z

.field private mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;-><init>()V

    .line 27
    const-string v0, "SocialHubNewTweetActivity"

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method private checkEditText()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v1, :cond_1c

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, edit:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 426
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 433
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 435
    .end local v0           #edit:Landroid/widget/EditText;
    :cond_1c
    return-void

    .line 430
    .restart local v0       #edit:Landroid/widget/EditText;
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    goto :goto_14
.end method

.method private getPrivateIntentData()V
    .registers 6

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 138
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_10

    .line 140
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->TAG:Ljava/lang/String;

    const-string v3, "getIntentData()"

    const-string v4, "intent is null"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_f
    return-void

    .line 144
    :cond_10
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.action.socialhub.TWEET_POST"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 148
    const-string v2, "reqCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 155
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_f

    .line 151
    :pswitch_2e
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_f

    .line 148
    :pswitch_data_32
    .packed-switch 0x14
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public buttonCheck()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isImageLoading()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 287
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    .line 289
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    :cond_17
    :goto_17
    return-void

    .line 294
    :cond_18
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->buttonCheck()V

    goto :goto_17
.end method

.method public getIntentData()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public getLimitationCount()I
    .registers 3

    .prologue
    .line 115
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    return v0
.end method

.method public getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2

    .prologue
    .line 357
    new-instance v0, Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/PhotoUploadView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isSupportByteType()Z
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method protected loadView()V
    .registers 5

    .prologue
    .line 59
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->loadView()V

    .line 60
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 70
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    packed-switch p1, :pswitch_data_60

    .line 259
    :cond_6
    :goto_6
    return-void

    .line 238
    :pswitch_7
    if-eqz p2, :cond_6

    .line 244
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setHintText(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->buttonCheck()V

    goto :goto_6

    .line 234
    :pswitch_data_60
    .packed-switch 0xa
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onApiCalled(I)V
    .registers 7
    .parameter "reqType"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onApiCalled(I)V

    .line 304
    sparse-switch p1, :sswitch_data_26

    .line 312
    :goto_6
    return-void

    .line 308
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const-string v1, "%s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f08008c

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->startProgressDialog()V

    goto :goto_6

    .line 304
    nop

    :sswitch_data_26
    .sparse-switch
        0x1c -> :sswitch_7
        0x21 -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 266
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->showDiscardPopup(Z)V

    .line 272
    :goto_10
    return-void

    .line 270
    :cond_11
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onBackPressed()V

    goto :goto_10
.end method

.method protected onChangeViewMode(Z)V
    .registers 5
    .parameter "bImage"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 394
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 396
    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 398
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    if-eqz v0, :cond_1b

    .line 400
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 414
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->checkEditText()V

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->buttonCheck()V

    .line 416
    return-void

    .line 406
    :cond_22
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    if-eqz v0, :cond_34

    .line 408
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 411
    :cond_34
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->requestIME(Landroid/view/View;)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    if-nez p1, :cond_28

    .line 42
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getPrivateIntentData()V

    .line 49
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setShowDiscardPopup(ZZZ)V

    .line 50
    const v0, 0x7f0800e6

    const v1, 0x7f0800e7

    const v2, 0x7f08001b

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setButtonName(III)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setTitle(Ljava/lang/String;)V

    .line 53
    return-void

    .line 46
    :cond_28
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onDestroy()V

    .line 319
    return-void
.end method

.method protected onDiscard(Z)V
    .registers 3
    .parameter "bShowToast"

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setResult(I)V

    .line 279
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onDiscard(Z)V

    .line 280
    return-void
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_2f

    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 94
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v1, "5_SNS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 109
    :goto_2e
    return-void

    .line 98
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 107
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v1, "5_SNS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    goto :goto_2e
.end method

.method public onLeftButtonClicked()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 161
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    if-ne v1, v2, :cond_11

    .line 163
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->TAG:Ljava/lang/String;

    const-string v2, "onLeftButtonClicked()"

    const-string v3, "bIsPosting is true"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_10
    :goto_10
    return-void

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-ne v1, v2, :cond_27

    .line 169
    new-array v1, v2, [I

    aput v3, v1, v4

    const-string v2, "android.intent.action.socialhub.TWEET_POST"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->doUploadPhoto([ILjava/lang/String;)I

    goto :goto_10

    .line 173
    :cond_27
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    .line 174
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    new-array v2, v2, [I

    aput v3, v2, v4

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I

    move-result v0

    .line 181
    .local v0, ret:I
    if-gez v0, :cond_10

    .line 183
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    goto :goto_10
.end method

.method public onMiddleButtonClicked()V
    .registers 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-nez v1, :cond_12

    .line 193
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    .line 219
    :goto_11
    return-void

    .line 197
    :cond_12
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    const/high16 v1, 0x104

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->show()Landroid/app/AlertDialog;

    goto :goto_11
.end method

.method public onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 5
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 364
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 366
    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    .line 368
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_18

    .line 370
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->requestFocus()Z

    .line 371
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->requestIME(Landroid/view/View;)V

    .line 382
    :cond_18
    return-void
.end method

.method public onRightButtonClicked()V
    .registers 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->onBackPressed()V

    .line 227
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 8
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 325
    sparse-switch p4, :sswitch_data_14

    .line 335
    :goto_3
    return-void

    .line 329
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setResult(I)V

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->finish()V

    goto :goto_3

    .line 325
    :sswitch_data_14
    .sparse-switch
        0x1c -> :sswitch_4
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 12
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 343
    sparse-switch p4, :sswitch_data_12

    .line 352
    :goto_3
    return-void

    .line 347
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->bIsPosting:Z

    .line 348
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 349
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewTweetActivity;->setResult(I)V

    goto :goto_3

    .line 343
    nop

    :sswitch_data_12
    .sparse-switch
        0x1c -> :sswitch_4
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public onStartPhotoLoad()V
    .registers 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onStartPhotoLoad()V

    .line 388
    return-void
.end method
