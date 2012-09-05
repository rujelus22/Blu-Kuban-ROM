.class public Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;
.super Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;
.source "SocialHubWritePostActivity.java"


# static fields
.field public static final checkIntent:[Ljava/lang/String;


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mFriendsID:Ljava/lang/String;

.field public mIsPosting:Z

.field private mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

.field private mSpType:I

.field private mWallType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "spType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "categoryID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "categoryOwnerID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->checkIntent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;-><init>()V

    .line 36
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    .line 37
    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mWallType:I

    .line 38
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mCategory:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mFriendsID:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    return-void
.end method


# virtual methods
.method public getIntentData()V
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3e

    .line 101
    const-string v1, "spType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    .line 102
    const-string v1, "categoryID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mCategory:Ljava/lang/String;

    .line 103
    const-string v1, "categoryOwnerID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mFriendsID:Ljava/lang/String;

    .line 104
    const-string v1, "wallType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mWallType:I

    .line 106
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 113
    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v2, "5_SNS"

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 115
    :cond_3e
    return-void
.end method

.method public getLimitationCount()I
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    if-eqz v0, :cond_c

    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 74
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSupportByteType()Z
    .registers 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    if-eqz v1, :cond_11

    .line 84
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z
    :try_end_b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 91
    :goto_c
    return v1

    .line 86
    :catch_d
    move-exception v0

    .line 88
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 91
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_11
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->onApiCalled(I)V

    .line 180
    sparse-switch p1, :sswitch_data_1e

    .line 190
    :goto_6
    return-void

    .line 184
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V

    goto :goto_6

    .line 180
    nop

    :sswitch_data_1e
    .sparse-switch
        0x18 -> :sswitch_7
        0x1c -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f0800c0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v0, v0, v3}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setShowDiscardPopup(ZZZ)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getIntentData()V

    .line 61
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setTitle(Ljava/lang/String;)V

    .line 62
    const v0, 0x7f08004b

    const v1, 0x7f08001b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setButtonName(II)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    .line 67
    return-void
.end method

.method public onLeftButtonClicked()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    if-nez v0, :cond_11

    .line 124
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    .line 126
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    if-eqz v0, :cond_11

    .line 128
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mWallType:I

    packed-switch v0, :pswitch_data_5c

    .line 166
    :cond_11
    :goto_11
    return-void

    .line 131
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    new-array v1, v1, [I

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    aput v2, v1, v8

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->peopleProfileSet(Landroid/content/Context;[ILjava/lang/String;)I

    move-result v7

    .line 138
    .local v7, ret:I
    if-gez v7, :cond_11

    .line 140
    const-string v0, "SocialHubWallPostActivity"

    const-string v1, "onClick()"

    const-string v2, "write self wall error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-boolean v8, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    goto :goto_11

    .line 146
    .end local v7           #ret:I
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mFriendsID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->notePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 155
    .local v6, req_id:I
    if-gez v6, :cond_11

    .line 157
    const-string v0, "SocialHubWallPostActivity"

    const-string v1, "onClick()"

    const-string v2, "write friend\'s wall error!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v8, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    goto :goto_11

    .line 128
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_36
    .end packed-switch
.end method

.method public onRightButtonClicked()V
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/util/SocialHubUtil;->dismissClipboardPopup(Landroid/content/Context;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->onBackPressed()V

    .line 173
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
    .line 196
    sparse-switch p4, :sswitch_data_16

    .line 206
    :goto_3
    return-void

    .line 200
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    .line 201
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 202
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->finish()V

    goto :goto_3

    .line 196
    nop

    :sswitch_data_16
    .sparse-switch
        0x18 -> :sswitch_4
        0x1c -> :sswitch_4
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
    .line 214
    sparse-switch p4, :sswitch_data_12

    .line 223
    :goto_3
    return-void

    .line 218
    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->mIsPosting:Z

    .line 219
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 220
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubWritePostActivity;->setResult(I)V

    goto :goto_3

    .line 214
    :sswitch_data_12
    .sparse-switch
        0x18 -> :sswitch_4
        0x1c -> :sswitch_4
    .end sparse-switch
.end method
