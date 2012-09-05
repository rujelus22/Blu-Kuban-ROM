.class public Lcom/android/musicfx/ActivityMusic;
.super Landroid/app/Activity;
.source "ActivityMusic.java"

# interfaces
.implements Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final EQViewElementIds:[[I

.field private static final PRESETREVERBPRESETSTRINGS:[Ljava/lang/String;


# instance fields
.field private mAudioSession:I

.field private mBassBoostSupported:Z

.field private mCallingPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEQPreset:I

.field private mEQPresetNames:[Ljava/lang/String;

.field private mEQPresetPrevious:I

.field private mEQPresetUserBandLevelsPrev:[I

.field private mEQPresetUserPos:I

.field private mEqualizerMinBandLevel:I

.field private final mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

.field private mEqualizerSupported:Z

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mIsHeadsetOn:Z

.field private mNumberEqualizerBands:I

.field private mPRPreset:I

.field private mPRPresetPrevious:I

.field private mPresetReverbSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleSwitch:Landroid/widget/CompoundButton;

.field private mVirtualizerSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 113
    const/16 v0, 0x20

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_142

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14a

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_152

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_15a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_162

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_16a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_172

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_17a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_182

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_18a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_192

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_19a

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_1a2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_1aa

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_1b2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_1ba

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_1c2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1ca

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1d2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1da

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1e2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1ea

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1fa

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_202

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_20a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_212

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_21a

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_222

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_22a

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_232

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_23a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    .line 151
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    const-string v1, "SmallRoom"

    aput-object v1, v0, v5

    const-string v1, "MediumRoom"

    aput-object v1, v0, v3

    const-string v1, "LargeRoom"

    aput-object v1, v0, v6

    const-string v1, "MediumHall"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LargeHall"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Plate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/musicfx/ActivityMusic;->PRESETREVERBPRESETSTRINGS:[Ljava/lang/String;

    return-void

    .line 113
    :array_142
    .array-data 0x4
        0x5t 0x0t 0x7t 0x7ft
        0x4t 0x0t 0x7t 0x7ft
    .end array-data

    :array_14a
    .array-data 0x4
        0x7t 0x0t 0x7t 0x7ft
        0x6t 0x0t 0x7t 0x7ft
    .end array-data

    :array_152
    .array-data 0x4
        0x9t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x7t 0x7ft
    .end array-data

    :array_15a
    .array-data 0x4
        0xbt 0x0t 0x7t 0x7ft
        0xat 0x0t 0x7t 0x7ft
    .end array-data

    :array_162
    .array-data 0x4
        0xdt 0x0t 0x7t 0x7ft
        0xct 0x0t 0x7t 0x7ft
    .end array-data

    :array_16a
    .array-data 0x4
        0xft 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
    .end array-data

    :array_172
    .array-data 0x4
        0x11t 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
    .end array-data

    :array_17a
    .array-data 0x4
        0x13t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
    .end array-data

    :array_182
    .array-data 0x4
        0x15t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
    .end array-data

    :array_18a
    .array-data 0x4
        0x17t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
    .end array-data

    :array_192
    .array-data 0x4
        0x19t 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x7t 0x7ft
    .end array-data

    :array_19a
    .array-data 0x4
        0x1bt 0x0t 0x7t 0x7ft
        0x1at 0x0t 0x7t 0x7ft
    .end array-data

    :array_1a2
    .array-data 0x4
        0x1dt 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
    .end array-data

    :array_1aa
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
    .end array-data

    :array_1b2
    .array-data 0x4
        0x21t 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1ba
    .array-data 0x4
        0x23t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1c2
    .array-data 0x4
        0x25t 0x0t 0x7t 0x7ft
        0x24t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1ca
    .array-data 0x4
        0x27t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1d2
    .array-data 0x4
        0x29t 0x0t 0x7t 0x7ft
        0x28t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1da
    .array-data 0x4
        0x2bt 0x0t 0x7t 0x7ft
        0x2at 0x0t 0x7t 0x7ft
    .end array-data

    :array_1e2
    .array-data 0x4
        0x2dt 0x0t 0x7t 0x7ft
        0x2ct 0x0t 0x7t 0x7ft
    .end array-data

    :array_1ea
    .array-data 0x4
        0x2ft 0x0t 0x7t 0x7ft
        0x2et 0x0t 0x7t 0x7ft
    .end array-data

    :array_1f2
    .array-data 0x4
        0x31t 0x0t 0x7t 0x7ft
        0x30t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1fa
    .array-data 0x4
        0x33t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
    .end array-data

    :array_202
    .array-data 0x4
        0x35t 0x0t 0x7t 0x7ft
        0x34t 0x0t 0x7t 0x7ft
    .end array-data

    :array_20a
    .array-data 0x4
        0x37t 0x0t 0x7t 0x7ft
        0x36t 0x0t 0x7t 0x7ft
    .end array-data

    :array_212
    .array-data 0x4
        0x39t 0x0t 0x7t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
    .end array-data

    :array_21a
    .array-data 0x4
        0x3bt 0x0t 0x7t 0x7ft
        0x3at 0x0t 0x7t 0x7ft
    .end array-data

    :array_222
    .array-data 0x4
        0x3dt 0x0t 0x7t 0x7ft
        0x3ct 0x0t 0x7t 0x7ft
    .end array-data

    :array_22a
    .array-data 0x4
        0x3ft 0x0t 0x7t 0x7ft
        0x3et 0x0t 0x7t 0x7ft
    .end array-data

    :array_232
    .array-data 0x4
        0x41t 0x0t 0x7t 0x7ft
        0x40t 0x0t 0x7t 0x7ft
    .end array-data

    :array_23a
    .array-data 0x4
        0x43t 0x0t 0x7t 0x7ft
        0x42t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/musicfx/seekbar/SeekBar;

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatter:Ljava/util/Formatter;

    .line 162
    const-string v0, "empty"

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    .line 167
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    .line 170
    new-instance v0, Lcom/android/musicfx/ActivityMusic$1;

    invoke-direct {v0, p0}, Lcom/android/musicfx/ActivityMusic$1;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/musicfx/ActivityMusic;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/musicfx/ActivityMusic;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/musicfx/ActivityMusic;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/musicfx/ActivityMusic;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/musicfx/ActivityMusic;->equalizerSetPreset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/musicfx/ActivityMusic;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/musicfx/ActivityMusic;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->showHeadsetMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/musicfx/ActivityMusic;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/musicfx/ActivityMusic;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/musicfx/ActivityMusic;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/musicfx/ActivityMusic;->presetReverbSetPreset(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/musicfx/ActivityMusic;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/musicfx/ActivityMusic;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    return p1
.end method

.method private equalizerBandUpdate(II)V
    .registers 9
    .parameter "band"
    .parameter "level"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 734
    return-void
.end method

.method private equalizerBandsInit(Landroid/view/View;)V
    .registers 16
    .parameter "eqcontainer"

    .prologue
    .line 598
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v8

    iput v8, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    .line 600
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserBandLevelsPrev:[I

    .line 603
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v4

    .line 605
    .local v4, centerFreqs:[I
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 607
    .local v1, bandLevelRange:[I
    const/4 v8, 0x0

    aget v8, v1, v8

    iput v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    .line 608
    const/4 v8, 0x1

    aget v5, v1, v8

    .line 610
    .local v5, mEqualizerMaxBandLevel:I
    const/4 v0, 0x0

    .local v0, band:I
    :goto_3d
    iget v8, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v8, :cond_b0

    .line 612
    aget v8, v4, v0

    div-int/lit16 v2, v8, 0x3e8

    .line 613
    .local v2, centerFreq:I
    int-to-float v3, v2

    .line 614
    .local v3, centerFreqHz:F
    const-string v7, ""

    .line 615
    .local v7, unitPrefix:Ljava/lang/String;
    const/high16 v8, 0x447a

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_53

    .line 616
    const/high16 v8, 0x447a

    div-float/2addr v3, v8

    .line 617
    const-string v7, "k"

    .line 619
    :cond_53
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%.0f "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/musicfx/ActivityMusic;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Hz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v10, 0x1

    aget v8, v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/musicfx/seekbar/SeekBar;

    aput-object v8, v9, v0

    .line 623
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v8, v8, v0

    iget v9, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    sub-int v9, v5, v9

    invoke-virtual {v8, v9}, Lcom/android/musicfx/seekbar/SeekBar;->setMax(I)V

    .line 624
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v8, v8, v0

    invoke-virtual {v8, p0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 628
    .end local v2           #centerFreq:I
    .end local v3           #centerFreqHz:F
    .end local v7           #unitPrefix:Ljava/lang/String;
    :cond_b0
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    :goto_b2
    const/16 v8, 0x20

    if-ge v0, v8, :cond_d9

    .line 630
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 632
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 636
    :cond_d9
    const v8, 0x7f070001

    invoke-virtual {p0, v8}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 637
    .local v6, tv:Landroid/widget/TextView;
    const-string v8, "+15 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const v8, 0x7f070002

    invoke-virtual {p0, v8}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 639
    .restart local v6       #tv:Landroid/widget/TextView;
    const-string v8, "0 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 641
    .restart local v6       #tv:Landroid/widget/TextView;
    const-string v8, "-15 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 643
    return-void
.end method

.method private equalizerSetPreset(I)V
    .registers 6
    .parameter "preset"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 745
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 746
    return-void
.end method

.method private equalizerSpinnerInit(Landroid/widget/Spinner;)V
    .registers 5
    .parameter "spinner"

    .prologue
    .line 505
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 507
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 508
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 509
    new-instance v1, Lcom/android/musicfx/ActivityMusic$8;

    invoke-direct {v1, p0}, Lcom/android/musicfx/ActivityMusic$8;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 523
    iget v1, p0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 524
    return-void
.end method

.method private equalizerUpdateDisplay()V
    .registers 9

    .prologue
    .line 714
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v7, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v4, v5, v6, v7}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 716
    .local v1, bandLevels:[I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_d
    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v4, :cond_22

    .line 717
    aget v2, v1, v0

    .line 718
    .local v2, level:I
    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    sub-int v3, v2, v4

    .line 719
    .local v3, progress:I
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/android/musicfx/seekbar/SeekBar;->setProgress(I)V

    .line 716
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    goto :goto_d

    .line 721
    .end local v2           #level:I
    .end local v3           #progress:I
    :cond_22
    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 647
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 648
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private presetReverbSetPreset(I)V
    .registers 6
    .parameter "preset"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 757
    return-void
.end method

.method private reverbSpinnerInit(Landroid/widget/Spinner;)V
    .registers 5
    .parameter "spinner"

    .prologue
    .line 483
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    sget-object v2, Lcom/android/musicfx/ActivityMusic;->PRESETREVERBPRESETSTRINGS:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 485
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 486
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 487
    new-instance v1, Lcom/android/musicfx/ActivityMusic$7;

    invoke-direct {v1, p0}, Lcom/android/musicfx/ActivityMusic$7;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 501
    iget v1, p0, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 502
    return-void
.end method

.method private setEnabledAllChildren(Landroid/view/ViewGroup;Z)V
    .registers 8
    .parameter "viewGroup"
    .parameter "enabled"

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 536
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1f

    .line 537
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 538
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-nez v4, :cond_13

    instance-of v4, v3, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_19

    :cond_13
    move-object v2, v3

    .line 539
    check-cast v2, Landroid/view/ViewGroup;

    .line 540
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-direct {p0, v2, p2}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    .line 542
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_19
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 544
    .end local v3           #view:Landroid/view/View;
    :cond_1f
    return-void
.end method

.method private showHeadsetMsg()V
    .registers 7

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/musicfx/ActivityMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 764
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 766
    .local v1, duration:I
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/android/musicfx/ActivityMusic;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 767
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 768
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 769
    return-void
.end method

.method private updateUI()V
    .registers 8

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->getParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 552
    .local v0, isEnabled:Z
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 553
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    .line 554
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V

    .line 556
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    if-eqz v2, :cond_40

    .line 557
    const v2, 0x7f07004c

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/musicfx/seekbar/SeekBar;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v6, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v3, v4, v5, v6}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/musicfx/seekbar/SeekBar;->setProgress(I)V

    .line 561
    :cond_40
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    if-eqz v2, :cond_5c

    .line 562
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/musicfx/seekbar/SeekBar;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v6, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v3, v4, v5, v6}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/musicfx/seekbar/SeekBar;->setProgress(I)V

    .line 566
    :cond_5c
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    if-eqz v2, :cond_63

    .line 567
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 569
    :cond_63
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    if-eqz v2, :cond_7f

    .line 570
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v1

    .line 573
    .local v1, reverb:I
    const v2, 0x7f07004d

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 575
    .end local v1           #reverb:I
    :cond_7f
    return-void
.end method

.method private updateUIHeadset()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 584
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 585
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/seekbar/SeekBar;

    iget-boolean v3, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v3}, Lcom/android/musicfx/seekbar/SeekBar;->setEnabled(Z)V

    .line 586
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-nez v0, :cond_60

    move v0, v1

    :goto_32
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 587
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 588
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/seekbar/SeekBar;

    iget-boolean v3, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v3}, Lcom/android/musicfx/seekbar/SeekBar;->setEnabled(Z)V

    .line 589
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-nez v3, :cond_62

    :goto_5c
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 591
    :cond_5f
    return-void

    :cond_60
    move v0, v2

    .line 586
    goto :goto_32

    :cond_62
    move v1, v2

    .line 589
    goto :goto_5c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter "savedInstanceState"

    .prologue
    .line 214
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/musicfx/ActivityMusic;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 222
    .local v10, intent:Landroid/content/Intent;
    const-string v16, "android.media.extra.AUDIO_SESSION"

    const/16 v17, -0x4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    .line 224
    const-string v16, "MusicFXActivityMusic"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "audio session: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/musicfx/ActivityMusic;->getCallingPackage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_63

    .line 230
    const-string v16, "MusicFXActivityMusic"

    const-string v17, "Package name is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->setResult(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/musicfx/ActivityMusic;->finish()V

    .line 439
    :goto_62
    return-void

    .line 235
    :cond_63
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->setResult(I)V

    .line 237
    const-string v16, "MusicFXActivityMusic"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/musicfx/ControlPanelEffect;->initEffectsPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 242
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v7

    .line 245
    .local v7, effects:[Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v16, "MusicFXActivityMusic"

    const-string v17, "Available effects:"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object v5, v7

    .local v5, arr$:[Landroid/media/audiofx/AudioEffect$Descriptor;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_bd
    if-ge v9, v11, :cond_143

    aget-object v6, v5, v9

    .line 247
    .local v6, effect:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v16, "MusicFXActivityMusic"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_104

    .line 250
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    .line 246
    :cond_101
    :goto_101
    add-int/lit8 v9, v9, 0x1

    goto :goto_bd

    .line 251
    :cond_104
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_119

    .line 252
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    goto :goto_101

    .line 253
    :cond_119
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 254
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    goto :goto_101

    .line 255
    :cond_12e
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    invoke-virtual/range {v16 .. v17}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_101

    .line 256
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    goto :goto_101

    .line 260
    .end local v6           #effect:Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_143
    const v16, 0x7f030001

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->setContentView(I)V

    .line 261
    const v16, 0x7f070045

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 265
    .local v15, viewGroup:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v16 .. v19}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v12

    .line 267
    .local v12, numPresets:I
    add-int/lit8 v16, v12, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    .line 268
    const/4 v8, 0x0

    .local v8, i:S
    :goto_181
    if-ge v8, v12, :cond_1b1

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/musicfx/ControlPanelEffect;->getParameterString(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v8

    .line 268
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-short v8, v0

    goto :goto_181

    .line 272
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    const v17, 0x7f05000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v12

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    const v18, 0x7f05000c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 274
    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    move/from16 v16, v0

    if-nez v16, :cond_201

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    move/from16 v16, v0

    if-nez v16, :cond_201

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    move/from16 v16, v0

    if-nez v16, :cond_201

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3a7

    .line 282
    :cond_201
    new-instance v16, Landroid/widget/Switch;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/musicfx/ActivityMusic$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/musicfx/ActivityMusic$2;-><init>(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_263

    .line 303
    const v16, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/android/musicfx/ActivityMusic$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$3;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    const v16, 0x7f07004c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/musicfx/seekbar/SeekBar;

    .line 315
    .local v14, seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setMax(I)V

    .line 318
    new-instance v16, Lcom/android/musicfx/ActivityMusic$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$4;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 353
    .end local v14           #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    :cond_263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2a4

    .line 355
    const v16, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v17, Lcom/android/musicfx/ActivityMusic$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$5;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    const v16, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/musicfx/seekbar/SeekBar;

    .line 367
    .restart local v14       #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setMax(I)V

    .line 370
    new-instance v16, Lcom/android/musicfx/ActivityMusic$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$6;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 405
    .end local v14           #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    :cond_2a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_31a

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v16 .. v19}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2e9

    .line 409
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    .line 411
    :cond_2e9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    .line 412
    const v16, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->equalizerSpinnerInit(Landroid/widget/Spinner;)V

    .line 413
    const/high16 v16, 0x7f07

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->equalizerBandsInit(Landroid/view/View;)V

    .line 418
    :cond_31a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_360

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v18, v0

    sget-object v19, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v16 .. v19}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    .line 422
    const v16, 0x7f07004d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->reverbSpinnerInit(Landroid/widget/Spinner;)V

    .line 430
    :cond_360
    :goto_360
    invoke-virtual/range {p0 .. p0}, Lcom/android/musicfx/ActivityMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 431
    .local v4, ab:Landroid/app/ActionBar;
    invoke-virtual/range {p0 .. p0}, Lcom/android/musicfx/ActivityMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f040002

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 433
    .local v13, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/widget/CompoundButton;->setPadding(IIII)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v16, v0

    new-instance v17, Landroid/app/ActionBar$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x15

    invoke-direct/range {v17 .. v20}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 438
    const/16 v16, 0x18

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto/16 :goto_62

    .line 426
    .end local v4           #ab:Landroid/app/ActionBar;
    .end local v13           #padding:I
    :cond_3a7
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    const v16, 0x7f070044

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_360
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 479
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/musicfx/ActivityMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 480
    return-void
.end method

.method public onProgressChanged(Lcom/android/musicfx/seekbar/SeekBar;IZ)V
    .registers 9
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/android/musicfx/seekbar/SeekBar;->getId()I

    move-result v1

    .line 664
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_5
    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v3, :cond_1b

    .line 665
    sget-object v3, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v1, v3, :cond_1c

    .line 666
    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    add-int/2addr v3, p2

    int-to-short v2, v3

    .line 667
    .local v2, level:S
    if-eqz p3, :cond_1b

    .line 668
    invoke-direct {p0, v0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerBandUpdate(II)V

    .line 673
    .end local v2           #level:S
    :cond_1b
    return-void

    .line 664
    :cond_1c
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_5
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 449
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    if-eqz v2, :cond_62

    .line 452
    :cond_13
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/musicfx/ActivityMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 460
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_42
    const/4 v2, 0x1

    :goto_43
    iput-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    .line 461
    const-string v2, "MusicFXActivityMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: mIsHeadsetOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUI()V

    .line 466
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_62
    return-void

    .line 460
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :cond_63
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public onStartTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .registers 8
    .parameter "seekbar"

    .prologue
    .line 685
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 688
    .local v1, bandLevels:[I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_d
    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v2, :cond_1a

    .line 689
    aget v2, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerBandUpdate(II)V

    .line 688
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_d

    .line 691
    :cond_1a
    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    invoke-direct {p0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerSetPreset(I)V

    .line 692
    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Lcom/android/musicfx/ActivityMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 693
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .registers 2
    .parameter "seekbar"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 707
    return-void
.end method
