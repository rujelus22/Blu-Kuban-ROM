.class public Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;
.super Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;
.source "VideoBrightnessDialog.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VideoBrightnessDialog"


# instance fields
.field private mAutoCheckbox:Landroid/widget/CheckBox;

.field private mBrightProgressBar:Landroid/widget/SeekBar;

.field private mBrightness:I

.field private mBrightness_temp:I

.field private mWasAuto:Z

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    .line 196
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$5;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mWasAuto:Z

    return v0
.end method


# virtual methods
.method protected setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
    .registers 12
    .parameter "dialogBuilder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 52
    .local v2, inflate:Landroid/view/LayoutInflater;
    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 53
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a0039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, text:Landroid/widget/TextView;
    const v5, 0x7f0a003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    .line 55
    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    .line 57
    const/4 v0, 0x0

    .line 60
    .local v0, autoBright:I
    :try_start_34
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_34 .. :try_end_3f} :catch_c8

    move-result v0

    .line 65
    :goto_40
    const-string v5, "VideoBrightnessDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNormalDialog() - autoBright:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_a7

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_a7

    .line 68
    if-nez v0, :cond_ce

    .line 69
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 71
    iget v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    if-gez v5, :cond_72

    iput-boolean v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mWasAuto:Z

    .line 78
    :cond_72
    :goto_72
    const v5, 0x7f080026

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getBrightnessLevel()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I

    .line 103
    iget v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    if-gez v5, :cond_94

    iget v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I

    iput v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    .line 105
    :cond_94
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 110
    :cond_a7
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v5, 0x7f080023

    new-instance v6, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V

    invoke-virtual {p1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const/high16 v5, 0x104

    new-instance v6, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$3;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V

    invoke-virtual {p1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v5, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog$4;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;)V

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    return-void

    .line 61
    :catch_c8
    move-exception v1

    .line 62
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_40

    .line 73
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_ce
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mAutoCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 75
    iget v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mBrightness_temp:I

    if-gez v5, :cond_72

    iput-boolean v9, p0, Lcom/sec/android/app/videoplayer/popup/VideoBrightnessDialog;->mWasAuto:Z

    goto :goto_72
.end method

.method protected setDialogExtra(Landroid/app/AlertDialog;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getAutoBrightness()Z

    move-result v1

    if-nez v1, :cond_24

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 190
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 192
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_24
    return-void
.end method

.method protected setDialogId()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->dialogId:I

    .line 41
    return-void
.end method

.method protected setDialogTitle(Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter "dialogBuilder"

    .prologue
    .line 45
    const v0, 0x7f080013

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 48
    return-void
.end method
