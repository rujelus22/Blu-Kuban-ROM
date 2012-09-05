.class public Lcom/sec/android/app/ve/activity/CaptionEditActivity;
.super Landroid/app/Activity;
.source "CaptionEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;
    }
.end annotation


# static fields
.field private static final CAPTION_DIALOG:I = 0x521

.field private static CAPTION_THEME_NONE:I = 0x0

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field private static final UPDATE_CURRENT_FRAME:I = 0x1

.field public static _instance:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

.field private static themeindex:I


# instance fields
.field private currentframe:Landroid/widget/RelativeLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

.field private mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mFlingDetector:Landroid/view/GestureDetector;

.field private mFlingListener:Landroid/view/View$OnTouchListener;

.field mHandler:Landroid/os/Handler;

.field private themearrowleft:Landroid/widget/Button;

.field private themearrowright:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->CAPTION_THEME_NONE:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowleft:Landroid/widget/Button;

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowright:Landroid/widget/Button;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->currentframe:Landroid/widget/RelativeLayout;

    .line 186
    new-instance v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$1;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$2;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->currentframe:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/view/GestureDetector;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mFlingDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Lcom/sec/android/app/ve/view/caption/CaptionText;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    return-object v0
.end method

.method private createCaptionDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 245
    new-instance v0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, inputText:Lcom/sec/android/app/ve/view/caption/CaptionEditText;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setImeOptions(I)V

    .line 247
    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setId(I)V

    .line 248
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setTextColor(I)V

    .line 249
    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setBackgroundColor(I)V

    .line 250
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->_instance:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 253
    const v2, 0x7f08004c

    new-instance v3, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$6;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 266
    const v2, 0x7f08004d

    new-instance v3, Lcom/sec/android/app/ve/activity/CaptionEditActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$7;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$8;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 250
    return-object v1
.end method

.method private getCaption(I)V
    .registers 8
    .parameter "cur_time"

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, mtempClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    int-to-float v4, p1

    const/high16 v5, 0x447a

    div-float v0, v4, v5

    .line 317
    .local v0, CurrentStory_time:F
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, mTextEleList:Ljava/util/List;
    if-eqz v2, :cond_1b

    .line 321
    const/4 v1, 0x0

    .local v1, k:I
    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1c

    .line 339
    .end local v1           #k:I
    :cond_1b
    :goto_1b
    return-void

    .line 323
    .restart local v1       #k:I
    :cond_1c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mtempClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 324
    .restart local v3       #mtempClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_5a

    .line 325
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_5a

    .line 326
    iput-object v3, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 327
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionTheme(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 328
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 329
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setClipartparam(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 330
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v5, v5, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    iput v5, v4, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v4, v4, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    sput v4, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    goto :goto_1b

    .line 321
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method private getCurrentFrame()V
    .registers 1

    .prologue
    .line 343
    return-void
.end method

.method private loadClipParamIfexists()V
    .registers 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clipparamStartTime"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 307
    .local v0, Cur_time:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->getCaption(I)V

    .line 309
    .end local v0           #Cur_time:Ljava/lang/Integer;
    :cond_1d
    return-void
.end method


# virtual methods
.method public getmClipartParams()Lcom/samsung/app/video/editor/external/ClipartParams;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sput-object p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->_instance:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 76
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->requestWindowFeature(I)Z

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    .local v0, lThread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->setContentView(I)V

    .line 137
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->currentframe:Landroid/widget/RelativeLayout;

    .line 138
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 139
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/caption/CaptionText;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    .line 140
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowleft:Landroid/widget/Button;

    .line 141
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowright:Landroid/widget/Button;

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowleft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themearrowright:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    .line 146
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    iput v2, v1, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    new-instance v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$4;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->loadClipParamIfexists()V

    .line 158
    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    if-nez v1, :cond_c0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextColor(I)V

    .line 164
    :goto_a9
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->setcaptionTextColor()V

    .line 166
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mFlingDetector:Landroid/view/GestureDetector;

    .line 167
    new-instance v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$5;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mFlingListener:Landroid/view/View$OnTouchListener;

    .line 183
    return-void

    .line 163
    :cond_c0
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    sget v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundResource(I)V

    goto :goto_a9
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "dialogId"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_a

    .line 240
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 238
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->createCaptionDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 236
    :pswitch_data_a
    .packed-switch 0x521
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 422
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showCaptionBar()V

    .line 423
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    :cond_22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 462
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 465
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8
    .parameter "dialogId"
    .parameter "dialog"

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_26

    .line 294
    :goto_3
    return-void

    .line 284
    :pswitch_4
    const/16 v1, 0x521

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 285
    .local v0, inputText:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity$9;-><init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Landroid/widget/EditText;)V

    .line 291
    const-wide/16 v3, 0x64

    .line 286
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 282
    :pswitch_data_26
    .packed-switch 0x521
        :pswitch_4
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    const/high16 v2, 0x4188

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextSize(F)V

    .line 233
    .end local v0           #str:Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 230
    .restart local v0       #str:Ljava/lang/String;
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    const/high16 v2, 0x420c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextSize(F)V

    goto :goto_3a
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 416
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showClipArtParam()V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 418
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mFlingDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeCaptionDialog()V
    .registers 2

    .prologue
    .line 300
    const/16 v0, 0x521

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->removeDialog(I)V

    .line 301
    return-void
.end method

.method public setText(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V
    .registers 4
    .parameter "inputText"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionText:Lcom/sec/android/app/ve/view/caption/CaptionText;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 298
    return-void
.end method

.method public setcaptionTextColor()V
    .registers 3

    .prologue
    .line 403
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v1, p0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeTextColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->setTextColor(I)V

    .line 404
    return-void
.end method

.method public setmClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 2
    .parameter "mClipartParams"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 411
    return-void
.end method

.method public swipeLeft()V
    .registers 3

    .prologue
    .line 385
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    sget-object v1, Lcom/sec/android/app/ve/view/caption/CaptionText;->CaptionTheme:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_32

    .line 386
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    .line 389
    :goto_f
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    iput v1, v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 390
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 392
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v0

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->CAPTION_THEME_NONE:I

    if-ne v0, v1, :cond_36

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    :goto_2e
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->setcaptionTextColor()V

    .line 399
    return-void

    .line 388
    :cond_32
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    goto :goto_f

    .line 395
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundResource(I)V

    goto :goto_2e
.end method

.method public swipeRight()V
    .registers 3

    .prologue
    .line 367
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    if-lez v0, :cond_2d

    .line 368
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    .line 372
    :goto_a
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    iput v1, v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->themeId:I

    .line 373
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionText;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->CheckCaptionData()V

    .line 375
    sget v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v0

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->CAPTION_THEME_NONE:I

    if-ne v0, v1, :cond_35

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_29
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->setcaptionTextColor()V

    .line 380
    return-void

    .line 370
    :cond_2d
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionText;->CaptionTheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    goto :goto_a

    .line 378
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    sget v1, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->themeindex:I

    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeDrawable(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setBackgroundResource(I)V

    goto :goto_29
.end method
