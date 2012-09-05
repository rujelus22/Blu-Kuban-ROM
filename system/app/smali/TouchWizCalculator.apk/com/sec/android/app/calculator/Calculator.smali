.class public Lcom/sec/android/app/calculator/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;,
        Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C

.field private static POPUP_TEXT_SIZE_LARGE:F

.field private static POPUP_TEXT_SIZE_MEDIUM:F

.field private static POPUP_TEXT_SIZE_SMALL:F

.field private static TEXT_SIZE_LARGE_LAND:F

.field private static TEXT_SIZE_LARGE_PORT:F

.field private static TEXT_SIZE_MEDIUM_LAND:F

.field private static TEXT_SIZE_MEDIUM_PORT:F

.field private static TEXT_SIZE_SMALL_LAND:F

.field private static TEXT_SIZE_SMALL_PORT:F

.field static error:I

.field private static local_clip:Ljava/lang/String;

.field private static mAutoRotateSetting:I

.field private static mBackspaceSoundID:I

.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mCurrentSoundID:I

.field private static mCurrentTextSize:I

.field private static mFont:Landroid/graphics/Typeface;


# instance fields
.field private bt_id:[I

.field private bundle:Landroid/os/Bundle;

.field private clipboard:Landroid/text/ClipboardManager;

.field protected cursorHandler:Landroid/os/Handler;

.field private customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

.field private isActionBarShown:Z

.field private isDialogShow:Z

.field private isInitialTouchMode:Z

.field private isPause:Z

.field private isQwerty:Z

.field private isRotationCheck:Z

.field private isTouch:Z

.field private isTouchMode:Z

.field private lastFocusId:I

.field private mActionBarHeight:I

.field private mAudioManager:Landroid/media/AudioManager;

.field mDTMFToneEnabled:Z

.field private mDisplay:Landroid/widget/EditText;

.field private mHistory:Lcom/sec/android/app/calculator/History;

.field private mHistoryScreen:Landroid/widget/EditText;

.field private mListener:Lcom/sec/android/app/calculator/EventListener;

.field private mLogic:Lcom/sec/android/app/calculator/EventHandler;

.field private mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

.field private mPersist:Lcom/sec/android/app/calculator/Persist;

.field private review:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 119
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->local_clip:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    .line 154
    const/high16 v0, 0x423c

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    .line 156
    const/high16 v0, 0x428c

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    .line 158
    const/high16 v0, 0x430d

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    .line 160
    const/high16 v0, 0x41e8

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    .line 162
    const/high16 v0, 0x4234

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    .line 164
    const/high16 v0, 0x42c4

    sput v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    .line 166
    const/high16 v0, 0x4180

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_SMALL:F

    .line 168
    const v0, 0x41955c29

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    .line 170
    const/high16 v0, 0x41b0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_LARGE:F

    .line 182
    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->ACCEPTED_CHARS:[C

    .line 188
    sput v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    .line 191
    sput v1, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    .line 193
    sput v1, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    .line 1164
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->error:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    .line 172
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    .line 205
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    .line 244
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    .line 245
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    .line 247
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    .line 252
    new-instance v0, Lcom/sec/android/app/calculator/Calculator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/calculator/Calculator$1;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->cursorHandler:Landroid/os/Handler;

    .line 1939
    return-void

    .line 172
    :array_24
    .array-data 0x4
        0x1at 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0xct 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
        0x21t 0x0t 0x5t 0x7ft
        0x23t 0x0t 0x5t 0x7ft
        0x25t 0x0t 0x5t 0x7ft
        0x24t 0x0t 0x5t 0x7ft
        0x22t 0x0t 0x5t 0x7ft
        0x26t 0x0t 0x5t 0x7ft
        0x27t 0x0t 0x5t 0x7ft
        0x28t 0x0t 0x5t 0x7ft
        0x29t 0x0t 0x5t 0x7ft
        0x2at 0x0t 0x5t 0x7ft
        0x2bt 0x0t 0x5t 0x7ft
        0x2ct 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 93
    sget v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/calculator/Calculator;)Landroid/text/ClipboardManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/calculator/Calculator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/calculator/Calculator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/calculator/Calculator;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    return p1
.end method

.method static synthetic access$900()F
    .registers 1

    .prologue
    .line 93
    sget v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    return v0
.end method

.method private deleteSavedText()V
    .registers 4

    .prologue
    .line 2063
    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2066
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2067
    return-void
.end method

.method private initControls()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 479
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 480
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    .line 481
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/calculator/Panel;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    .line 483
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->initTrueFont()V

    .line 484
    new-instance v0, Lcom/sec/android/app/calculator/EventListener;

    invoke-direct {v0}, Lcom/sec/android/app/calculator/EventListener;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    .line 487
    new-instance v0, Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    sget-object v5, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/calculator/EventHandler;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    .line 492
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/calculator/EventListener;->setHandler(Lcom/sec/android/app/calculator/EventHandler;Lcom/sec/android/widgetapp/calculator/Panel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/sec/android/app/calculator/History;)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->setOnPanelListener(Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    new-instance v0, Lcom/sec/android/app/calculator/Calculator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/calculator/Calculator$2;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    new-array v2, v7, [Landroid/text/InputFilter;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$3;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$4;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v0, :cond_b8

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_b8
    move v0, v6

    .line 712
    :goto_b9
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e9

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 714
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 715
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    invoke-virtual {v1, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 717
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 718
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 719
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 720
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_e6

    .line 721
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 712
    :cond_e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 725
    :cond_e9
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->forceHideSoftInput(Z)V

    .line 729
    return-void
.end method

.method private initTrueFont()V
    .registers 3

    .prologue
    .line 733
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_10

    .line 734
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/HelveticaNeueRegular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    .line 735
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    sget-object v1, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    sget-object v1, Lcom/sec/android/app/calculator/Calculator;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 737
    return-void
.end method

.method private loadCurrentText()V
    .registers 4

    .prologue
    .line 2053
    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2055
    const-string v1, "display"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 2057
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->deleteSavedText()V

    .line 2060
    return-void
.end method

.method private loadPanelState()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2017
    const-string v2, "backup_dsp"

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2021
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "dialogShow"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    .line 2023
    const-string v2, "fontSize"

    sget v3, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2024
    .local v0, fontSize:I
    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    .line 2025
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    int-to-float v3, v0

    iput v3, v2, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    .line 2026
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dialogShow"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2027
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fontSize"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2028
    return-void
.end method

.method private saveCurrentText()V
    .registers 6

    .prologue
    const/16 v4, 0x3d

    .line 2034
    const-string v0, "backup_dsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2036
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2038
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    .line 2040
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2049
    :goto_28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "display"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2050
    return-void

    .line 2046
    :cond_36
    const-string v0, ""

    goto :goto_28
.end method

.method private savePanelState()V
    .registers 6

    .prologue
    .line 2005
    const-string v3, "backup_dsp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/calculator/Calculator;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2009
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    .line 2010
    .local v0, dialogShow:Z
    sget v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    .line 2011
    .local v1, fontSize:I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dialogShow"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2013
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fontSize"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2014
    return-void
.end method

.method private setActionBarHeight()V
    .registers 5

    .prologue
    .line 421
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 422
    .local v0, heightValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 423
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I

    .line 424
    return-void
.end method


# virtual methods
.method public button_image_change(Landroid/view/View;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x23

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 964
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 967
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 968
    add-int/lit8 p2, p2, 0x3

    .line 970
    :cond_19
    packed-switch p2, :pswitch_data_7c

    .line 1162
    :cond_1c
    :goto_1c
    return-void

    .line 972
    :pswitch_1d
    new-array v0, v3, [I

    fill-array-data v0, :array_8c

    move-object v1, v0

    .line 1152
    :goto_23
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move v0, v2

    .line 1154
    :goto_29
    array-length v2, v1

    if-ge v0, v2, :cond_61

    .line 1155
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->bt_id:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 992
    :pswitch_3e
    new-array v0, v3, [I

    fill-array-data v0, :array_b8

    move-object v1, v0

    .line 1010
    goto :goto_23

    .line 1012
    :pswitch_45
    new-array v0, v3, [I

    fill-array-data v0, :array_e4

    move-object v1, v0

    .line 1030
    goto :goto_23

    .line 1032
    :pswitch_4c
    new-array v0, v4, [I

    fill-array-data v0, :array_110

    move-object v1, v0

    .line 1069
    goto :goto_23

    .line 1071
    :pswitch_53
    new-array v0, v4, [I

    fill-array-data v0, :array_15a

    move-object v1, v0

    .line 1108
    goto :goto_23

    .line 1110
    :pswitch_5a
    new-array v0, v4, [I

    fill-array-data v0, :array_1a4

    move-object v1, v0

    .line 1147
    goto :goto_23

    .line 1157
    :cond_61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1158
    if-eqz v0, :cond_1c

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1c

    .line 970
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_3e
        :pswitch_45
        :pswitch_4c
        :pswitch_53
        :pswitch_5a
    .end packed-switch

    .line 972
    :array_8c
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 992
    :array_b8
    .array-data 0x4
        0x8dt 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1012
    :array_e4
    .array-data 0x4
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 1032
    :array_110
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x73t 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 1071
    :array_15a
    .array-data 0x4
        0x80t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 1110
    :array_1a4
    .array-data 0x4
        0xbct 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xcct 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public checkOrientation()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 391
    if-ne v0, v3, :cond_18

    .line 392
    invoke-virtual {p0, v4}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    .line 416
    :goto_12
    sput v0, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->setActionBarHeight()V

    .line 418
    return-void

    .line 394
    :cond_18
    sget v1, Lcom/sec/android/app/calculator/Calculator;->mAutoRotateSetting:I

    if-ne v1, v3, :cond_39

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 398
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    .line 399
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_12

    .line 402
    :cond_39
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 403
    packed-switch v1, :pswitch_data_52

    .line 411
    invoke-virtual {p0, v4}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_12

    .line 405
    :pswitch_4a
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_12

    .line 408
    :pswitch_4e
    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_12

    .line 403
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public filter(Landroid/view/KeyEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0xf7

    const/16 v6, 0x2d

    const/16 v5, 0x2b

    const/16 v4, 0x25

    .line 1755
    const/4 v1, 0x0

    .line 1756
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/calculator/Calculator;->ACCEPTED_CHARS:[C

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 1758
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_46

    if-eq v0, v5, :cond_46

    const/16 v2, 0x28

    if-eq v0, v2, :cond_46

    const/16 v2, 0x29

    if-eq v0, v2, :cond_46

    const/16 v2, 0xa

    if-eq v0, v2, :cond_46

    const/16 v2, 0x78

    if-eq v0, v2, :cond_46

    if-eq v0, v7, :cond_46

    if-eq v0, v8, :cond_46

    if-eq v0, v6, :cond_46

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_46

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_46

    if-eq v0, v4, :cond_46

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_46

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_46

    .line 1817
    :cond_45
    :goto_45
    return-void

    .line 1762
    :cond_46
    const/16 v2, 0x78

    if-eq v0, v2, :cond_4e

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_74

    .line 1764
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1765
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_45

    .line 1768
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const/16 v3, 0xd7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_45

    .line 1770
    :cond_74
    if-eq v0, v7, :cond_7a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_9c

    .line 1772
    :cond_7a
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_45

    .line 1776
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_45

    .line 1778
    :cond_9c
    if-ne v0, v5, :cond_c0

    .line 1780
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_45

    .line 1784
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto :goto_45

    .line 1786
    :cond_c0
    if-ne v0, v4, :cond_e5

    .line 1788
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1789
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_45

    .line 1792
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_45

    .line 1794
    :cond_e5
    if-ne v0, v6, :cond_10a

    .line 1796
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1797
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_45

    .line 1800
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_45

    .line 1802
    :cond_10a
    if-ne v0, v8, :cond_123

    .line 1804
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_45

    .line 1808
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_45

    .line 1810
    :cond_123
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_135

    .line 1811
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v3, 0x7f05001b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_45

    .line 1812
    :cond_135
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_147

    .line 1813
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v3, 0x7f05001d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_45

    .line 1815
    :cond_147
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/calculator/EventListener;->onKeypressClick(C)V

    goto/16 :goto_45
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1707
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1708
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1709
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1711
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eq p1, v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2e

    .line 1716
    :cond_2b
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    .line 1734
    :cond_2d
    :goto_2d
    return-void

    .line 1724
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getmContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2d

    .line 1728
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-ne v0, v1, :cond_4b

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-nez v0, :cond_4b

    .line 1729
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    .line 1731
    :cond_4b
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    .line 1732
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    .line 1733
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    goto :goto_2d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2e

    .line 271
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v3, v5}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 274
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    .line 276
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    .line 281
    :cond_2e
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    new-instance v1, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    iput-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;->onChange(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    new-instance v0, Lcom/sec/android/app/calculator/Persist;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/calculator/Persist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    iget-object v0, v0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistory:Lcom/sec/android/app/calculator/History;

    .line 291
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mAudioManager:Landroid/media/AudioManager;

    .line 293
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->requestWindowFeature(I)Z

    .line 295
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->setContentView(I)V

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_185

    .line 301
    iput-boolean v3, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    .line 305
    :goto_7e
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->initControls()V

    .line 307
    if-eqz p1, :cond_130

    .line 313
    const-string v0, "EXTRA_START"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    const-string v0, "EXTRA_END"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v3, "EXTRA_ENTER_END"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 316
    const-string v0, "EXTRA_PANEL_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 317
    if-eqz v3, :cond_189

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 318
    :goto_a3
    if-nez v3, :cond_c4

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/calculator/Panel;->getContent()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/calculator/Panel;->getHandle()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->getClosedHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventListener;->onPanelClosedForConfig()V

    .line 324
    :cond_c4
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v4, "EXTRA_CURSOR_STATE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->setmCursorState(Z)V

    .line 325
    const-string v3, "EXTRA_CURSOR_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v4, "EXTRA_STRING"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    if-le v2, v0, :cond_f6

    move v2, v0

    .line 330
    :cond_f6
    if-le v1, v0, :cond_18d

    .line 335
    :goto_f8
    if-ne v2, v0, :cond_190

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 344
    :goto_ff
    const-string v0, "EXTRA_START_DIS"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 345
    const-string v1, "EXTRA_END_DIS"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v0, v2, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const-string v1, "EXTRA_DISPLAY_SELECT_ALL"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    const-string v1, "EXTRA_IS_SELECTING_ALL"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    .line 356
    const-string v0, "EXTRA_IS_TOUCHMODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    .line 360
    :cond_130
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 361
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    .line 362
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    .line 363
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    .line 364
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    .line 365
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    .line 366
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    .line 368
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_SMALL:F

    .line 369
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_MEDIUM:F

    .line 370
    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/calculator/Calculator;->POPUP_TEXT_SIZE_LARGE:F

    .line 371
    return-void

    .line 303
    :cond_185
    iput-boolean v5, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    goto/16 :goto_7e

    .line 317
    :cond_189
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto/16 :goto_a3

    :cond_18d
    move v0, v1

    .line 330
    goto/16 :goto_f8

    .line 338
    :cond_190
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_START"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_END"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_IS_SELECTING"

    const-string v2, "EXTRA_IS_SELECTING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_ff
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 1875
    packed-switch p1, :pswitch_data_32

    .line 1935
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1878
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/calculator/Calculator$TextSizeAdapter;-><init>(Lcom/sec/android/app/calculator/Calculator;Lcom/sec/android/app/calculator/Calculator$1;)V

    new-instance v2, Lcom/sec/android/app/calculator/Calculator$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/calculator/Calculator$6;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/calculator/Calculator$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/calculator/Calculator$5;-><init>(Lcom/sec/android/app/calculator/Calculator;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 1875
    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1596
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 1597
    const/4 v0, 0x1

    const v1, 0x7f070014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1599
    const/4 v0, 0x3

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1600
    const/4 v0, 0x2

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1602
    const/4 v0, 0x4

    const v1, 0x7f070017

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1603
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    if-eqz v0, :cond_7

    .line 1373
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->saveCurrentText()V

    .line 1375
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->customObserver:Lcom/sec/android/app/calculator/Calculator$CustomContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1384
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1385
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 802
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 803
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 804
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 806
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 811
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    if-eqz v0, :cond_92

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    .line 814
    :goto_2e
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isInitialTouchMode:Z

    .line 817
    if-eqz p2, :cond_78

    .line 818
    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_START"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_END"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 824
    if-gez v3, :cond_5f

    move v3, v1

    .line 825
    :cond_5f
    if-le v3, v0, :cond_62

    move v3, v0

    .line 826
    :cond_62
    if-gez v2, :cond_9c

    .line 827
    :goto_64
    if-le v1, v0, :cond_9a

    .line 830
    :goto_66
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 832
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    .line 834
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    if-nez v0, :cond_95

    .line 835
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    .line 852
    :cond_78
    :goto_78
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    if-eqz v0, :cond_91

    if-eqz p2, :cond_91

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick()Z

    move-result v0

    if-nez v0, :cond_91

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    if-eqz v0, :cond_91

    .line 855
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/Calculator;->onClick(Landroid/view/View;)V

    .line 857
    :cond_91
    return-void

    .line 812
    :cond_92
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    goto :goto_2e

    .line 837
    :cond_95
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    goto :goto_78

    :cond_9a
    move v0, v1

    goto :goto_66

    :cond_9c
    move v1, v2

    goto :goto_64
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    .line 1740
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0x42

    if-eq p2, v1, :cond_23

    const/16 v1, 0x17

    if-eq p2, v1, :cond_23

    const/16 v1, 0x13

    if-eq p2, v1, :cond_23

    const/16 v1, 0x14

    if-eq p2, v1, :cond_23

    const/16 v1, 0x15

    if-eq p2, v1, :cond_23

    const/16 v1, 0x16

    if-eq p2, v1, :cond_23

    const/16 v1, 0x3b

    if-ne p2, v1, :cond_24

    .line 1749
    :cond_23
    :goto_23
    return v0

    .line 1746
    :cond_24
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_23

    .line 1747
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/calculator/Calculator;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v2, 0x17

    const v3, 0x7f05000d

    .line 743
    const/16 v1, 0x52

    if-ne v1, p1, :cond_29

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_29

    .line 744
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->closeOptionsMenu()V

    .line 753
    :cond_18
    :goto_18
    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 754
    :cond_24
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 770
    :goto_28
    return v1

    .line 747
    :cond_29
    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isQwerty:Z

    if-eqz v1, :cond_18

    if-ne p1, v2, :cond_18

    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-ne v1, v3, :cond_18

    .line 748
    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 749
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    goto :goto_18

    .line 757
    .end local v0           #btn:Landroid/widget/Button;
    :cond_3f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_5f

    const/16 v1, 0x42

    if-eq p1, v1, :cond_5f

    if-eq p1, v2, :cond_5f

    const/16 v1, 0x13

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x14

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x15

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x16

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_64

    .line 761
    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_28

    .line 763
    :cond_64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_7d

    .line 764
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    if-nez v1, :cond_74

    .line 765
    const/4 v1, 0x0

    goto :goto_28

    .line 766
    :cond_74
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    .line 768
    :cond_7d
    invoke-virtual {p0, p2}, Lcom/sec/android/app/calculator/Calculator;->filter(Landroid/view/KeyEvent;)V

    .line 770
    const/4 v1, 0x1

    goto :goto_28
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 783
    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2e

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventListener;->onClick(Landroid/view/View;)V

    .line 790
    const/4 v0, 0x1

    .line 792
    :goto_2d
    return v0

    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2d
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1684
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f050004

    if-ne v3, v4, :cond_31

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    .line 1686
    .local v0, mV:Landroid/widget/EditText;
    :goto_12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 1688
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/calculator/EventHandler;->getmCursorState()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1689
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1691
    :cond_2b
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 1701
    :goto_30
    return v1

    .line 1685
    .end local v0           #mV:Landroid/widget/EditText;
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    goto :goto_12

    .line 1694
    .restart local v0       #mV:Landroid/widget/EditText;
    :cond_34
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4e

    .line 1696
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    goto :goto_30

    :cond_4e
    move v1, v2

    .line 1701
    goto :goto_30
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1647
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 1680
    :goto_9
    return v2

    .line 1649
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->onHisClear()V

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    goto :goto_9

    .line 1658
    :pswitch_1d
    invoke-virtual {p0, v2}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_9

    .line 1662
    :pswitch_21
    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->setRequestedOrientation(I)V

    goto :goto_9

    .line 1672
    :pswitch_25
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    .line 1673
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->showDialog(I)V

    goto :goto_9

    .line 1647
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPersist:Lcom/sec/android/app/calculator/Persist;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/Persist;->save()V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :cond_20
    iput-boolean v4, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget v0, v0, Lcom/sec/android/app/calculator/EventHandler;->lastError:I

    sput v0, Lcom/sec/android/app/calculator/Calculator;->error:I

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_IS_SELECTING"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_START"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_45
    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_END"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_5c
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->savePanelState()V

    .line 1189
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    if-eqz v0, :cond_6f

    .line 1190
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->removeDialog(I)V

    .line 1196
    :cond_6f
    return-void

    .line 1181
    :cond_70
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_45

    .line 1183
    :cond_73
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_5c
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 1610
    :goto_16
    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    .line 1611
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 1615
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "accelerometer_rotation"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1617
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 1622
    :cond_48
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isDisplayScreen()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isHistoryScreen()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_5c
    move v0, v2

    :goto_5d
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1624
    if-nez v5, :cond_81

    .line 1626
    packed-switch v6, :pswitch_data_90

    move v0, v4

    move v4, v3

    .line 1637
    :goto_67
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1638
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1643
    :goto_75
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1609
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_16

    :cond_7d
    move v0, v1

    .line 1622
    goto :goto_5d

    :pswitch_7f
    move v0, v3

    .line 1630
    goto :goto_67

    .line 1640
    :cond_81
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1641
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_75

    .line 1626
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7f
    .end packed-switch
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1199
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_124

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDTMFToneEnabled:Z

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_REVIEW"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1205
    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v4, "EXTRA_START"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1206
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v5, "EXTRA_END"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1209
    iget-object v5, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v5, v5, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1212
    iget-object v6, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v6

    .line 1215
    iget-object v7, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v8, "EXTRA_IS_SELECTING"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1216
    if-eqz v0, :cond_5f

    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v9, "EXTRA_ORIENTATION"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_5f

    .line 1218
    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1228
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eqz v0, :cond_b4

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_b4

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1242
    array-length v8, v0

    if-le v8, v1, :cond_b4

    .line 1243
    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/android/app/calculator/EventHandler;->changeColor(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    sget v8, Lcom/sec/android/app/calculator/Calculator;->error:I

    invoke-virtual {v0, v2, v8}, Lcom/sec/android/app/calculator/EventHandler;->onEnter(ZI)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v5, v0, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    .line 1259
    sput v2, Lcom/sec/android/app/calculator/Calculator;->error:I

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    .line 1274
    :cond_b4
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->loadCurrentText()V

    .line 1276
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Calculator;->loadPanelState()V

    .line 1279
    sget v0, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->setTextSize(I)V

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-eqz v0, :cond_ec

    .line 1282
    if-eqz v7, :cond_16d

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 1287
    :goto_d3
    :try_start_d3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_da} :catch_12a

    .line 1291
    :goto_da
    if-eqz v6, :cond_15d

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v5, v3, :cond_15d

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelectingAll(Z)V

    .line 1321
    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 1322
    :goto_f6
    iget v1, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    if-eqz v1, :cond_1d8

    .line 1323
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1c3

    .line 1324
    if-eqz v0, :cond_10e

    .line 1325
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1349
    :cond_10e
    :goto_10e
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setTouchInteraction(Z)V

    .line 1351
    iput-boolean v2, p0, Lcom/sec/android/app/calculator/Calculator;->isPause:Z

    .line 1353
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_123

    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z

    if-eqz v0, :cond_123

    .line 1354
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->showDialog(I)V

    .line 1357
    :cond_123
    return-void

    :cond_124
    move v0, v2

    .line 1201
    goto/16 :goto_12

    .line 1283
    :cond_127
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_d3

    .line 1288
    :catch_12a
    move-exception v5

    .line 1289
    const-string v5, "Calculator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TXT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " s-pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " e-pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 1295
    :cond_15d
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v4, 0x3b

    invoke-direct {v3, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    goto :goto_ec

    .line 1309
    :cond_16d
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18a

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    .line 1311
    :goto_177
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    .line 1313
    :try_start_17c
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_183} :catch_18d

    .line 1317
    :goto_183
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto/16 :goto_ec

    .line 1309
    :cond_18a
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_177

    .line 1314
    :catch_18d
    move-exception v1

    .line 1315
    const-string v1, "Calculator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TXT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " s-pos = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " e-pos = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    .line 1321
    :cond_1bf
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto/16 :goto_f6

    .line 1331
    :cond_1c3
    if-nez v7, :cond_10e

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isTouchInteraction()Z

    move-result v0

    if-nez v0, :cond_10e

    .line 1340
    iget v0, p0, Lcom/sec/android/app/calculator/Calculator;->lastFocusId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_10e

    .line 1343
    :cond_1d8
    if-eqz v0, :cond_10e

    .line 1344
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_10e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    const/4 v1, 0x0

    .line 430
    iput-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isRotationCheck:Z

    .line 435
    const-string v0, "EXTRA_PANEL_STATE"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string v0, "EXTRA_ENTER_END"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-boolean v2, v2, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    const-string v0, "EXTRA_CURSOR_STATE"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->getmCursorState()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string v0, "EXTRA_IS_SELECTING"

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v3, "EXTRA_REVIEW"

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_3b
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->bundle:Landroid/os/Bundle;

    const-string v2, "EXTRA_ORIENTATION"

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v2, "EXTRA_START"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_5d
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v2, "EXTRA_END"

    iget-object v3, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    :goto_73
    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v1, "EXTRA_STRING"

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mPanel:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "EXTRA_START_DIS"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionS:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v0, "EXTRA_END_DIS"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectionE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    const-string v0, "EXTRA_DISPLAY_SELECT_ALL"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    iget-boolean v1, v1, Lcom/sec/android/app/calculator/EventListener;->mDisplaySelectAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 468
    const-string v0, "EXTRA_IS_SELECTING_ALL"

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string v0, "EXTRA_IS_TOUCHMODE"

    iget-boolean v1, p0, Lcom/sec/android/app/calculator/Calculator;->isTouchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 475
    return-void

    :cond_c2
    move v0, v1

    .line 450
    goto/16 :goto_3b

    .line 453
    :cond_c5
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_5d

    .line 455
    :cond_c8
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    goto :goto_73

    .line 458
    :cond_cb
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8e
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 1367
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1368
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const v3, 0x7f050004

    const/4 v8, 0x2

    const/high16 v2, 0x3f00

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 866
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/Calculator;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 870
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 874
    iput-boolean v7, p0, Lcom/sec/android/app/calculator/Calculator;->isTouch:Z

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050005

    if-eq v0, v1, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v3, :cond_40

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 878
    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050005

    if-eq v0, v1, :cond_4f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_b9

    .line 879
    :cond_4f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_90

    .line 880
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_91

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    .line 881
    :goto_5d
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/calculator/EventHandler;->isMultiSelection(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v1

    if-nez v1, :cond_83

    .line 885
    :cond_75
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    if-ne v0, v1, :cond_94

    .line 886
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->showCursor()V

    .line 887
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 894
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isLongClick()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->setLongClick(Z)V

    .line 949
    :cond_90
    :goto_90
    return v4

    .line 880
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;

    goto :goto_5d

    .line 890
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto :goto_83

    .line 897
    :cond_9a
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/EventHandler;->isSelectingAll()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->onShift(Landroid/view/View;Z)V

    .line 899
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 901
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    goto :goto_90

    .line 910
    :cond_b9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10c

    :pswitch_c0
    goto :goto_90

    .line 912
    :pswitch_c1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/calculator/Calculator;->onVibrator(Landroid/view/View;)V

    .line 914
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_e4

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v8, :cond_e4

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000d

    if-ne v0, v1, :cond_f7

    .line 918
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/sec/android/app/calculator/Calculator;->mBackspaceSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 931
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    if-eqz v0, :cond_ed

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    invoke-virtual {p0, v0, v8}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    .line 934
    :cond_ed
    invoke-virtual {p0, p1, v7}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v7, v0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    .line 936
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator;->review:Landroid/view/View;

    goto :goto_90

    .line 920
    :cond_f7
    sget-object v0, Lcom/sec/android/app/calculator/Calculator;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/sec/android/app/calculator/Calculator;->mCurrentSoundID:I

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_e4

    .line 943
    :pswitch_103
    invoke-virtual {p0, p1, v8}, Lcom/sec/android/app/calculator/Calculator;->button_image_change(Landroid/view/View;I)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput-boolean v4, v0, Lcom/sec/android/app/calculator/EventHandler;->delst:Z

    goto :goto_90

    .line 910
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_103
        :pswitch_c0
        :pswitch_103
    .end packed-switch
.end method

.method public onVibrator(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 958
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 959
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 960
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z

    if-nez v0, :cond_9

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->changeTextSize()V

    .line 1364
    :cond_9
    return-void
.end method

.method public setTextSize(I)V
    .registers 5
    .parameter

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1822
    sget v1, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    .line 1824
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 1825
    packed-switch p1, :pswitch_data_4a

    .line 1836
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    .line 1855
    :goto_14
    sput p1, Lcom/sec/android/app/calculator/Calculator;->mCurrentTextSize:I

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;

    iput v0, v1, Lcom/sec/android/app/calculator/EventHandler;->SelectedTextSize:F

    .line 1861
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    if-eqz v1, :cond_30

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator;->mHistoryScreen:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventListener;->updateHistory()V

    .line 1870
    :cond_30
    return-void

    .line 1827
    :pswitch_31
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_PORT:F

    goto :goto_14

    .line 1830
    :pswitch_34
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_PORT:F

    goto :goto_14

    .line 1833
    :pswitch_37
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_PORT:F

    goto :goto_14

    .line 1839
    :cond_3a
    packed-switch p1, :pswitch_data_54

    .line 1850
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    goto :goto_14

    .line 1841
    :pswitch_40
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_LARGE_LAND:F

    goto :goto_14

    .line 1844
    :pswitch_43
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_MEDIUM_LAND:F

    goto :goto_14

    .line 1847
    :pswitch_46
    sget v0, Lcom/sec/android/app/calculator/Calculator;->TEXT_SIZE_SMALL_LAND:F

    goto :goto_14

    .line 1825
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch

    .line 1839
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method
