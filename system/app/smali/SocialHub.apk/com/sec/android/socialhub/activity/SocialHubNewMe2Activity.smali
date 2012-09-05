.class public Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;
.super Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;
.source "SocialHubNewMe2Activity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bIsPosting:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

.field me2Limit:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;-><init>()V

    .line 28
    const-string v0, "SocialHubNewMe2Activity"

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    .line 37
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->me2Limit:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method private checkEditText()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 445
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v1, :cond_1c

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, edit:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 451
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 458
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 460
    .end local v0           #edit:Landroid/widget/EditText;
    :cond_1c
    return-void

    .line 455
    .restart local v0       #edit:Landroid/widget/EditText;
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    goto :goto_14
.end method

.method private getPrivateIntentData()V
    .registers 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_10

    .line 131
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->TAG:Ljava/lang/String;

    const-string v3, "getIntentData()"

    const-string v4, "intent is null"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_f
    return-void

    .line 135
    :cond_10
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.action.socialhub.ME2DAY_POST"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 139
    const-string v2, "reqCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 146
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_f

    .line 142
    :pswitch_2e
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_f

    .line 139
    :pswitch_data_32
    .packed-switch 0x14
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public buttonCheck()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isImageLoading()Z

    move-result v0

    if-ne v0, v1, :cond_18

    .line 275
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    .line 277
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    :cond_17
    :goto_17
    return-void

    .line 282
    :cond_18
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->checkBlankText()Z

    move-result v0

    if-ne v0, v1, :cond_17

    .line 283
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->buttonCheck()V

    goto :goto_17
.end method

.method public checkBlankText()Z
    .registers 6

    .prologue
    .line 288
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_21

    aget-char v1, v0, v2

    .line 290
    .local v1, c:C
    const/16 v4, 0x20

    if-eq v1, v4, :cond_1e

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1e

    .line 292
    const/4 v4, 0x1

    .line 295
    .end local v1           #c:C
    :goto_1d
    return v4

    .line 288
    .restart local v1       #c:C
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 295
    .end local v1           #c:C
    :cond_21
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public checkLimitation(J)V
    .registers 11
    .parameter "length"

    .prologue
    const/4 v7, 0x1

    .line 301
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->checkLimitation(J)V

    .line 303
    const/4 v4, 0x1

    .line 305
    .local v4, mIsOnlySpaces:Z
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_15
    if-ge v2, v3, :cond_22

    aget-char v1, v0, v2

    .line 307
    .local v1, c:C
    const/16 v5, 0x20

    if-eq v1, v5, :cond_2b

    const/16 v5, 0xa

    if-eq v1, v5, :cond_2b

    .line 309
    const/4 v4, 0x0

    .line 313
    .end local v1           #c:C
    :cond_22
    if-ne v4, v7, :cond_2e

    .line 315
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    :cond_2a
    :goto_2a
    return-void

    .line 305
    .restart local v1       #c:C
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 319
    .end local v1           #c:C
    :cond_2e
    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->me2Limit:I

    int-to-long v5, v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_2a

    .line 320
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method

.method public getIntentData()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public getLimitationCount()I
    .registers 3

    .prologue
    .line 106
    const/16 v0, 0xe

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
    .line 382
    new-instance v0, Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/PhotoUploadView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isSupportByteType()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected loadView()V
    .registers 5

    .prologue
    .line 63
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->loadView()V

    .line 64
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->mLayout:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 75
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    packed-switch p1, :pswitch_data_60

    .line 247
    :cond_6
    :goto_6
    return-void

    .line 227
    :pswitch_7
    if-eqz p2, :cond_6

    .line 233
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setHintText(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->buttonCheck()V

    goto :goto_6

    .line 223
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
    .line 327
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onApiCalled(I)V

    .line 329
    sparse-switch p1, :sswitch_data_26

    .line 337
    :goto_6
    return-void

    .line 333
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const-string v1, "%s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f08008c

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->startProgressDialog()V

    goto :goto_6

    .line 329
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

    .line 252
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 254
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->showDiscardPopup(Z)V

    .line 260
    :goto_10
    return-void

    .line 258
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

    .line 419
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 421
    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 423
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    if-eqz v0, :cond_1b

    .line 425
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 439
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->checkEditText()V

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->buttonCheck()V

    .line 441
    return-void

    .line 431
    :cond_22
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    if-eqz v0, :cond_34

    .line 433
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 436
    :cond_34
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->requestIME(Landroid/view/View;)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-nez p1, :cond_3a

    .line 46
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getPrivateIntentData()V

    .line 53
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v3, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setShowDiscardPopup(ZZZ)V

    .line 54
    const v0, 0x7f080115

    const v1, 0x7f0800e7

    const v2, 0x7f08001b

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setButtonName(III)V

    .line 55
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getLimitation(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->me2Limit:I

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setTitle(Ljava/lang/String;)V

    .line 58
    return-void

    .line 50
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onDestroy()V

    .line 344
    return-void
.end method

.method protected onDiscard(Z)V
    .registers 3
    .parameter "bShowToast"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setResult(I)V

    .line 267
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onDiscard(Z)V

    .line 268
    return-void
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_24

    sget-object v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 100
    :goto_23
    return-void

    .line 96
    :cond_24
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->getLimitationCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    goto :goto_23
.end method

.method public onLeftButtonClicked()V
    .registers 6

    .prologue
    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 152
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    if-ne v1, v2, :cond_12

    .line 154
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->TAG:Ljava/lang/String;

    const-string v2, "onLeftButtonClicked()"

    const-string v3, "bIsPosting is true"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_11
    :goto_11
    return-void

    .line 158
    :cond_12
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-ne v1, v2, :cond_28

    .line 160
    new-array v1, v2, [I

    aput v3, v1, v4

    const-string v2, "android.intent.action.socialhub.ME2DAY_POST"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->doUploadPhoto([ILjava/lang/String;)I

    goto :goto_11

    .line 164
    :cond_28
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    .line 165
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

    .line 172
    .local v0, ret:I
    if-gez v0, :cond_11

    .line 174
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    goto :goto_11
.end method

.method public onMiddleButtonClicked()V
    .registers 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-nez v1, :cond_12

    .line 184
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->showDialog()V

    .line 210
    :goto_11
    return-void

    .line 188
    :cond_12
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    const/high16 v1, 0x104

    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->show()Landroid/app/AlertDialog;

    goto :goto_11
.end method

.method public onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 5
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 391
    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    .line 393
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_18

    .line 395
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->requestFocus()Z

    .line 396
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->requestIME(Landroid/view/View;)V

    .line 407
    :cond_18
    return-void
.end method

.method public onRightButtonClicked()V
    .registers 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->onBackPressed()V

    .line 216
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
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
    .line 350
    sparse-switch p4, :sswitch_data_14

    .line 360
    :goto_3
    return-void

    .line 354
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    .line 355
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->finish()V

    goto :goto_3

    .line 350
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
    .line 368
    sparse-switch p4, :sswitch_data_12

    .line 377
    :goto_3
    return-void

    .line 372
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->bIsPosting:Z

    .line 373
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 374
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNewMe2Activity;->setResult(I)V

    goto :goto_3

    .line 368
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
    .line 412
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onStartPhotoLoad()V

    .line 413
    return-void
.end method
