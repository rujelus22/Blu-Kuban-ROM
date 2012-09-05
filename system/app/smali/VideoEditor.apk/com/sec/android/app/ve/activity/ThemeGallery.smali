.class public Lcom/sec/android/app/ve/activity/ThemeGallery;
.super Landroid/app/Activity;
.source "ThemeGallery.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;
    }
.end annotation


# static fields
.field private static final BASIC_APPLY_THEME:I = 0x1

.field private static final DIALOG_SAVE:I = 0x3e8

.field private static final SELECT_THEME:I = 0x3e9

.field private static _instance:Lcom/sec/android/app/ve/activity/ThemeGallery;

.field private static mToast:Landroid/widget/Toast;

.field private static mToastY:I


# instance fields
.field public fileName:Ljava/lang/String;

.field gridview:Landroid/widget/GridView;

.field lHand:Landroid/os/Handler;

.field private mAddMediaTitleBar:Landroid/widget/LinearLayout;

.field private mEditTitlebar:Landroid/widget/LinearLayout;

.field mNextBtn:Landroid/widget/Button;

.field mThemeGridAdaptor:Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;

.field private save:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->_instance:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 292
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToastY:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mEditTitlebar:Landroid/widget/LinearLayout;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    .line 211
    new-instance v0, Lcom/sec/android/app/ve/activity/ThemeGallery$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$1;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ThemeGallery;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->launchThemeView(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/ThemeGallery;)V
    .registers 1
    .parameter

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->launchPEA()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/activity/ThemeGallery;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->_instance:Lcom/sec/android/app/ve/activity/ThemeGallery;

    return-object v0
.end method

.method private launchPEA()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 586
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_15

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 601
    :goto_14
    return-void

    .line 591
    :cond_15
    new-instance v0, Landroid/content/Intent;

    .line 592
    const-class v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 591
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v0, lIntent:Landroid/content/Intent;
    const-string v1, "filename"

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "launchaddmedia"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string v1, "newproject"

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "newproject"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThemeGallery New project :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "newproject"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->startActivity(Landroid/content/Intent;)V

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    goto :goto_14
.end method

.method private launchThemeView(I)V
    .registers 5
    .parameter "aPosition"

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v0, i:Landroid/content/Intent;
    const-string v1, "theme"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getThemeValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const-string v1, "filename"

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v1, "TG2"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    .line 569
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 570
    return-void
.end method

.method private setTitleBarClicks()V
    .registers 2

    .prologue
    .line 170
    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_14
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mEditTitlebar:Landroid/widget/LinearLayout;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mEditTitlebar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_28

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mEditTitlebar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_28
    return-void
.end method

.method private setTitleHelveticaNeue()V
    .registers 5

    .prologue
    .line 243
    const v3, 0x7f0b00e3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 244
    .local v2, lSelTheme:Landroid/widget/TextView;
    const v3, 0x7f0b00e4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, lSelAddMedia:Landroid/widget/TextView;
    const v3, 0x7f0b00e5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 247
    .local v1, lSelEdit:Landroid/widget/TextView;
    return-void
.end method

.method public static showToast(IIII)V
    .registers 7
    .parameter "aId"
    .parameter "gravity"
    .parameter "xOff"
    .parameter "yOff"

    .prologue
    .line 296
    const-string v0, "Inside ThemeGallery showToast"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_16

    .line 299
    invoke-static {}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getInstance()Lcom/sec/android/app/ve/activity/ThemeGallery;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    .line 302
    :cond_16
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1b

    .line 311
    :goto_1a
    return-void

    .line 304
    :cond_1b
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 305
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    .line 306
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    sget v1, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToastY:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 310
    :cond_2a
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 289
    return-void
.end method

.method public getThemeValue(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_14

    .line 653
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 638
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 640
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 642
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 644
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 646
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 648
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    .line 650
    :pswitch_11
    const/4 v0, 0x6

    goto :goto_4

    .line 636
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 573
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 574
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 576
    const-string v0, "onActivityResult Theme is  selected"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->launchPEA()V

    .line 583
    :goto_e
    return-void

    .line 581
    :cond_f
    const-string v0, "onActivityResult Theme is not selected"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onBroadCastReceiver()V
    .registers 2

    .prologue
    .line 658
    const-string v0, "Inside TG onBroadCastReceiver and finishing"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 660
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 209
    :goto_b
    return-void

    .line 183
    :pswitch_c
    const-string v0, "Click on AddMediaTitle in TG "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->launchPEA()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 191
    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->launchPEA()V

    .line 192
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-lez v0, :cond_50

    .line 194
    const-string v0, "Click on EditTitle in TG"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->lHand:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 201
    :cond_50
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 181
    nop

    :pswitch_data_60
    .packed-switch 0x7f0b00e4
        :pswitch_c
        :pswitch_24
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is inside onConfigurationChanged ThemeGallery"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 252
    const-string v1, "Locale change ThemeGallery closing ..."

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 254
    const-string v1, "clone not null"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 256
    const-string v1, "No need to save "

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 275
    :goto_5a
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 278
    :cond_5d
    return-void

    .line 258
    :cond_5e
    const-string v1, "save the project before finish"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 260
    :try_start_63
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_75

    goto :goto_5a

    .line 261
    :catch_75
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    .line 267
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7a
    const-string v1, "save the new project before finish"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 269
    :try_start_7f
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_90} :catch_91

    goto :goto_5a

    .line 270
    :catch_91
    move-exception v0

    .line 271
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 82
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->setContentView(I)V

    .line 84
    sput-object p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->_instance:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToastY:I

    .line 88
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/ve/activity/ThemeGallery;->mToast:Landroid/widget/Toast;

    .line 90
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 91
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->setBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V

    .line 92
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    if-nez v1, :cond_54

    .line 95
    const-string v1, "No project file"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 161
    :cond_53
    :goto_53
    return-void

    .line 100
    :cond_54
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 101
    .local v0, lCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-nez v0, :cond_64

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    goto :goto_53

    .line 105
    :cond_64
    new-instance v1, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mThemeGridAdaptor:Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;

    .line 106
    const v1, 0x7f0b00cd

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->gridview:Landroid/widget/GridView;

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mThemeGridAdaptor:Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->gridview:Landroid/widget/GridView;

    new-instance v2, Lcom/sec/android/app/ve/activity/ThemeGallery$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$2;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    const v1, 0x7f0b00ce

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mNextBtn:Landroid/widget/Button;

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mNextBtn:Landroid/widget/Button;

    if-eqz v1, :cond_53

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mNextBtn:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/ve/activity/ThemeGallery$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$3;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f08000c

    const v5, 0x7f08000b

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, lDialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_98

    .line 404
    :goto_a
    return-object v1

    .line 317
    :sswitch_b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 318
    .local v0, lBasicThemeAlert:Landroid/app/AlertDialog;
    const v3, 0x7f080055

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/ThemeGallery$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$4;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/ThemeGallery$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$5;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    move-object v1, v0

    .line 344
    goto :goto_a

    .line 346
    .end local v0           #lBasicThemeAlert:Landroid/app/AlertDialog;
    :sswitch_4a
    const-string v3, "TG Dialog Save"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 347
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 349
    .local v2, ldAlert:Landroid/app/AlertDialog;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    .line 350
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    .line 349
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/ThemeGallery$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$6;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/ThemeGallery$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/ThemeGallery$7;-><init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 398
    move-object v1, v2

    .line 399
    goto/16 :goto_a

    .line 315
    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_b
        0x3e8 -> :sswitch_4a
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 238
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V

    .line 239
    :cond_10
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 608
    const/4 v3, 0x4

    if-ne p1, v3, :cond_ab

    .line 609
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Intent value::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "newproject"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n PEA status::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "newproject"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "savefromaddmedia"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_52

    :cond_4c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-eqz v3, :cond_5c

    :cond_52
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 612
    :cond_5c
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    if-eqz v3, :cond_8e

    .line 613
    const-string v3, "TG Clone not null"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 614
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 616
    .local v1, mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 618
    const-string v3, "TG shd save"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 619
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showDialog(I)V

    .line 632
    .end local v1           #mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :goto_8d
    return v2

    .line 623
    :cond_8e
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showDialog(I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_93} :catch_94

    goto :goto_8d

    .line 628
    :catch_94
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<< Ignore exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 632
    .end local v0           #e:Ljava/lang/Exception;
    :cond_ab
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_8d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 420
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 421
    return-void
.end method

.method protected onPostResume()V
    .registers 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->setTitleBarClicks()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 409
    invoke-static {p0}, Lcom/sec/android/app/ve/util/Utils;->isMediaNotMounted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V

    .line 416
    :goto_c
    return-void

    .line 413
    :cond_d
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 414
    const-string v0, "TG3"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->mThemeGridAdaptor:Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ThemeGallery$ThemeGridAdaptor;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 426
    iget-boolean v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    if-eqz v1, :cond_20

    .line 427
    const-string v1, "Home key pressed::"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 429
    :try_start_c
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    .line 430
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    .line 436
    :cond_20
    :goto_20
    return-void

    .line 432
    :catch_21
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "hope to not come here"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeGallery;->save:Z

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 284
    return-void
.end method
