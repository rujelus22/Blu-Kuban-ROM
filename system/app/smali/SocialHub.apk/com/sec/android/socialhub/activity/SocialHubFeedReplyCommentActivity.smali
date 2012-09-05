.class public Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubFeedReplyCommentActivity.java"


# static fields
.field public static final checkIntent:[Ljava/lang/String;


# instance fields
.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCommentId:Ljava/lang/String;

.field private mCommentSubId:Ljava/lang/String;

.field private mCommentType:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mIsPosting:Z

.field private mLefButton:Landroid/widget/Button;

.field private mRightButton:Landroid/widget/Button;

.field private miSpType:I

.field private mstrActivityId:Ljava/lang/String;

.field private mstrActorId:Ljava/lang/String;

.field private mstrActorName:Ljava/lang/String;

.field private mstrContent:Ljava/lang/String;

.field private mstrOwnerName:Ljava/lang/String;

.field private service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "taISpType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "taActorId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "taActivityId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "taCommentId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "taCommnetType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "taActorName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "taContent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "taOwner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->checkIntent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    .line 339
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 375
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentSubId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    return-object v0
.end method

.method private drawButton()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 313
    :cond_4
    :goto_4
    return-void

    .line 298
    :cond_5
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 299
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 303
    :goto_12
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 301
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_12
.end method

.method private drawEditTextHint()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    .line 319
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 320
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 325
    :cond_11
    :goto_11
    return-void

    .line 322
    :cond_12
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_11
.end method

.method private drawTitle()V
    .registers 3

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setTitle(Ljava/lang/String;)V

    .line 291
    :goto_13
    return-void

    .line 290
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private enableLeftButton(I)V
    .registers 5
    .parameter "txtCount"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    if-nez v0, :cond_7

    .line 282
    :goto_6
    return-void

    .line 271
    :cond_7
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getLimitationByISP(IZ)I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_1e

    .line 273
    if-nez p1, :cond_18

    .line 274
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 276
    :cond_18
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 280
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6
.end method

.method private getIntentData()V
    .registers 6

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getIntentWithCheck()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 234
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_5e

    .line 236
    const-string v2, "taISpType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    .line 237
    const-string v2, "taActivityId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActivityId:Ljava/lang/String;

    .line 238
    const-string v2, "taActorId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorId:Ljava/lang/String;

    .line 239
    const-string v2, "taCommentId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentId:Ljava/lang/String;

    .line 240
    const-string v2, "taCommentSubId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentSubId:Ljava/lang/String;

    .line 241
    const-string v2, "taCommnetType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCommentType:Ljava/lang/String;

    .line 242
    const-string v2, "taActorName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorName:Ljava/lang/String;

    .line 243
    const-string v2, "taContent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrContent:Ljava/lang/String;

    .line 244
    const-string v2, "taOwner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrOwnerName:Ljava/lang/String;

    .line 251
    new-instance v2, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    const-string v3, "5_SNS"

    iget v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    invoke-direct {v2, v3, v4}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V
    :try_end_5e
    .catch Lcom/sec/android/socialhub/exception/SocialHubRequireValueException; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 259
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_5e
    :goto_5e
    return-void

    .line 254
    :catch_5f
    move-exception v0

    .line 256
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubRequireValueException;->printStackTrace()V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->finish()V

    goto :goto_5e
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
    if-eqz p2, :cond_c

    .line 167
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 170
    :cond_c
    return v0
.end method

.method private loadLayout()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 176
    const v5, 0x7f030011

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setLayout(I)V

    .line 178
    const v5, 0x7f0b002a

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    .line 179
    const v5, 0x7f0b0026

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    .line 180
    const v5, 0x7f0b0027

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mRightButton:Landroid/widget/Button;

    .line 182
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->drawEditTextHint()V

    .line 184
    invoke-virtual {p0, v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setMode(I)V

    .line 186
    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    invoke-static {v5}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    .line 190
    .local v3, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v5, 0x6

    :try_start_35
    invoke-interface {v3, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v5

    if-ne v5, v6, :cond_ca

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, actor:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 201
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrContent:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrOwnerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getMentionedID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 203
    .local v2, mentioned:Landroid/text/Spanned;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/EditText;->setSelection(II)V

    .line 218
    .end local v0           #actor:Ljava/lang/String;
    .end local v2           #mentioned:Landroid/text/Spanned;
    .end local v4           #str:Ljava/lang/String;
    :cond_ca
    const/16 v5, 0xb

    invoke-interface {v3, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setSupportByte(Z)V

    .line 219
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    iget v6, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->miSpType:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getLimitationByISP(IZ)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V
    :try_end_e1
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_35 .. :try_end_e1} :catch_e2

    .line 225
    :goto_e1
    return-void

    .line 221
    :catch_e2
    move-exception v1

    .line 223
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_e1
.end method

.method private setButtonClickListener()V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mRightButton:Landroid/widget/Button;

    if-nez v0, :cond_9

    .line 335
    :cond_8
    :goto_8
    return-void

    .line 331
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->drawButton()V

    .line 333
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mLefButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method


# virtual methods
.method public checkLimitation(J)V
    .registers 4
    .parameter "length"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->checkLimitation(J)V

    .line 155
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->enableLeftButton(I)V

    .line 156
    return-void
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter "reqType"

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 418
    sparse-switch p1, :sswitch_data_38

    .line 430
    :goto_7
    monitor-exit p0

    return-void

    .line 421
    :sswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 416
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :sswitch_22
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->show()V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    goto :goto_7

    .line 418
    :sswitch_data_38
    .sparse-switch
        0x9 -> :sswitch_9
        0x1c -> :sswitch_22
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    const-string v0, "FeedReplyCommentActivity"

    const-string v1, "onCreate()"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget-object v0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->checkIntent:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setIntentCompareData([Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setUse(Z)V

    .line 100
    invoke-virtual {p0, v3, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setShowDiscardPopup(ZZZ)V

    .line 102
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getIntentData()V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->loadLayout()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->drawTitle()V

    .line 109
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setButtonClickListener()V

    .line 111
    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->requestConnect()V

    .line 114
    return-void
.end method

.method public onOverLimit()V
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onResume()V

    .line 138
    return-void
.end method

.method protected onSelectionChanged(IIII)V
    .registers 11
    .parameter "start"
    .parameter "after"
    .parameter "before_end"
    .parameter "after_end"

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onSelectionChanged(IIII)V

    .line 394
    if-lez p2, :cond_70

    .line 396
    :try_start_5
    const-string v2, "FeedReplyCommentActivity"

    const-string v3, "onSelectionChanged()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSpan, start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, actor:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 404
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v4, p1, p2

    const/16 v5, 0x21

    invoke-interface {v2, v3, p1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_70} :catch_71

    .line 411
    .end local v0           #actor:Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 407
    :catch_71
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->service:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 121
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
    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    .line 440
    sparse-switch p4, :sswitch_data_22

    .line 453
    :goto_6
    return-void

    .line 443
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setResult(I)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->finish()V

    goto :goto_6

    .line 448
    :sswitch_14
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 449
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setResult(I)V

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->finish()V

    goto :goto_6

    .line 440
    nop

    :sswitch_data_22
    .sparse-switch
        0x9 -> :sswitch_7
        0x1c -> :sswitch_14
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
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mIsPosting:Z

    .line 463
    sparse-switch p4, :sswitch_data_1a

    .line 473
    :goto_6
    return-void

    .line 466
    :sswitch_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setResult(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 469
    :sswitch_10
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->setResult(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_6

    .line 463
    :sswitch_data_1a
    .sparse-switch
        0x9 -> :sswitch_7
        0x1c -> :sswitch_10
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedReplyCommentActivity;->requestIME(Landroid/view/View;)V

    .line 132
    :cond_e
    return-void
.end method
