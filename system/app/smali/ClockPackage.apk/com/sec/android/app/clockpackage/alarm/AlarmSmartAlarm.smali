.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;
.super Landroid/app/Activity;
.source "AlarmSmartAlarm.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field mDurationAry:[I

.field private mOldVolume:I

.field private mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field mToneAry:[I

.field private mToneType:I

.field private mVolIntent:Landroid/content/Intent;

.field private mVolume:I

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDurationAry:[I

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneAry:[I

    return-void

    .line 58
    :array_14
    .array-data 0x4
        0x51t 0x0t 0xet 0x7ft
        0x52t 0x0t 0xet 0x7ft
        0x53t 0x0t 0xet 0x7ft
        0x54t 0x0t 0xet 0x7ft
        0x55t 0x0t 0xet 0x7ft
    .end array-data

    .line 72
    :array_22
    .array-data 0x4
        0x57t 0x0t 0xet 0x7ft
        0x58t 0x0t 0xet 0x7ft
        0x59t 0x0t 0xet 0x7ft
        0x5at 0x0t 0xet 0x7ft
        0x5bt 0x0t 0xet 0x7ft
        0x5ct 0x0t 0xet 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;[II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getCheckedButtonIndexFromArray([II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->DEBUG:Z

    return v0
.end method

.method private getCheckedButtonIndexFromArray([II)I
    .registers 8
    .parameter "ary"
    .parameter "id"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, i:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_10

    aget v4, v0, v2

    .line 94
    .local v4, tId:I
    if-ne p2, v4, :cond_b

    .line 104
    .end local v1           #i:I
    .end local v4           #tId:I
    :goto_a
    return v1

    .line 100
    .restart local v1       #i:I
    .restart local v4       #tId:I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 104
    .end local v4           #tId:I
    :cond_10
    const/4 v1, -0x1

    goto :goto_a
.end method

.method private setClickListener()V
    .registers 14

    .prologue
    .line 255
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V

    .line 307
    .local v0, soundCL:Landroid/view/View$OnClickListener;
    const v12, 0x7f0e0051

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, v1:Landroid/view/View;
    const v12, 0x7f0e0052

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, v2:Landroid/view/View;
    const v12, 0x7f0e0053

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 313
    .local v3, v3:Landroid/view/View;
    const v12, 0x7f0e0054

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 315
    .local v4, v4:Landroid/view/View;
    const v12, 0x7f0e0055

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 317
    .local v5, v5:Landroid/view/View;
    if-eqz v1, :cond_2d

    .line 319
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_2d
    if-eqz v2, :cond_32

    .line 323
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :cond_32
    if-eqz v3, :cond_37

    .line 327
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :cond_37
    if-eqz v4, :cond_3c

    .line 331
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_3c
    if-eqz v5, :cond_41

    .line 335
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_41
    const v12, 0x7f0e0057

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 339
    .local v6, vt1:Landroid/view/View;
    const v12, 0x7f0e0058

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 341
    .local v7, vt2:Landroid/view/View;
    const v12, 0x7f0e0059

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 343
    .local v8, vt3:Landroid/view/View;
    const v12, 0x7f0e005a

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 345
    .local v9, vt4:Landroid/view/View;
    const v12, 0x7f0e005b

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 347
    .local v10, vt5:Landroid/view/View;
    const v12, 0x7f0e005c

    invoke-virtual {p0, v12}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 349
    .local v11, vt6:Landroid/view/View;
    if-eqz v6, :cond_70

    .line 351
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :cond_70
    if-eqz v7, :cond_75

    .line 355
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_75
    if-eqz v8, :cond_7a

    .line 359
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_7a
    if-eqz v9, :cond_7f

    .line 363
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_7f
    if-eqz v10, :cond_84

    .line 367
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    :cond_84
    if-eqz v11, :cond_89

    .line 371
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :cond_89
    return-void
.end method

.method private volumeKeyEvent(I)Z
    .registers 8
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x7

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 500
    packed-switch p1, :pswitch_data_4a

    .line 542
    :goto_7
    return v2

    .line 506
    :pswitch_8
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneType:I

    if-ne v4, v3, :cond_e

    move v2, v3

    .line 509
    goto :goto_7

    .line 511
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 513
    .local v0, i:I
    const/16 v4, 0x18

    if-ne p1, v4, :cond_44

    .line 515
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_1d

    move v0, v1

    .line 523
    :cond_1d
    :goto_1d
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolume:I

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolume:I

    invoke-virtual {v1, v5, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_31

    .line 530
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 532
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolIntent:Landroid/content/Intent;

    const-string v2, "volume_level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 538
    goto :goto_7

    .line 519
    :cond_44
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_49

    move v0, v2

    :cond_49
    goto :goto_1d

    .line 500
    :pswitch_data_4a
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v7, 0x7f03000a

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 117
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "smart_duration"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 119
    .local v2, duration:I
    const-string v7, "smart_repeat"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 121
    .local v6, tone:I
    const-string v7, "volume_level"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolume:I

    .line 123
    const-string v7, "tone_type"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneType:I

    .line 125
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mOldVolume:I

    .line 129
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolume:I

    invoke-virtual {v7, v10, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 131
    new-instance v7, Landroid/content/Intent;

    const-string v8, "volume_change"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolIntent:Landroid/content/Intent;

    .line 138
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    .line 140
    .local v4, mAudioMode:I
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 142
    .local v5, mRingtoneVol:I
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->setClickListener()V

    .line 144
    const v7, 0x7f0e0050

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 146
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-eqz v7, :cond_76

    .line 148
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDurationAry:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 150
    :cond_76
    const v7, 0x7f0e0056

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 152
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-eqz v7, :cond_98

    .line 154
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneAry:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 156
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    new-instance v8, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;)V

    .line 193
    :cond_98
    const v7, 0x7f0e005d

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 197
    .local v1, btnOk:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v7, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v7, 0x7f0e005e

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 233
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v7, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 400
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 471
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 472
    const-string v0, "AlarmSmartAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..onKeyDown.. keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1c
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->volumeKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 478
    const/4 v0, 0x1

    .line 482
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 446
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v1, :cond_1d

    .line 447
    const-string v1, "AlarmSmartAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..onKeyUp.. keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1d
    packed-switch p1, :pswitch_data_2a

    .line 465
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_24
    return v0

    .line 455
    :pswitch_25
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneType:I

    if-ne v1, v0, :cond_20

    goto :goto_24

    .line 449
    :pswitch_data_2a
    .packed-switch 0x18
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_9

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 382
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 386
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 390
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 409
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 412
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 415
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 418
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 421
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 424
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 427
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 430
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 433
    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 436
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 439
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 442
    return-void
.end method
