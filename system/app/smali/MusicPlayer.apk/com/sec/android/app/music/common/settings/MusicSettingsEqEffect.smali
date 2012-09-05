.class public Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;
.super Landroid/app/ListActivity;
.source "MusicSettingsEqEffect.java"

# interfaces
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field public static final CUSTOM_EQ_INDEX:I

.field public static final sEffectResourceId:[I

.field public static final sEffectValue:[I

.field private static final sEqControlResourceId:[I

.field public static final sEqResourceId:[I

.field public static final sEqValue:[I

.field public static final sFrequencyResourceId:[I


# instance fields
.field private mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private final mBeforeCustomEqArray:[I

.field private mCheckedItemId:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

.field private final mCustomEqArray:[I

.field private mCustomEqDialog:Landroid/app/AlertDialog;

.field private mCustomEqString:Ljava/lang/String;

.field private final mDbLinePositionY:[I

.field private final mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mIsMdpi:Z

.field private mIsXhdpi:Z

.field private final mKillReceiver:Landroid/content/BroadcastReceiver;

.field private mListView:Landroid/widget/ListView;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingListString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingListType:I

.field private mSettingToast:Landroid/widget/Toast;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x6

    .line 60
    const-class v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    .line 108
    new-array v0, v3, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    .line 113
    new-array v0, v2, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sFrequencyResourceId:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    .line 124
    new-array v0, v1, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    .line 129
    new-array v0, v2, [I

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqControlResourceId:[I

    .line 136
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CUSTOM_EQ_INDEX:I

    return-void

    .line 102
    nop

    :array_40
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data

    .line 108
    :array_56
    .array-data 0x4
        0x10t 0x0t 0x9t 0x7ft
        0x7t 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
        0x13t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x9t 0x7ft
        0x16t 0x0t 0x9t 0x7ft
        0x17t 0x0t 0x9t 0x7ft
    .end array-data

    .line 113
    :array_6c
    .array-data 0x4
        0x1bt 0x1t 0x9t 0x7ft
        0x1ct 0x1t 0x9t 0x7ft
        0x1dt 0x1t 0x9t 0x7ft
        0x1et 0x1t 0x9t 0x7ft
        0x1ft 0x1t 0x9t 0x7ft
        0x20t 0x1t 0x9t 0x7ft
        0x21t 0x1t 0x9t 0x7ft
        0x22t 0x1t 0x9t 0x7ft
    .end array-data

    .line 118
    :array_80
    .array-data 0x4
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t
    .end array-data

    .line 124
    :array_90
    .array-data 0x4
        0x7t 0x0t 0x9t 0x7ft
        0x18t 0x0t 0x9t 0x7ft
        0x1dt 0x0t 0x9t 0x7ft
        0x1bt 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
        0x1at 0x0t 0x9t 0x7ft
    .end array-data

    .line 129
    :array_a0
    .array-data 0x4
        0xbft 0x0t 0xct 0x7ft
        0xc0t 0x0t 0xct 0x7ft
        0xc1t 0x0t 0xct 0x7ft
        0xc2t 0x0t 0xct 0x7ft
        0xc3t 0x0t 0xct 0x7ft
        0xc4t 0x0t 0xct 0x7ft
        0xc5t 0x0t 0xct 0x7ft
        0xc6t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListString:Ljava/util/ArrayList;

    .line 78
    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 80
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsXhdpi:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsMdpi:Z

    .line 90
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    .line 92
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBeforeCustomEqArray:[I

    .line 94
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mDbLinePositionY:[I

    .line 96
    new-array v0, v2, [Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 150
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mConnection:Landroid/content/ServiceConnection;

    .line 832
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$7;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 848
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$8;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mKillReceiver:Landroid/content/BroadcastReceiver;

    .line 858
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$9;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 870
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$10;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/ICorePlayerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setEqBubblePostion(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;Lcom/sec/android/app/music/ICorePlayerService;)Lcom/sec/android/app/music/ICorePlayerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->showSoundEffectErrorToast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/framework/SecAudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->doOkCustomEqDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->doCancelCustomEqDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method private createSettingList()V
    .registers 4

    .prologue
    .line 258
    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    packed-switch v1, :pswitch_data_40

    .line 270
    :cond_5
    return-void

    .line 260
    :pswitch_6
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v2, "EQ setting view is created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListString:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 265
    .end local v0           #i:I
    :pswitch_23
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v2, "EFFECT setting view is created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2b
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListString:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 258
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method

.method private doCancelCustomEqDialog()V
    .registers 7

    .prologue
    .line 668
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_21

    .line 670
    :try_start_4
    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    sget v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CUSTOM_EQ_INDEX:I

    if-ne v1, v2, :cond_2e

    .line 671
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBeforeCustomEqArray:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBeforeCustomEqArray:[I

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-static {}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_4c

    .line 685
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2d

    .line 686
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 687
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 689
    :cond_2d
    return-void

    .line 675
    :cond_2e
    :try_start_2e
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    iget v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V

    .line 677
    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4b} :catch_4c

    goto :goto_21

    .line 680
    :catch_4c
    move-exception v0

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNegativeButton() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private doOkCustomEqDialog()V
    .registers 7

    .prologue
    .line 651
    const-string v0, ""

    .line 653
    .local v0, customEqString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_21

    .line 654
    const-string v2, "%s%d|"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 657
    :cond_21
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setCustomEqualizer(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 659
    sget v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CUSTOM_EQ_INDEX:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V

    .line 661
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3a

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 663
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 665
    :cond_3a
    return-void
.end method

.method private getEqFromGenre(J)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 897
    .line 898
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 899
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v1, "SettingsMenuOnClickListener : R2vsUtil.R2VS_MODE_AUTO , iAudioID < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 927
    :goto_10
    sput v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 928
    return-void

    .line 901
    :cond_13
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 905
    :try_start_19
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_a3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a3

    .line 909
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 910
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_3b} :catch_49
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_19 .. :try_end_3b} :catch_72

    move-result-object v7

    move-object v1, v7

    .line 912
    :goto_3d
    if-eqz v0, :cond_42

    .line 913
    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3f .. :try_end_42} :catch_9e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3f .. :try_end_42} :catch_9b

    .line 923
    :cond_42
    :goto_42
    if-eqz v1, :cond_a0

    .line 924
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getEqDefined(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    .line 914
    :catch_49
    move-exception v0

    move-object v1, v7

    .line 915
    :goto_4b
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException SettingsMenuOnClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_42

    .line 918
    :catch_72
    move-exception v0

    .line 919
    :goto_73
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException SettingsMenuOnClickListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    move-object v1, v7

    goto :goto_42

    .line 918
    :catch_9b
    move-exception v0

    move-object v7, v1

    goto :goto_73

    .line 914
    :catch_9e
    move-exception v0

    goto :goto_4b

    :cond_a0
    move v0, v6

    goto/16 :goto_10

    :cond_a3
    move-object v1, v7

    goto :goto_3d
.end method

.method private isEnableChangeEffect(I)Z
    .registers 9
    .parameter "position"

    .prologue
    const v6, 0x7f090108

    const/4 v5, 0x2

    .line 329
    const/4 v2, 0x1

    .line 330
    .local v2, isEnableChangeEffect:Z
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    aget v1, v3, p1

    .line 332
    .local v1, effectValue:I
    sget-object v3, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v3, v3, v5

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_3f

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    if-nez v3, :cond_34

    .line 334
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    .line 341
    :goto_1e
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 346
    sget-object v3, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v4, 0x40

    aput v4, v3, v5

    .line 348
    :try_start_2e
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_3a

    .line 360
    :cond_33
    :goto_33
    return v2

    .line 338
    :cond_34
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1e

    .line 349
    :catch_3a
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_33

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3f
    sget-boolean v3, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-nez v3, :cond_33

    const/high16 v3, 0x8

    if-eq v1, v3, :cond_50

    const v3, 0x8000

    if-eq v1, v3, :cond_50

    const/high16 v3, 0x2

    if-ne v1, v3, :cond_33

    .line 355
    :cond_50
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->showSoundEffectErrorToast()V

    .line 357
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 358
    const/4 v2, 0x0

    goto :goto_33
.end method

.method private isEnableChangeEq()Z
    .registers 7

    .prologue
    const v5, 0x7f090107

    const/4 v4, 0x2

    .line 298
    const/4 v1, 0x1

    .line 300
    .local v1, isEnableChangeEq:Z
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v4

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_2f

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    if-nez v2, :cond_30

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    .line 308
    :goto_1a
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 309
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 313
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/high16 v3, 0x40

    aput v3, v2, v4

    .line 315
    :try_start_2a
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_36

    .line 320
    :cond_2f
    :goto_2f
    return v1

    .line 305
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1a

    .line 316
    :catch_36
    move-exception v0

    .line 317
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method private isPortrait()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_10

    .line 782
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private registerBatteryReceiver()V
    .registers 3

    .prologue
    .line 818
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 819
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    return-void
.end method

.method private registerMediaReceiver()V
    .registers 3

    .prologue
    .line 803
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 804
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 805
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 809
    return-void
.end method

.method private registerStateReceiver()V
    .registers 3

    .prologue
    .line 825
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 826
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v1, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 830
    return-void
.end method

.method private saveSettingValue(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 422
    iput p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    .line 424
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    packed-switch v0, :pswitch_data_16

    .line 433
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 434
    return-void

    .line 426
    :pswitch_d
    invoke-static {p1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEqualizer(I)V

    goto :goto_7

    .line 429
    :pswitch_11
    invoke-static {p1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    goto :goto_7

    .line 424
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private setCustomEq()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 437
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 438
    sget-object v4, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v5, "mCustomEqDialog is showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_14
    :goto_14
    return-void

    .line 442
    :cond_15
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqString:Ljava/lang/String;

    .line 443
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqString:Ljava/lang/String;

    const-string v5, "|"

    invoke-direct {v2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v2, strToken:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    const/16 v4, 0x8

    if-ge v1, v4, :cond_49

    .line 446
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 447
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, token:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    .line 445
    .end local v3           #token:Ljava/lang/String;
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 450
    :cond_44
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    aput v7, v4, v1

    goto :goto_41

    .line 454
    :cond_49
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBeforeCustomEqArray:[I

    iget-object v6, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    array-length v6, v6

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :try_start_53
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v4, :cond_63

    .line 458
    sget-object v4, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x0

    const/16 v6, 0x800

    aput v6, v4, v5

    .line 459
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v4}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_63} :catch_79

    .line 465
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->createCustomEqDialog()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 467
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_14

    .line 470
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 471
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_14

    .line 461
    :catch_79
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsCustomEqOnClickListener() RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method private setEffect(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 403
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    aget v1, v2, p1

    .line 405
    .local v1, effectValue:I
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v2, :cond_2d

    .line 406
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRealEffect(index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " coreplayer is null, so can\'t change effect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_2c
    return-void

    .line 411
    :cond_2d
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 413
    :try_start_32
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_5f

    .line 417
    :goto_37
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V

    .line 418
    sget-object v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mCheckedValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effectValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 414
    :catch_5f
    move-exception v0

    .line 415
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method private setEq(I)V
    .registers 8
    .parameter "position"

    .prologue
    .line 364
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    aget v2, v3, p1

    .line 367
    .local v2, eqValue:I
    const/16 v3, 0x800

    if-eq v2, v3, :cond_2b

    iget v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    if-ne v3, p1, :cond_2b

    .line 368
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRealEq(index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " do not change eq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_2a
    :sswitch_2a
    return-void

    .line 372
    :cond_2b
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v3, :cond_4e

    .line 373
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRealEq(index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") coreplayer is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 377
    :cond_4e
    sparse-switch v2, :sswitch_data_94

    .line 389
    :goto_51
    sget-object v3, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 391
    :try_start_56
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_8e

    .line 395
    :goto_5b
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->saveSettingValue(I)V

    .line 396
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Equalizer setting has been changed as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    aget v5, v5, p1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 382
    :sswitch_7f
    :try_start_7f
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getEqFromGenre(J)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_88} :catch_89

    goto :goto_51

    .line 383
    :catch_89
    move-exception v1

    .line 384
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    .line 392
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_8e
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5b

    .line 377
    nop

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_7f
        0x800 -> :sswitch_2a
    .end sparse-switch
.end method

.method private setEqBubblePostion(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 9
    .parameter "eqNum"
    .parameter "controlBar"

    .prologue
    .line 732
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 733
    .local v1, eqBubbleX:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v2

    .line 735
    .local v2, eqBubbleY:I
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 737
    iget-boolean v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsXhdpi:Z

    if-nez v3, :cond_36

    iget-boolean v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsMdpi:Z

    if-nez v3, :cond_36

    .line 738
    add-int/lit8 v2, v2, 0x1e

    .line 746
    :cond_20
    :goto_20
    :try_start_20
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_27} :catch_3d

    .line 750
    :goto_27
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 751
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 752
    return-void

    .line 739
    :cond_36
    iget-boolean v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsMdpi:Z

    if-eqz v3, :cond_20

    .line 740
    add-int/lit8 v2, v2, 0x14

    goto :goto_20

    .line 747
    :catch_3d
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEqBubblePostion - IllegalArgumentException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private showSoundEffectErrorToast()V
    .registers 5

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, strId:I
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 788
    const v0, 0x7f0900f8

    .line 794
    :goto_c
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    if-nez v1, :cond_3b

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    .line 799
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 800
    return-void

    .line 789
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 790
    const v0, 0x7f0900f7

    goto :goto_c

    .line 792
    :cond_37
    const v0, 0x7f0900f9

    goto :goto_c

    .line 797
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1d
.end method


# virtual methods
.method protected createCustomEqDialog()Landroid/app/AlertDialog;
    .registers 14

    .prologue
    .line 475
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, customEqDialog:Landroid/app/AlertDialog$Builder;
    const-string v10, "window"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 479
    .local v2, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 480
    .local v9, resolutionWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 482
    .local v8, resolutionHeight:I
    const/16 v10, 0x320

    if-ne v9, v10, :cond_23

    const/16 v10, 0x500

    if-eq v8, v10, :cond_2b

    :cond_23
    const/16 v10, 0x500

    if-ne v9, v10, :cond_ca

    const/16 v10, 0x320

    if-ne v8, v10, :cond_ca

    .line 484
    :cond_2b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsXhdpi:Z

    .line 491
    :cond_2e
    :goto_2e
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 492
    .local v7, inflator:Landroid/view/LayoutInflater;
    const v10, 0x7f030027

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 495
    .local v1, customEqDialogLayout:Landroid/view/View;
    const/16 v10, 0x8

    new-array v5, v10, [Landroid/view/View;

    .line 496
    .local v5, eqControlView:[Landroid/view/View;
    const/16 v10, 0x8

    new-array v3, v10, [Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 497
    .local v3, eqControlBar:[Lcom/sec/android/touchwiz/widget/TwSeekBar;
    const/4 v4, 0x0

    .line 499
    .local v4, eqControlText:Landroid/widget/TextView;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4a
    const/16 v10, 0x8

    if-ge v6, v10, :cond_df

    .line 500
    sget-object v10, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqControlResourceId:[I

    aget v10, v10, v6

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    aput-object v10, v5, v6

    .line 502
    aget-object v10, v5, v6

    const v11, 0x7f0c0002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #eqControlText:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 503
    .restart local v4       #eqControlText:Landroid/widget/TextView;
    sget-object v10, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sFrequencyResourceId:[I

    aget v10, v10, v6

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 505
    iget-object v11, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v10, v5, v6

    const/high16 v12, 0x7f0c

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aput-object v10, v11, v6

    .line 507
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v10, v10, v6

    const v11, 0x7f020106

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 508
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v10, v10, v6

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 509
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    aget-object v10, v10, v6

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020106

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 512
    aget-object v10, v5, v6

    const v11, 0x7f0c0001

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    aput-object v10, v3, v6

    .line 526
    aget-object v10, v3, v6

    iget-object v11, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I

    aget v11, v11, v6

    add-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 527
    aget-object v10, v3, v6

    new-instance v11, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;

    invoke-direct {v11, p0, v6}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;I)V

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 485
    .end local v1           #customEqDialogLayout:Landroid/view/View;
    .end local v3           #eqControlBar:[Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .end local v4           #eqControlText:Landroid/widget/TextView;
    .end local v5           #eqControlView:[Landroid/view/View;
    .end local v6           #i:I
    .end local v7           #inflator:Landroid/view/LayoutInflater;
    :cond_ca
    const/16 v10, 0x140

    if-ne v9, v10, :cond_d2

    const/16 v10, 0x1e0

    if-eq v8, v10, :cond_da

    :cond_d2
    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_2e

    const/16 v10, 0x140

    if-ne v8, v10, :cond_2e

    .line 487
    :cond_da
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mIsMdpi:Z

    goto/16 :goto_2e

    .line 537
    .restart local v1       #customEqDialogLayout:Landroid/view/View;
    .restart local v3       #eqControlBar:[Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .restart local v4       #eqControlText:Landroid/widget/TextView;
    .restart local v5       #eqControlView:[Landroid/view/View;
    .restart local v6       #i:I
    .restart local v7       #inflator:Landroid/view/LayoutInflater;
    :cond_df
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 539
    const v10, 0x7f0900ed

    new-instance v11, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$2;

    invoke-direct {v11, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$2;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 546
    const v10, 0x7f0900ee

    new-instance v11, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$3;

    invoke-direct {v11, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$3;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    new-instance v10, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$4;

    invoke-direct {v10, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$4;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v10, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$5;

    invoke-direct {v10, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$5;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 938
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 756
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->createCustomEqDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_22

    .line 776
    :goto_21
    return-void

    .line 766
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 770
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$6;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 166
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 169
    iput-object p0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "setting_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    .line 175
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerMediaReceiver()V

    .line 178
    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    if-ne v1, v5, :cond_69

    .line 179
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerStateReceiver()V

    .line 180
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setTitle(I)V

    .line 185
    :goto_35
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->createSettingList()V

    .line 186
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    const v3, 0x7f03002b

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListString:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 194
    new-instance v1, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 195
    return-void

    .line 182
    :cond_69
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setTitle(I)V

    goto :goto_35
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 241
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 242
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 246
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    if-ne v0, v2, :cond_1e

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_36

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_31

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 253
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 255
    :cond_36
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 274
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 276
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    packed-switch v0, :pswitch_data_26

    .line 290
    :cond_8
    :goto_8
    return-void

    .line 278
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->isEnableChangeEq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 279
    sget v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CUSTOM_EQ_INDEX:I

    if-eq p3, v0, :cond_17

    .line 280
    invoke-direct {p0, p3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setEq(I)V

    goto :goto_8

    .line 282
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setCustomEq()V

    goto :goto_8

    .line 286
    :pswitch_1b
    invoke-direct {p0, p3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->isEnableChangeEffect(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 287
    invoke-direct {p0, p3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setEffect(I)V

    goto :goto_8

    .line 276
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 221
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_18

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 228
    :cond_18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 229
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 213
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->registerBatteryReceiver()V

    .line 216
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 200
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mSettingListType:I

    if-nez v0, :cond_27

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    .line 206
    :goto_16
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 208
    return-void

    .line 205
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCheckedItemId:I

    goto :goto_16
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->doCancelCustomEqDialog()V

    .line 237
    :cond_12
    return-void
.end method
