.class public Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubRetweetActivity.java"


# instance fields
.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field mEditTextTouchListener:Landroid/view/View$OnClickListener;

.field private mForwardable:Ljava/lang/String;

.field private mIsPosting:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLength:I

.field private mRemainText:Ljava/lang/String;

.field private mRetweetCheck:Z

.field mRetweetTwitterButtonListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private miSpType:I

.field private mstrActivityId:Ljava/lang/String;

.field private mstrActorName:Ljava/lang/String;

.field private mstrContent:Ljava/lang/String;

.field service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    .line 74
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLength:I

    .line 292
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditTextTouchListener:Landroid/view/View$OnClickListener;

    .line 358
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetTwitterButtonListener:Landroid/view/View$OnClickListener;

    .line 415
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRemainText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRemainText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mForwardable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I

    return v0
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 274
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    .line 275
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRightButton:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    return-void
.end method

.method private drawTitle()V
    .registers 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setTitle(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private enableLeftButton(I)V
    .registers 7
    .parameter "txtCount"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    const-string v0, "SocialHubRetweetActivity"

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

    .line 250
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_2e

    .line 252
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I

    invoke-direct {p0, v0, v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getLimitationByISP(IZ)I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_35

    .line 254
    if-nez p1, :cond_2f

    .line 255
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    :cond_2e
    :goto_2e
    return-void

    .line 257
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 261
    :cond_35
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e
.end method

.method private getIntentData()V
    .registers 5

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3e

    .line 230
    const-string v1, "service_provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I

    .line 231
    const-string v1, "activity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActivityId:Ljava/lang/String;

    .line 232
    const-string v1, "actor_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;

    .line 233
    const-string v1, "taContent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;

    .line 234
    const-string v1, "forwardable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mForwardable:Ljava/lang/String;

    .line 241
    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v2, "5_SNS"

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V

    .line 243
    :cond_3e
    return-void
.end method

.method private getLimitationByISP(IZ)I
    .registers 6
    .parameter "isp"
    .parameter "is_comment"

    .prologue
    .line 161
    const/4 v0, -0x1

    .line 163
    .local v0, ret:I
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 165
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz p2, :cond_d

    .line 167
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 173
    :goto_c
    return v0

    .line 171
    :cond_d
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    goto :goto_c
.end method

.method private loadLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 187
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setLayout(I)V

    .line 189
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    .line 191
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->drawButton()V

    .line 192
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->miSpType:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getLimitationByISP(IZ)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 203
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 211
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v0, :cond_65

    .line 213
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    check-cast v0, Lcom/sec/android/socialhub/view/EditTextEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/EditTextEx;->setEditTable(Z)V

    .line 216
    :cond_65
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    const/high16 v1, -0x7800

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditTextTouchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setMode(I)V

    .line 222
    return-void

    .line 206
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_57

    .line 208
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_57
.end method

.method private setButtonClickListener()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetTwitterButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method


# virtual methods
.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 147
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLength:I

    .line 153
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mLength:I

    if-ltz v0, :cond_e

    .line 155
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->enableLeftButton(I)V

    .line 157
    :cond_e
    return-void
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 501
    sparse-switch p1, :sswitch_data_38

    .line 512
    :goto_7
    monitor-exit p0

    return-void

    .line 504
    :sswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 499
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 508
    :sswitch_22
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    goto :goto_7

    .line 501
    :sswitch_data_38
    .sparse-switch
        0x4 -> :sswitch_22
        0x1c -> :sswitch_9
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    if-nez v0, :cond_8

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->finish()V

    .line 494
    :goto_7
    return-void

    .line 492
    :cond_8
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onBackPressed()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const-string v0, "SocialHubRetweetActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setUse(Z)V

    .line 87
    invoke-virtual {p0, v4, v4, v3}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setShowDiscardPopup(ZZZ)V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getIntentData()V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->loadLayout()V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->drawTitle()V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setButtonClickListener()V

    .line 95
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    .line 102
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->requestConnect()V

    .line 105
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 130
    return-void
.end method

.method protected onSelectionChanged(IIII)V
    .registers 13
    .parameter "start"
    .parameter "after"
    .parameter "before_end"
    .parameter "after_end"

    .prologue
    const/4 v5, 0x1

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSelectionChanged(IIII)V

    .line 437
    :try_start_4
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    if-ne v4, v5, :cond_55

    .line 439
    if-ge p2, p3, :cond_54

    .line 441
    const-string v4, "SocialHubRetweetActivity"

    const-string v5, "if - onSelectionChanged()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ after = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ before_end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ after_end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x21

    invoke-interface {v4, v5, p1, p3, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 480
    :cond_54
    :goto_54
    return-void

    .line 448
    :cond_55
    if-le p2, p3, :cond_dc

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 451
    .local v1, backGroundColor:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 453
    .local v3, textColor:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mRetweetCheck:Z

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setTitle(Ljava/lang/String;)V

    .line 457
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->requestIME(Landroid/view/View;)V

    .line 459
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    instance-of v4, v4, Lcom/sec/android/socialhub/view/EditTextEx;

    if-eqz v4, :cond_91

    .line 461
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    check-cast v4, Lcom/sec/android/socialhub/view/EditTextEx;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/view/EditTextEx;->setEditTable(Z)V

    .line 464
    :cond_91
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 465
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RT @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, actorname:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {v4, v5, v6, p2, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 470
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 471
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 473
    .end local v0           #actorname:Ljava/lang/String;
    .end local v1           #backGroundColor:I
    .end local v3           #textColor:I
    :cond_dc
    const-string v4, "SocialHubRetweetActivity"

    const-string v5, "else - onSelectionChanged()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ after = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ before_end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ after_end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_114} :catch_116

    goto/16 :goto_54

    .line 476
    :catch_116
    move-exception v2

    .line 478
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_54
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 113
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
    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    .line 519
    sparse-switch p4, :sswitch_data_18

    .line 532
    :goto_6
    return-void

    .line 522
    :sswitch_7
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setResult(I)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->finish()V

    goto :goto_6

    .line 527
    :sswitch_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setResult(I)V

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->finish()V

    goto :goto_6

    .line 519
    nop

    :sswitch_data_18
    .sparse-switch
        0x4 -> :sswitch_f
        0x1c -> :sswitch_7
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
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mIsPosting:Z

    .line 541
    sparse-switch p4, :sswitch_data_16

    .line 551
    :goto_6
    return-void

    .line 544
    :sswitch_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setResult(I)V

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->finish()V

    .line 547
    :sswitch_e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->setResult(I)V

    .line 548
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->finish()V

    goto :goto_6

    .line 541
    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_e
        0x1c -> :sswitch_7
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubRetweetActivity;->requestIME(Landroid/view/View;)V

    .line 125
    :cond_e
    return-void
.end method
