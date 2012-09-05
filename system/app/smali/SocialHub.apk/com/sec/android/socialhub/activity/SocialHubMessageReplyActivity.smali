.class public Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubMessageReplyActivity.java"


# static fields
.field public static final checkIntent:[Ljava/lang/String;

.field public static mIsPosting:Z


# instance fields
.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field private mFolderType:Ljava/lang/String;

.field private mLeftButton:Landroid/widget/Button;

.field private mLength:I

.field mReplyButtonListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private miSpType:I

.field private mstrActorName:Ljava/lang/String;

.field private mstrMessageId:Ljava/lang/String;

.field private mstrReceiverCount:I

.field private mstrReceiverId:[Ljava/lang/String;

.field private mstrThreadId:Ljava/lang/String;

.field private service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 63
    sput-boolean v2, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "taISpType"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "taActorId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "taActorName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "taTreadId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "taMessageId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "taReceiverNum"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "taReceiverId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->checkIntent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLength:I

    .line 281
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrActorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->checktextCount(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrThreadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method private checktextCount(II)Z
    .registers 7
    .parameter "maxTxtcount"
    .parameter "service_type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, iReplytextCount:I
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLength:I

    .line 212
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    if-nez v3, :cond_a

    .line 223
    :goto_9
    return v1

    .line 215
    :cond_a
    if-le v0, p1, :cond_1c

    .line 217
    const v3, 0x7f0800aa

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    :cond_1c
    move v1, v2

    .line 223
    goto :goto_9
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 266
    :goto_4
    return-void

    .line 259
    :cond_5
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 260
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 264
    :goto_12
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 262
    :cond_19
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_12
.end method

.method private drawTitle()V
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setTitle(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setTitle(Ljava/lang/String;)V

    .line 253
    :cond_21
    return-void
.end method

.method private enableLeftButton(I)V
    .registers 5
    .parameter "txtCount"

    .prologue
    .line 233
    const-string v0, "SocialHubMessageReplyActivity"

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

    .line 235
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    if-nez v0, :cond_1d

    .line 242
    :goto_1c
    return-void

    .line 238
    :cond_1d
    if-nez p1, :cond_26

    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c

    .line 241
    :cond_26
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c
.end method

.method private getIntentData()V
    .registers 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_4b

    .line 186
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_4b

    .line 190
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverCount:I

    .line 192
    const-string v2, "taISpType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I

    .line 193
    const-string v2, "taActorName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrActorName:Ljava/lang/String;

    .line 194
    const-string v2, "taTreadId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrThreadId:Ljava/lang/String;

    .line 195
    const-string v2, "taMessageId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrMessageId:Ljava/lang/String;

    .line 196
    const-string v2, "taReceiverNum"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverCount:I

    .line 197
    const-string v2, "taReceiverId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mstrReceiverId:[Ljava/lang/String;

    .line 198
    const-string v2, "taFolder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mFolderType:Ljava/lang/String;

    .line 202
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_4b
    return-void
.end method

.method private getLimitationByISP(IZ)I
    .registers 6
    .parameter "isp"
    .parameter "is_comment"

    .prologue
    .line 144
    const/4 v0, -0x1

    .line 146
    .local v0, ret:I
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 147
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 149
    return v0
.end method

.method private loadLayout()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 155
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setLayout(I)V

    .line 157
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mEditText:Landroid/widget/EditText;

    .line 158
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    .line 159
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mRightButton:Landroid/widget/Button;

    .line 161
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    .line 165
    .local v7, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v0, 0xa

    :try_start_30
    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setSupportByte(Z)V
    :try_end_37
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_30 .. :try_end_37} :catch_4b

    .line 172
    :goto_37
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mEditText:Landroid/widget/EditText;

    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->miSpType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getLimitationByISP(IZ)I

    move-result v0

    int-to-long v2, v0

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setLimitationEditText(Landroid/widget/EditText;JILandroid/widget/Button;)V

    .line 174
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setMode(I)V

    .line 176
    return-void

    .line 167
    :catch_4b
    move-exception v6

    .line 169
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v6}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_37
.end method

.method private setButtonClickListener()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mRightButton:Landroid/widget/Button;

    if-nez v0, :cond_9

    .line 277
    :cond_8
    :goto_8
    return-void

    .line 273
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->drawButton()V

    .line 275
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mReplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method


# virtual methods
.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 133
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLength:I

    .line 135
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mLength:I

    if-lez v0, :cond_e

    .line 137
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->enableLeftButton(I)V

    .line 139
    :cond_e
    return-void
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 365
    packed-switch p1, :pswitch_data_22

    .line 372
    :goto_7
    monitor-exit p0

    return-void

    .line 368
    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 363
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :pswitch_data_22
    .packed-switch 0x16
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 81
    const-string v0, "SocialHubMessageReplyActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->checkIntent:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setIntentCompareData([Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setUse(Z)V

    .line 86
    invoke-virtual {p0, v3, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setShowDiscardPopup(ZZZ)V

    .line 88
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getIntentData()V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->loadLayout()V

    .line 91
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->drawTitle()V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setButtonClickListener()V

    .line 95
    sput-boolean v4, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->requestConnect()V

    .line 98
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->requestIME(Landroid/view/View;)V

    .line 116
    :cond_e
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 105
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 14
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    sput-boolean v2, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 379
    packed-switch p4, :pswitch_data_42

    .line 406
    :goto_7
    return-void

    .line 383
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 385
    invoke-static {p3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 389
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v2, 0x1

    :try_start_12
    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v2

    if-ne v2, v3, :cond_2b

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "5_SNS"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->requestServerSync(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_3a
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_12 .. :try_end_2b} :catch_32

    .line 400
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setResultOK()V

    .line 401
    :goto_2e
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->finish()V

    goto :goto_7

    .line 394
    :catch_32
    move-exception v0

    .line 396
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_33
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setResultOK()V

    goto :goto_2e

    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :catchall_3a
    move-exception v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setResultOK()V

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->finish()V

    .line 400
    throw v2

    .line 379
    :pswitch_data_42
    .packed-switch 0x16
        :pswitch_8
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
    .line 412
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->mIsPosting:Z

    .line 414
    packed-switch p4, :pswitch_data_10

    .line 423
    :goto_6
    return-void

    .line 418
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->finish()V

    goto :goto_6

    .line 414
    :pswitch_data_10
    .packed-switch 0x16
        :pswitch_7
    .end packed-switch
.end method

.method public setResultOK()V
    .registers 3

    .prologue
    .line 347
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;->setResult(ILandroid/content/Intent;)V

    .line 348
    return-void
.end method
