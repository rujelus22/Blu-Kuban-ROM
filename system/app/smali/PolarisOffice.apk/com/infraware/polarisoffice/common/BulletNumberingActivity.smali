.class public Lcom/infraware/polarisoffice/common/BulletNumberingActivity;
.super Lcom/infraware/common/baseactivity/BaseTabActivity;
.source "BulletNumberingActivity.java"


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private cancel_btn:Landroid/widget/Button;

.field private init:Landroid/widget/CheckBox;

.field private mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mBulletClickListener:Landroid/view/View$OnClickListener;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurBullet:I

.field private mCurNumbering:I

.field private mMode:I

.field private mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mNumberingClickListener:Landroid/view/View$OnClickListener;

.field private mTabHost:Landroid/widget/TabHost;

.field private ok_btn:Landroid/widget/Button;

.field private tab_text1:Landroid/widget/TextView;

.field private tab_text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseTabActivity;-><init>()V

    .line 25
    const-string v0, "BulletNumberingActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->LOG_CAT:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    .line 29
    iput v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I

    .line 30
    iput v2, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 43
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 183
    new-instance v0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$1;-><init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 251
    new-instance v0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$2;-><init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$3;-><init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I

    return v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "BulletNumberingActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseTabActivity;->onBackPressed()V

    .line 166
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 346
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 347
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    return-void
.end method

.method public onContentChanged()V
    .registers 5

    .prologue
    .line 170
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_1e

    .line 171
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, curTab:Ljava/lang/String;
    const-string v1, "BulletNumberingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onContentChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0           #curTab:Ljava/lang/String;
    :cond_1e
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseTabActivity;->onContentChanged()V

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v7, 0x7f08011f

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->setTitle(I)V

    .line 57
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 59
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03000c

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, indicator1:Landroid/view/View;
    const v7, 0x7f0c0063

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 63
    .local v5, tab_image1:Landroid/widget/ImageView;
    const v7, 0x7f0c0064

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text1:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02026b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08016a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "id_bullet"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0c004d

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, indicator2:Landroid/view/View;
    const v7, 0x7f0c0063

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 72
    .local v6, tab_image2:Landroid/widget/ImageView;
    const v7, 0x7f0c0064

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text2:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020270

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08016b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "id_numbering"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f0c0056

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    const v7, 0x7f0c004f

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 79
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020094

    const v9, 0x7f020094

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 80
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v7, 0x7f0c0050

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 82
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020095

    const v9, 0x7f020095

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 83
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v7, 0x7f0c0051

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 85
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020096

    const v9, 0x7f020096

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 86
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v7, 0x7f0c0053

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 88
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020097

    const v9, 0x7f020097

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 89
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v7, 0x7f0c0054

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 91
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020098

    const v9, 0x7f020098

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 92
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v7, 0x7f0c0055

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 94
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020099

    const v9, 0x7f020099

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 95
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBulletClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v7, 0x7f0c0058

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 98
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020094

    const v9, 0x7f020094

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 99
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v7, 0x7f0c0059

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 101
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020108

    const v9, 0x7f020108

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 102
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v7, 0x7f0c005a

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 104
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f020109

    const v9, 0x7f020109

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 105
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v7, 0x7f0c005c

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 107
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f02010a

    const v9, 0x7f02010a

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 108
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v7, 0x7f0c005d

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 110
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f02010b

    const v9, 0x7f02010b

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 111
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v7, 0x7f0c005e

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 113
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v8, 0x7f02010c

    const v9, 0x7f02010c

    invoke-virtual {v7, v8, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 114
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumberingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v7, 0x7f0c005f

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->init:Landroid/widget/CheckBox;

    .line 118
    const v7, 0x7f0c0060

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->ok_btn:Landroid/widget/Button;

    .line 119
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->ok_btn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v7, 0x7f0c0061

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->cancel_btn:Landroid/widget/Button;

    .line 121
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->cancel_btn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v7, 0x7f0c005f

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 127
    .local v0, box:Landroid/widget/CheckBox;
    new-instance v7, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$4;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$4;-><init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 135
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "id_bulletnuber_mode"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    .line 136
    const-string v7, "id_current_bullet"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I

    .line 137
    const-string v7, "id_current_numbering"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I

    .line 138
    const-string v7, "id_restart_numbering"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    if-nez v7, :cond_338

    .line 142
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 148
    :goto_2bb
    iget v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurBullet:I

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->setCheckedBullet(I)V

    .line 149
    iget v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mCurNumbering:I

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->setCheckedNumbering(I)V

    .line 151
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02026e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02026e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    const-string v7, "TabSample"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tabHost.getTabWidget().isStripEnabled() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabWidget;->isStripEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 157
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const v8, 0x7f020269

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 158
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const v8, 0x7f02026a

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    .line 159
    return-void

    .line 143
    :cond_338
    iget v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_345

    .line 144
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_2bb

    .line 146
    :cond_345
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_2bb
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 179
    const-string v0, "BulletNumberingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseTabActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 5
    .parameter "nLocale"

    .prologue
    .line 352
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->setTitle(I)V

    .line 353
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->tab_text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->ok_btn:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->cancel_btn:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 357
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->init:Landroid/widget/CheckBox;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 358
    return-void
.end method

.method setCheckedBullet(I)V
    .registers 5
    .parameter "nType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 211
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 215
    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    .line 216
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 227
    :cond_28
    :goto_28
    return-void

    .line 217
    :cond_29
    if-ne p1, v1, :cond_31

    .line 218
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 219
    :cond_31
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    .line 220
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 221
    :cond_3a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 223
    :cond_43
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4c

    .line 224
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 225
    :cond_4c
    const/4 v0, 0x5

    if-ne p1, v0, :cond_28

    .line 226
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mBullet5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28
.end method

.method setCheckedNumbering(I)V
    .registers 5
    .parameter "nType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 237
    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    .line 238
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering0:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 249
    :cond_28
    :goto_28
    return-void

    .line 239
    :cond_29
    if-ne p1, v1, :cond_31

    .line 240
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering1:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 241
    :cond_31
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    .line 242
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering2:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 243
    :cond_3a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 244
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering3:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 245
    :cond_43
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4c

    .line 246
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering4:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28

    .line 247
    :cond_4c
    const/4 v0, 0x5

    if-ne p1, v0, :cond_28

    .line 248
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->mNumbering5:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto :goto_28
.end method
