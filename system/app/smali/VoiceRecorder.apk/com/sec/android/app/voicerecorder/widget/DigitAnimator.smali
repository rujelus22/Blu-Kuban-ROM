.class public Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;
.super Landroid/widget/ViewAnimator;
.source "DigitAnimator.java"


# static fields
.field private static mBlinkInAni:Landroid/view/animation/Animation;

.field private static mBlinkOutAni:Landroid/view/animation/Animation;

.field private static mHour_l:I

.field private static mHour_r:I

.field private static mMin_l:I

.field private static mMin_r:I

.field private static mSec_l:I

.field private static mSec_r:I

.field public static mTime:J

.field private static time:Landroid/text/format/Time;


# instance fields
.field private alreadyInited:I

.field private drawableArray:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    .line 139
    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    sput v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v7, 0x0

    const/high16 v6, 0x3f80

    const v5, 0x3dcccccd

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->drawableArray:[Landroid/graphics/drawable/Drawable;

    .line 101
    iput v4, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->alreadyInited:I

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->init()V

    .line 49
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 51
    .local v0, inAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 55
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 57
    .local v2, outAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->setAnimateFirstView(Z)V

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->drawableArray:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->addView(Landroid/view/View;I)V

    .line 76
    return-void
.end method

.method private static createBlinkAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 6
    .parameter "context"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 317
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 319
    .local v0, blinkAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 321
    const v1, 0x10a0004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 323
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 325
    return-object v0
.end method

.method public static getBlinkInAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 3
    .parameter "context"

    .prologue
    .line 303
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkInAni:Landroid/view/animation/Animation;

    if-nez v0, :cond_d

    .line 305
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->createBlinkAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkInAni:Landroid/view/animation/Animation;

    .line 307
    :cond_d
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkInAni:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static getBlinkOutAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 3
    .parameter "context"

    .prologue
    .line 287
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkOutAni:Landroid/view/animation/Animation;

    if-nez v0, :cond_d

    .line 289
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->createBlinkAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkOutAni:Landroid/view/animation/Animation;

    .line 293
    :cond_d
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mBlinkOutAni:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private init()V
    .registers 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    .local v1, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->drawableArray:[Landroid/graphics/drawable/Drawable;

    array-length v2, v3

    .line 82
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_1d

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->drawableArray:[Landroid/graphics/drawable/Drawable;

    const v4, 0x7f02002a

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 85
    :cond_1d
    return-void
.end method

.method public static resetData()V
    .registers 1

    .prologue
    .line 145
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    .line 147
    return-void
.end method

.method public static resetUI(Landroid/os/Handler;)V
    .registers 5
    .parameter "uiUpdateHandler"

    .prologue
    const/16 v3, 0xbcc

    .line 153
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    sget-wide v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mTime:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 157
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    .line 159
    const v0, 0x7f090051

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    .line 165
    const v0, 0x7f090052

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    .line 171
    const v0, 0x7f090053

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    .line 177
    const v0, 0x7f090054

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    .line 183
    const v0, 0x7f090055

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    .line 189
    const v0, 0x7f090056

    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    invoke-static {p0, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method

.method public static updateUI(Landroid/os/Handler;)V
    .registers 6
    .parameter "uiUpdateHandler"

    .prologue
    const/16 v4, 0xbcc

    .line 197
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    sget-wide v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mTime:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 201
    const/4 v0, 0x0

    .line 205
    .local v0, calculated:I
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    div-int/lit8 v0, v1, 0xa

    .line 207
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    if-eq v1, v0, :cond_22

    .line 209
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    .line 211
    const v1, 0x7f090051

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_l:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :cond_22
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v0, v1, 0xa

    .line 219
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    if-eq v1, v0, :cond_3a

    .line 221
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    .line 223
    const v1, 0x7f090052

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mHour_r:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    :cond_3a
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    div-int/lit8 v0, v1, 0xa

    .line 231
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    if-eq v1, v0, :cond_52

    .line 233
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    .line 235
    const v1, 0x7f090053

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_l:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 241
    :cond_52
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v0, v1, 0xa

    .line 243
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    if-eq v1, v0, :cond_6a

    .line 245
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    .line 247
    const v1, 0x7f090054

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mMin_r:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 253
    :cond_6a
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    div-int/lit8 v0, v1, 0xa

    .line 255
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    if-eq v1, v0, :cond_82

    .line 257
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    .line 259
    const v1, 0x7f090055

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_l:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 265
    :cond_82
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->time:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    rem-int/lit8 v0, v1, 0xa

    .line 267
    sget v1, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    if-eq v1, v0, :cond_9a

    .line 269
    sput v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    .line 271
    const v1, 0x7f090056

    sget v2, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mSec_r:I

    invoke-static {p0, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 275
    :cond_9a
    return-void
.end method


# virtual methods
.method public setDisplayedChild(I)V
    .registers 4
    .parameter "whichChild"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->drawableArray:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method
