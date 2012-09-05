.class public Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;
.super Landroid/app/Activity;
.source "Keypad2Test.java"


# static fields
.field static LOG_TAG:Ljava/lang/String;

.field private static mkeyButtonMelody:Landroid/media/MediaPlayer;


# instance fields
.field private buttonDown:[Z

.field private mA:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mB:Landroid/widget/TextView;

.field private mBack:Landroid/widget/TextView;

.field private mC:Landroid/widget/TextView;

.field private mD:Landroid/widget/TextView;

.field private mDown:Landroid/widget/TextView;

.field private mE:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mEnter:Landroid/widget/TextView;

.field private mF:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFn:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mG:Landroid/widget/TextView;

.field private mH:Landroid/widget/TextView;

.field private mI:Landroid/widget/TextView;

.field private mJ:Landroid/widget/TextView;

.field private mK:Landroid/widget/TextView;

.field private mL:Landroid/widget/TextView;

.field private mLeft:Landroid/widget/TextView;

.field private mM:Landroid/widget/TextView;

.field private mN:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mO:Landroid/widget/TextView;

.field private mOk:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mP:Landroid/widget/TextView;

.field private mQ:Landroid/widget/TextView;

.field private mR:Landroid/widget/TextView;

.field private mRight:Landroid/widget/TextView;

.field private mS:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mShift:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mSpace:Landroid/widget/TextView;

.field private mSym:Landroid/widget/TextView;

.field private mT:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mU:Landroid/widget/TextView;

.field private mUp:Landroid/widget/TextView;

.field private mV:Landroid/widget/TextView;

.field private mW:Landroid/widget/TextView;

.field private mX:Landroid/widget/TextView;

.field private mY:Landroid/widget/TextView;

.field private mZ:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field private pass:Z

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "Keypad2Test"

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pass:Z

    .line 21
    const/16 v0, 0x32

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 75
    const v1, 0x7f050003

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mkeyButtonMelody:Landroid/media/MediaPlayer;

    .line 76
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSym:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mOne:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mTwo:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mThree:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFour:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFive:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f090070

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSix:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f090071

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSeven:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f090072

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mEight:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f090073

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mNine:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mZero:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mBack:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mShift:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mQ:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mW:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mE:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mR:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mT:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mY:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mU:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mI:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f09007e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mO:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mP:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f090080

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mEnter:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFn:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f090082

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mA:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mS:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mD:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f090085

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mF:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f090086

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mG:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f090087

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mH:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mJ:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mK:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mL:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mUp:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mOk:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f09008d

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mZ:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mX:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f09008f

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mC:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mV:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mB:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSpace:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f090093

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mN:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f090094

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mM:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mLeft:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mDown:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mRight:Landroid/widget/TextView;

    .line 133
    const/4 v0, 0x0

    .local v0, i:I
    :goto_219
    const/16 v1, 0x2f

    if-ge v0, v1, :cond_225

    .line 134
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_219

    .line 136
    :cond_225
    return-void
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 143
    const-string v0, "Keypad2Test"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->finish()V

    .line 146
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->setContentView(I)V

    .line 46
    const-string v0, "Keypad2Test"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pm:Landroid/os/PowerManager;

    .line 49
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->wl:Landroid/os/PowerManager$WakeLock;

    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->init()V

    .line 53
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->setVolume()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 155
    const-string v1, "KEYCODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOWN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_41

    .line 158
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSym:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aput-boolean v4, v1, v6

    .line 300
    :cond_2f
    :goto_2f
    iput-boolean v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pass:Z

    .line 302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_32
    const/16 v1, 0x2f

    if-ge v0, v1, :cond_338

    .line 303
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3e

    .line 304
    iput-boolean v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pass:Z

    .line 302
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 160
    .end local v0           #i:I
    :cond_41
    if-ne p1, v8, :cond_4d

    .line 161
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mOne:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aput-boolean v4, v1, v4

    goto :goto_2f

    .line 163
    :cond_4d
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5c

    .line 164
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_2f

    .line 166
    :cond_5c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_6b

    .line 167
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mThree:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    goto :goto_2f

    .line 169
    :cond_6b
    const/16 v1, 0xb

    if-ne p1, v1, :cond_79

    .line 170
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFour:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aput-boolean v4, v1, v5

    goto :goto_2f

    .line 172
    :cond_79
    const/16 v1, 0xc

    if-ne p1, v1, :cond_88

    .line 173
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFive:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_2f

    .line 175
    :cond_88
    const/16 v1, 0xd

    if-ne p1, v1, :cond_97

    .line 176
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSix:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_2f

    .line 178
    :cond_97
    const/16 v1, 0xe

    if-ne p1, v1, :cond_a5

    .line 179
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aput-boolean v4, v1, v7

    goto :goto_2f

    .line 181
    :cond_a5
    const/16 v1, 0xf

    if-ne p1, v1, :cond_b4

    .line 182
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mEight:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    aput-boolean v4, v1, v8

    goto/16 :goto_2f

    .line 184
    :cond_b4
    const/16 v1, 0x10

    if-ne p1, v1, :cond_c5

    .line 185
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mNine:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 187
    :cond_c5
    if-ne p1, v7, :cond_d4

    .line 188
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mZero:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 190
    :cond_d4
    const/16 v1, 0x43

    if-ne p1, v1, :cond_e5

    .line 191
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mBack:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 193
    :cond_e5
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_f6

    .line 194
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mShift:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 196
    :cond_f6
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_107

    .line 197
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mQ:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 199
    :cond_107
    const/16 v1, 0x33

    if-ne p1, v1, :cond_118

    .line 200
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mW:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 202
    :cond_118
    const/16 v1, 0x21

    if-ne p1, v1, :cond_129

    .line 203
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mE:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 205
    :cond_129
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_13a

    .line 206
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mR:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 208
    :cond_13a
    const/16 v1, 0x30

    if-ne p1, v1, :cond_14b

    .line 209
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mT:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 211
    :cond_14b
    const/16 v1, 0x35

    if-ne p1, v1, :cond_15c

    .line 212
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mY:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 214
    :cond_15c
    const/16 v1, 0x31

    if-ne p1, v1, :cond_16d

    .line 215
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mU:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 217
    :cond_16d
    const/16 v1, 0x25

    if-ne p1, v1, :cond_17e

    .line 218
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mI:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 220
    :cond_17e
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_18f

    .line 221
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mO:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 223
    :cond_18f
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1a0

    .line 224
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mP:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 226
    :cond_1a0
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1b1

    .line 227
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mEnter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 229
    :cond_1b1
    const/16 v1, 0x39

    if-ne p1, v1, :cond_1c2

    .line 230
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mFn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x18

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 232
    :cond_1c2
    const/16 v1, 0x1d

    if-ne p1, v1, :cond_1d3

    .line 233
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mA:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 235
    :cond_1d3
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1e4

    .line 236
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mS:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1a

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 238
    :cond_1e4
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1f5

    .line 239
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mD:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1b

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 241
    :cond_1f5
    const/16 v1, 0x22

    if-ne p1, v1, :cond_206

    .line 242
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mF:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1c

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 244
    :cond_206
    const/16 v1, 0x23

    if-ne p1, v1, :cond_217

    .line 245
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mG:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1d

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 247
    :cond_217
    const/16 v1, 0x24

    if-ne p1, v1, :cond_228

    .line 248
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mH:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1e

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 250
    :cond_228
    const/16 v1, 0x26

    if-ne p1, v1, :cond_239

    .line 251
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mJ:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x1f

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 253
    :cond_239
    const/16 v1, 0x27

    if-ne p1, v1, :cond_24a

    .line 254
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mK:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x20

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 256
    :cond_24a
    const/16 v1, 0x28

    if-ne p1, v1, :cond_25b

    .line 257
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mL:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x21

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 259
    :cond_25b
    const/16 v1, 0x13

    if-ne p1, v1, :cond_26c

    .line 260
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mUp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x22

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 262
    :cond_26c
    const/16 v1, 0x17

    if-ne p1, v1, :cond_27d

    .line 263
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mOk:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x23

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 265
    :cond_27d
    const/16 v1, 0x36

    if-ne p1, v1, :cond_28e

    .line 266
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mZ:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x24

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 268
    :cond_28e
    const/16 v1, 0x34

    if-ne p1, v1, :cond_29f

    .line 269
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mX:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x25

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 271
    :cond_29f
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_2b0

    .line 272
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mC:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x26

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 274
    :cond_2b0
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2c1

    .line 275
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 277
    :cond_2c1
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_2d2

    .line 278
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mB:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x28

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 280
    :cond_2d2
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_2e3

    .line 281
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mSpace:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x29

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 283
    :cond_2e3
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_2f4

    .line 284
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mN:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 286
    :cond_2f4
    const/16 v1, 0x29

    if-ne p1, v1, :cond_305

    .line 287
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mM:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 289
    :cond_305
    const/16 v1, 0x15

    if-ne p1, v1, :cond_316

    .line 290
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 292
    :cond_316
    const/16 v1, 0x14

    if-ne p1, v1, :cond_327

    .line 293
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mDown:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 295
    :cond_327
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2f

    .line 296
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mRight:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->buttonDown:[Z

    const/16 v2, 0x2e

    aput-boolean v4, v1, v2

    goto/16 :goto_2f

    .line 308
    .restart local v0       #i:I
    :cond_338
    iget-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->pass:Z

    if-eqz v1, :cond_346

    .line 309
    const-string v1, "KEYCODE"

    const-string v2, "DOWN : Pass "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->onFinish()V

    .line 312
    :cond_346
    return v4
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public setVolume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 139
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Keypad2Test;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    return-void
.end method
