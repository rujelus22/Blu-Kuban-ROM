.class Lcom/android/internal/policy/impl/TabletLockScreen;
.super Landroid/widget/RelativeLayout;
.source "TabletLockscreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final DBG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "TabletLockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v9, 0x4160

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v8, 0x1

    const/4 v3, -0x1

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object p3, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    iput-object p4, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 137
    iput-object p5, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 141
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    .line 143
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mKeyboardHidden:I

    .line 146
    const-string v0, "TabletLockScreen"

    const-string v1, "***** CREATING LOCK SCREEN"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const-string v0, "TabletLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 152
    .local v6, inflater:Landroid/view/LayoutInflater;
    const-string v0, "TabletLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11d

    .line 154
    const v0, 0x1090059

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 159
    :goto_81
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    const v1, 0x1040606

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    const v1, -0x141415

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41e8

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 169
    .local v7, scale:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    mul-float v1, v9, v7

    float-to-int v1, v1

    mul-float v2, v9, v7

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v0, p1, p5}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v1, Lcom/android/internal/policy/impl/TabletLockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TabletLockScreen$2;-><init>(Lcom/android/internal/policy/impl/TabletLockScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/TabletLockScreen;->addView(Landroid/view/View;II)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/TabletLockScreen;->addView(Landroid/view/View;II)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/TabletLockScreen;->addView(Landroid/view/View;II)V

    .line 196
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 199
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/TabletLockScreen;->setFocusable(Z)V

    .line 200
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/TabletLockScreen;->setFocusableInTouchMode(Z)V

    .line 201
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TabletLockScreen;->setDescendantFocusability(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    .line 206
    return-void

    .line 156
    .end local v7           #scale:F
    :cond_11d
    const v0, 0x109005a

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_81
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TabletLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TabletLockScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/TabletLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method private bedimBackground(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 210
    if-eqz p1, :cond_23

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :goto_22
    return-void

    .line 220
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22
.end method

.method private isSilentMode()Z
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private requestUnlockScreen()V
    .registers 4

    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/TabletLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TabletLockScreen$1;-><init>(Lcom/android/internal/policy/impl/TabletLockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/TabletLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 117
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 119
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 120
    .local v1, fileOverride:Z
    if-eqz v0, :cond_20

    if-nez v2, :cond_20

    if-eqz v1, :cond_22

    :cond_20
    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private toggleRingMode()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    if-nez v1, :cond_24

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    .line 95
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2a

    .line 96
    iget-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_26

    move v0, v2

    .line 100
    .local v0, vibe:Z
    :goto_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_28

    :goto_20
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 106
    .end local v0           #vibe:Z
    :goto_23
    return-void

    :cond_24
    move v1, v3

    .line 94
    goto :goto_7

    :cond_26
    move v0, v3

    .line 96
    goto :goto_1c

    .restart local v0       #vibe:Z
    :cond_28
    move v2, v3

    .line 100
    goto :goto_20

    .line 104
    .end local v0           #vibe:Z
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_23
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 291
    iput-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 292
    iput-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 293
    iput-object v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 294
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 251
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 253
    const-string v0, "TabletLockScreen"

    const-string v1, "***** LOCK ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "TabletLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->updateConfiguration()V

    .line 258
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    const-string v0, "TabletLockScreen"

    const-string v1, "***** LOCK CONFIG CHANGING"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const-string v0, "TabletLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->updateConfiguration()V

    .line 270
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    const/16 v0, 0x52

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_d

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 233
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 280
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 305
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 286
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 298
    const/4 v1, 0x2

    if-eq v1, p1, :cond_b

    const/4 v0, 0x1

    .line 299
    .local v0, silent:Z
    :goto_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_a

    .line 300
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mSilentMode:Z

    .line 302
    :cond_a
    return-void

    .line 298
    .end local v0           #silent:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateConfiguration()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TabletLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 238
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 247
    :cond_14
    :goto_14
    return-void

    .line 240
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 241
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mKeyboardHidden:I

    .line 242
    iget v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_33

    .line 243
    .local v0, isKeyboardOpen:Z
    :goto_23
    iget-object v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/TabletLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 242
    .end local v0           #isKeyboardOpen:Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_23
.end method
