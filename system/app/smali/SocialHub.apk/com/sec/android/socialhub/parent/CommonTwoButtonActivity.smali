.class public abstract Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "CommonTwoButtonActivity.java"


# instance fields
.field protected mEditTextEx:Landroid/widget/EditText;

.field protected mLeftButton:Landroid/widget/Button;

.field mLeftButtonListener:Landroid/view/View$OnClickListener;

.field protected mRightButton:Landroid/widget/Button;

.field mRightButtonListener:Landroid/view/View$OnClickListener;

.field protected service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 214
    new-instance v0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$1;-><init>(Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$2;-><init>(Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private loadLayout()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setLayout()V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->loadView()V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->isSupportByteType()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setSupportByte(Z)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->getLimitationCount()I

    move-result v0

    int-to-long v2, v0

    iget-object v5, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V

    .line 177
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setMode(I)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setListener()V

    .line 181
    return-void
.end method


# virtual methods
.method public checkLimitation(J)V
    .registers 3
    .parameter "length"

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 165
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    return-object v0
.end method

.method public abstract getIntentData()V
.end method

.method public abstract getLimitationCount()I
.end method

.method public abstract isSupportByteType()Z
.end method

.method protected loadView()V
    .registers 2

    .prologue
    .line 196
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mEditTextEx:Landroid/widget/EditText;

    .line 197
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    .line 198
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButton:Landroid/widget/Button;

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const-string v0, "CommonTwoButtonActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setUse(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->getIntentData()V

    .line 58
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->loadLayout()V

    .line 60
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->checkLimitation(J)V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->requestConnect()V

    .line 63
    return-void
.end method

.method public abstract onLeftButtonClicked()V
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 118
    return-void
.end method

.method public abstract onRightButtonClicked()V
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 102
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStart()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->requestIME(Landroid/view/View;)V

    .line 113
    :cond_e
    return-void
.end method

.method protected setButtonName(II)V
    .registers 4
    .parameter "left_resource"
    .parameter "right_resource"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 147
    :cond_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 151
    :cond_12
    return-void
.end method

.method protected setLayout()V
    .registers 2

    .prologue
    .line 203
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->setLayout(I)V

    .line 204
    return-void
.end method

.method protected setListener()V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->mRightButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method
