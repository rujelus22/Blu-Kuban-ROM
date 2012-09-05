.class public Lcom/sec/android/app/voicerecorder/widget/EQBar;
.super Landroid/widget/ImageView;
.source "EQBar.java"


# static fields
.field private static EQ_THRESHOLD_ARRAY:[I

.field protected static eqAniSet:[Landroid/view/animation/AnimationSet;

.field private static eqBars:[Lcom/sec/android/app/voicerecorder/widget/EQBar;

.field private static eqLevelBefore:I

.field private static eqLevels:[I

.field private static eqLevelsBefore:[I

.field private static interpolateIndex:I

.field private static interpolators:[Landroid/view/animation/Interpolator;

.field public static mAmplitude:I

.field private static yDeltaArray:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 63
    new-array v0, v1, [I

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelsBefore:[I

    .line 65
    new-array v0, v1, [I

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    .line 69
    new-array v0, v1, [Lcom/sec/android/app/voicerecorder/widget/EQBar;

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqBars:[Lcom/sec/android/app/voicerecorder/widget/EQBar;

    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    .line 79
    new-array v0, v1, [Landroid/view/animation/AnimationSet;

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqAniSet:[Landroid/view/animation/AnimationSet;

    .line 115
    sput v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->mAmplitude:I

    .line 227
    sput v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelBefore:I

    .line 377
    sput v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolateIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const v0, 0x7f020027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->setImageResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->EQ_THRESHOLD_ARRAY:[I

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->yDeltaArray:[I

    .line 97
    return-void
.end method

.method private static generateEQLevels()Z
    .registers 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, eqLevel:I
    const/4 v2, 0x1

    .line 247
    .local v2, isLoud:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    const/16 v3, 0xd

    if-ge v1, v3, :cond_16

    .line 249
    sget v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->mAmplitude:I

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/EQBar;->EQ_THRESHOLD_ARRAY:[I

    aget v4, v4, v1

    if-gt v3, v4, :cond_40

    .line 251
    add-int/lit8 v0, v1, 0x1

    .line 253
    const/4 v2, 0x0

    .line 261
    :cond_16
    if-ne v2, v6, :cond_1a

    .line 263
    const/16 v0, 0xe

    .line 283
    :cond_1a
    sget v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelBefore:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelBefore:I

    rem-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 287
    const/16 v3, 0xf

    if-lt v0, v3, :cond_29

    .line 289
    const/16 v0, 0xe

    .line 293
    :cond_29
    const/16 v3, 0xe

    if-ne v0, v3, :cond_32

    .line 295
    sget v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelBefore:I

    rem-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 301
    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-ge v1, v7, :cond_43

    .line 303
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelsBefore:[I

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 247
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 309
    :cond_43
    const/4 v1, 0x0

    :goto_44
    const/4 v3, 0x2

    if-ge v1, v3, :cond_59

    .line 311
    add-int/lit8 v3, v0, -0x2

    if-lez v3, :cond_54

    .line 313
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    add-int/lit8 v4, v0, -0x2

    aput v4, v3, v1

    .line 309
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 317
    :cond_54
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v5, v3, v1

    goto :goto_51

    .line 323
    :cond_59
    const/4 v1, 0x2

    :goto_5a
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6f

    .line 325
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_6a

    .line 327
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    add-int/lit8 v4, v0, -0x1

    aput v4, v3, v1

    .line 323
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 331
    :cond_6a
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v5, v3, v1

    goto :goto_67

    .line 337
    :cond_6f
    const/4 v1, 0x4

    :goto_70
    const/4 v3, 0x6

    if-ge v1, v3, :cond_7a

    .line 339
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v0, v3, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 345
    :cond_7a
    const/4 v1, 0x6

    :goto_7b
    const/16 v3, 0x8

    if-ge v1, v3, :cond_91

    .line 347
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_8c

    .line 349
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    add-int/lit8 v4, v0, -0x1

    aput v4, v3, v1

    .line 345
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 353
    :cond_8c
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v5, v3, v1

    goto :goto_89

    .line 359
    :cond_91
    const/16 v1, 0x8

    :goto_93
    if-ge v1, v7, :cond_a7

    .line 361
    add-int/lit8 v3, v0, -0x2

    if-lez v3, :cond_a2

    .line 363
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    add-int/lit8 v4, v0, -0x2

    aput v4, v3, v1

    .line 359
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 367
    :cond_a2
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v5, v3, v1

    goto :goto_9f

    .line 371
    :cond_a7
    return v6
.end method

.method public static initLevelUI(Landroid/os/Handler;)V
    .registers 4
    .parameter "UIUpdateHandler"

    .prologue
    const/4 v2, 0x0

    .line 129
    sput v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->mAmplitude:I

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 133
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelsBefore:[I

    aput v2, v1, v0

    .line 135
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aput v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_13
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->prepareAnimations()V

    .line 143
    const/16 v1, 0xbc2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public static initViews(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1c

    .line 165
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqBars:[Lcom/sec/android/app/voicerecorder/widget/EQBar;

    move-object v1, p0

    check-cast v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const v3, 0x7f090033

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;

    aput-object v1, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 171
    :cond_1c
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    aget-object v1, v1, v4

    if-nez v1, :cond_76

    .line 173
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const v2, 0x10a000b

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 175
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const v2, 0x10a000a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 177
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const/4 v2, 0x2

    const v3, 0x10a0006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const v2, 0x10a0004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 181
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 183
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v5

    aput-object v3, v1, v2

    .line 185
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v6

    aput-object v3, v1, v2

    .line 187
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    const/4 v2, 0x7

    const v3, 0x10a0005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 191
    :cond_76
    return-void
.end method

.method public static move()V
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    .line 105
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqBars:[Lcom/sec/android/app/voicerecorder/widget/EQBar;

    aget-object v1, v1, v0

    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqAniSet:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_13
    return-void
.end method

.method private static newTranslateAnimation(II)Landroid/view/animation/TranslateAnimation;
    .registers 7
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 433
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 435
    .local v0, transAni:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 437
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 439
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 441
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 443
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 447
    return-object v0
.end method

.method private static prepareAnimations()V
    .registers 7

    .prologue
    const/16 v6, 0xa

    .line 399
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v6, :cond_12

    .line 401
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqAniSet:[Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    aput-object v3, v2, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 409
    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v6, :cond_33

    .line 411
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->yDeltaArray:[I

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevelsBefore:[I

    aget v3, v3, v1

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->yDeltaArray:[I

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqLevels:[I

    aget v4, v4, v1

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->newTranslateAnimation(II)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 413
    .local v0, ani1:Landroid/view/animation/TranslateAnimation;
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqAniSet:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 421
    .end local v0           #ani1:Landroid/view/animation/TranslateAnimation;
    :cond_33
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v6, :cond_4c

    .line 423
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/EQBar;->eqAniSet:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v1

    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolators:[Landroid/view/animation/Interpolator;

    sget v4, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolateIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/sec/android/app/voicerecorder/widget/EQBar;->interpolateIndex:I

    rem-int/lit8 v4, v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 427
    :cond_4c
    return-void
.end method

.method public static updateUI(Landroid/os/Handler;)V
    .registers 3
    .parameter "UIUpdateHandler"

    .prologue
    .line 209
    sget v0, Lcom/sec/android/app/voicerecorder/widget/EQBar;->mAmplitude:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 223
    :cond_5
    :goto_5
    return-void

    .line 215
    :cond_6
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->generateEQLevels()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->prepareAnimations()V

    .line 219
    const/16 v0, 0xbc2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5
.end method
