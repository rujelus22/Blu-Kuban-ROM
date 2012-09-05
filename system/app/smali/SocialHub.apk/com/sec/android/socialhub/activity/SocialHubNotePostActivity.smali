.class public Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubNotePostActivity.java"


# static fields
.field public static final checkIntent:[Ljava/lang/String;


# instance fields
.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCategory:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mFriendsID:Ljava/lang/String;

.field public mIsPosting:Z

.field private mLeftButton:Landroid/widget/Button;

.field mReplyButtonListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

.field private mSpType:I

.field private service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
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

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->checkIntent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I

    .line 56
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCategory:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mFriendsID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 63
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 235
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mFriendsID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 220
    :goto_4
    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method private drawTitle()V
    .registers 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setTitle(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private enableLeftButton(I)V
    .registers 6
    .parameter "txtCount"

    .prologue
    const/4 v3, 0x1

    .line 195
    const-string v0, "SocialHubNotePostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLeftButton Count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    if-nez v0, :cond_1e

    .line 205
    :cond_1d
    :goto_1d
    return-void

    .line 201
    :cond_1e
    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    if-le p1, v0, :cond_2f

    .line 202
    :cond_28
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d

    .line 203
    :cond_2f
    if-lez p1, :cond_1d

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    if-gt p1, v0, :cond_1d

    .line 204
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d
.end method

.method private getIntentData()V
    .registers 6

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getIntentWithCheck()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 164
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_36

    .line 167
    const-string v2, "spType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I

    .line 168
    const-string v2, "categoryID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCategory:Ljava/lang/String;

    .line 169
    const-string v2, "categoryOwnerID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mFriendsID:Ljava/lang/String;

    .line 171
    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    .line 178
    new-instance v2, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v3, "5_SNS"

    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSpType:I

    invoke-direct {v2, v3, v4}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V
    :try_end_36
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_0 .. :try_end_36} :catch_37

    .line 186
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_36
    :goto_36
    return-void

    .line 181
    :catch_37
    move-exception v0

    .line 183
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;->printStackTrace()V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->finish()V

    goto :goto_36
.end method

.method private loadLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 141
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setLayout(I)V

    .line 143
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    .line 144
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    .line 145
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mRightButton:Landroid/widget/Button;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setSupportByte(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mSnsService:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    invoke-interface {v1, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mKeyListner:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setMode(I)V

    .line 154
    return-void
.end method

.method private setButtonClickListener()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mRightButton:Landroid/widget/Button;

    if-nez v0, :cond_9

    .line 231
    :cond_8
    :goto_8
    return-void

    .line 227
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->drawButton()V

    .line 229
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method


# virtual methods
.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 136
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->enableLeftButton(I)V

    .line 137
    return-void
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 286
    packed-switch p1, :pswitch_data_22

    .line 293
    :goto_7
    monitor-exit p0

    return-void

    .line 289
    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 284
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :pswitch_data_22
    .packed-switch 0x18
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    const-string v0, "SocialHubNotePostActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->checkIntent:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setIntentCompareData([Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setUse(Z)V

    .line 80
    invoke-virtual {p0, v3, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setShowDiscardPopup(ZZZ)V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getIntentData()V

    .line 83
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->loadLayout()V

    .line 84
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->drawTitle()V

    .line 85
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setButtonClickListener()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->enableLeftButton(I)V

    .line 89
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_57

    .line 93
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800c0

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 96
    :cond_57
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->requestConnect()V

    .line 97
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 120
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 104
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
    .line 299
    packed-switch p4, :pswitch_data_16

    .line 308
    :goto_3
    return-void

    .line 302
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 303
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 304
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setResult(I)V

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->finish()V

    goto :goto_3

    .line 299
    nop

    :pswitch_data_16
    .packed-switch 0x18
        :pswitch_4
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
    .line 315
    packed-switch p4, :pswitch_data_12

    .line 324
    :goto_3
    return-void

    .line 318
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mIsPosting:Z

    .line 319
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 320
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->setResult(I)V

    goto :goto_3

    .line 315
    :pswitch_data_12
    .packed-switch 0x18
        :pswitch_4
    .end packed-switch
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->requestIME(Landroid/view/View;)V

    .line 115
    :cond_e
    return-void
.end method
