.class public Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;
.source "SocialHubPhotoUploadActivity.java"


# instance fields
.field public mBtnCancel:Landroid/widget/Button;

.field public mBtnUpload:Landroid/widget/Button;

.field private mCheckIntent:[Ljava/lang/String;

.field private mSpList:[I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "spTypeList"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mCheckIntent:[Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mType:I

    .line 42
    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    .line 43
    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnCancel:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    return-object v0
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 174
    return-void
.end method

.method private drawTitle()V
    .registers 2

    .prologue
    .line 168
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setTitle(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private getIntentData()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getIntentWithCheck()Landroid/content/Intent;

    move-result-object v2

    .line 121
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 123
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.action.socialhub.UPLOAD_PHOTO"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 125
    const-string v3, "reqCode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_2e

    .line 132
    invoke-direct {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->loadImageFromIntent(Landroid/content/Intent;)V

    .line 147
    :goto_20
    return-void

    .line 128
    :pswitch_21
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->onGetInstanceState(Landroid/os/Bundle;)V
    :try_end_24
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_20

    .line 142
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_25
    move-exception v0

    .line 144
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;->printStackTrace()V

    .line 145
    throw v0

    .line 138
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2a
    :try_start_2a
    invoke-direct {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->loadImageFromIntent(Landroid/content/Intent;)V
    :try_end_2d
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_2a .. :try_end_2d} :catch_25

    goto :goto_20

    .line 125
    :pswitch_data_2e
    .packed-switch 0x14
        :pswitch_21
    .end packed-switch
.end method

.method private loadImageFromIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 151
    const-string v1, "spTypeList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    .line 153
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_16

    .line 157
    const-string v1, "fromType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mType:I

    .line 163
    :cond_16
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mType:I

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    .line 164
    return-void
.end method

.method private registerListener()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method


# virtual methods
.method public buttonCheck()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isImageLoading()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 254
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    :goto_13
    return-void

    .line 258
    :cond_14
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->buttonCheck()V

    goto :goto_13
.end method

.method public getPhotoDialog(Landroid/content/Context;)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
    .registers 3
    .parameter "context"

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/socialhub/dialog/PhotoDialogFactory;->getDialog(Landroid/content/Context;I)Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2

    .prologue
    .line 317
    const v0, 0x7f0b00dd

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    packed-switch p1, :pswitch_data_16

    .line 247
    :goto_6
    return-void

    .line 231
    :pswitch_7
    packed-switch p2, :pswitch_data_22

    goto :goto_6

    .line 238
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    goto :goto_6

    .line 225
    nop

    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 231
    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch
.end method

.method public onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onApiCalled(I)V

    .line 267
    packed-switch p1, :pswitch_data_2c

    .line 275
    :goto_6
    :pswitch_6
    return-void

    .line 271
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_6

    .line 267
    :pswitch_data_2c
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onChangeViewMode(Z)V
    .registers 4
    .parameter "bImage"

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 353
    if-nez p1, :cond_10

    .line 355
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_10

    .line 357
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 360
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setUse(Z)V

    .line 51
    invoke-virtual {p0, v0, v0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setShowDiscardPopup(ZZZ)V

    .line 53
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setLayout(I)V

    .line 55
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnCancel:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mCheckIntent:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setIntentCompareData([Ljava/lang/String;)V

    .line 62
    if-nez p1, :cond_66

    .line 64
    :try_start_2d
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getIntentData()V

    .line 71
    :goto_30
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mBtnUpload:Landroid/widget/Button;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->drawTitle()V

    .line 80
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->drawButton()V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->registerListener()V

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setHintText(Ljava/lang/String;)V

    .line 94
    :goto_65
    return-void

    .line 68
    :cond_66
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->onGetInstanceState(Landroid/os/Bundle;)V
    :try_end_69
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_2d .. :try_end_69} :catch_6a

    goto :goto_30

    .line 89
    :catch_6a
    move-exception v6

    .line 91
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->finish()V

    goto :goto_65
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    .line 110
    if-eqz p1, :cond_d

    .line 112
    const-string v0, "spTypeList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    .line 114
    :cond_d
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onOverLimit()V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method

.method public onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 5
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 324
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 326
    const/4 v0, 0x1

    if-ne p2, v0, :cond_19

    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_18

    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->requestFocus()Z

    .line 331
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->requestIME(Landroid/view/View;)V

    .line 339
    :cond_18
    :goto_18
    return-void

    .line 336
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->finish()V

    goto :goto_18
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "spTypeList"

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->mSpList:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 102
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
    .line 281
    packed-switch p4, :pswitch_data_1e

    .line 294
    :goto_3
    :pswitch_3
    return-void

    .line 284
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->finish()V

    goto :goto_3

    .line 289
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 290
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setResult(I)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->finish()V

    goto :goto_3

    .line 281
    :pswitch_data_1e
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_11
    .end packed-switch
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
    .line 302
    packed-switch p4, :pswitch_data_18

    .line 312
    :goto_3
    :pswitch_3
    return-void

    .line 305
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setResult(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 308
    :pswitch_d
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;->setResult(I)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_3

    .line 302
    nop

    :pswitch_data_18
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method public onStartPhotoLoad()V
    .registers 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onStartPhotoLoad()V

    .line 345
    return-void
.end method
