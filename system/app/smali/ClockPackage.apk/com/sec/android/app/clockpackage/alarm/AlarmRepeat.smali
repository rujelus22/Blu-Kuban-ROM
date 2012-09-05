.class public Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;
.super Landroid/app/Activity;
.source "AlarmRepeat.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field private mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

.field private mRepeatDay:I

.field private mToast:Landroid/widget/Toast;

.field private mToneType:I

.field private mVolIntent:Landroid/content/Intent;

.field private mVolume:I

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

.field private mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->toggleDayContainer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    return v0
.end method

.method private setClickListener()V
    .registers 7

    .prologue
    .line 348
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V

    .line 355
    .local v0, soundCL:Landroid/view/View$OnClickListener;
    const v5, 0x7f0e004c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    .local v1, v1:Landroid/view/View;
    const v5, 0x7f0e004a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 357
    .local v2, v2:Landroid/view/View;
    const v5, 0x7f0e004b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 358
    .local v3, v3:Landroid/view/View;
    const v5, 0x7f0e0048

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 359
    .local v4, v4:Landroid/view/View;
    if-eqz v1, :cond_26

    .line 360
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_26
    if-eqz v2, :cond_2b

    .line 362
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :cond_2b
    if-eqz v3, :cond_30

    .line 364
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_30
    if-eqz v4, :cond_35

    .line 366
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :cond_35
    return-void
.end method

.method private toggleDayContainer()V
    .registers 6

    .prologue
    const v4, 0x7f0e004c

    const v3, 0x7f0e0048

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v3, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v4, :cond_49

    .line 376
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v4, :cond_36

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 415
    :cond_35
    :goto_35
    return-void

    .line 381
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v3, :cond_35

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    goto :goto_35

    .line 390
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e004a

    if-ne v0, v1, :cond_5f

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    goto :goto_35

    .line 398
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setVisibility(I)V

    goto :goto_35
.end method

.method private volumeKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 451
    packed-switch p1, :pswitch_data_3e

    .line 471
    :goto_6
    return v2

    .line 454
    :pswitch_7
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToneType:I

    if-ne v4, v3, :cond_d

    move v2, v3

    .line 456
    goto :goto_6

    .line 457
    :cond_d
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolume:I

    .line 458
    .local v0, i:I
    const/16 v4, 0x18

    if-ne p1, v4, :cond_38

    .line 459
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_18

    move v0, v1

    .line 463
    :cond_18
    :goto_18
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolume:I

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_25

    .line 465
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 466
    :cond_25
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolIntent:Landroid/content/Intent;

    const-string v2, "volume_level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 469
    goto :goto_6

    .line 461
    :cond_38
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3d

    move v0, v2

    :cond_3d
    goto :goto_18

    .line 451
    :pswitch_data_3e
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "savedInstanceState"

    .prologue
    .line 44
    sget-boolean v14, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 45
    const-string v14, "AlarmRepeat"

    const-string v15, "onCreate"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v14, 0x7f030009

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->setContentView(I)V

    .line 50
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;

    .line 52
    const v4, 0x7f0e0048

    .line 53
    .local v4, IdRepeatWeekly:I
    const v1, 0x7f0e004a

    .line 54
    .local v1, IdRepeatEvery:I
    const v3, 0x7f0e004b

    .line 55
    .local v3, IdRepeatWeekday:I
    const v2, 0x7f0e004c

    .line 57
    .local v2, IdRepeatOnce:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 58
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "repeat_type"

    const/4 v15, 0x4

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 72
    .local v12, repeatType:I
    const-string v14, "repeat_count"

    const v15, 0x111110

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mRepeatDay:I

    .line 74
    const-string v14, "volume_level"

    const/4 v15, 0x1

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolume:I

    .line 75
    const-string v14, "tone_type"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToneType:I

    .line 76
    new-instance v14, Landroid/content/Intent;

    const-string v15, "volume_change"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolIntent:Landroid/content/Intent;

    .line 78
    sget-boolean v14, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    if-eqz v14, :cond_a9

    .line 79
    const-string v14, "AlarmRepeat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "repeatType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v14, "AlarmRepeat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRepeatDay : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mRepeatDay:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_a9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->setClickListener()V

    .line 85
    const v14, 0x7f0e004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    .line 86
    const v14, 0x7f0e0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    .line 89
    const v14, 0x7f0e0047

    :try_start_cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    :try_end_d9
    .catch Ljava/lang/NullPointerException; {:try_start_cd .. :try_end_d9} :catch_132

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-eqz v14, :cond_f0

    .line 96
    packed-switch v12, :pswitch_data_1ae

    .line 113
    :goto_e2
    :pswitch_e2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    new-instance v15, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;)V

    .line 120
    :cond_f0
    const v14, 0x7f0e004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 121
    .local v13, save:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v13, :cond_107

    .line 123
    new-instance v14, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_107
    const v14, 0x7f0e004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 208
    .local v6, cancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v6, :cond_11e

    .line 209
    new-instance v14, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V

    invoke-virtual {v6, v14}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_11e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 218
    .local v5, c:Ljava/util/Calendar;
    const/4 v14, 0x7

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 219
    .local v10, offset:I
    const/4 v11, 0x1

    .line 220
    .local v11, operator:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_129
    rsub-int/lit8 v14, v10, 0x7

    if-ge v8, v14, :cond_163

    .line 221
    shl-int/lit8 v11, v11, 0x4

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto :goto_129

    .line 90
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #cancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .end local v8           #i:I
    .end local v10           #offset:I
    .end local v11           #operator:I
    .end local v13           #save:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    :catch_132
    move-exception v7

    .line 91
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 300
    .end local v7           #e:Ljava/lang/NullPointerException;
    :goto_136
    return-void

    .line 99
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    const v15, 0x7f0e0048

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto :goto_e2

    .line 102
    :pswitch_142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    const v15, 0x7f0e004a

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto :goto_e2

    .line 105
    :pswitch_14d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    const v15, 0x7f0e004b

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto :goto_e2

    .line 108
    :pswitch_158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    const v15, 0x7f0e004c

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    goto :goto_e2

    .line 236
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #cancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .restart local v8       #i:I
    .restart local v10       #offset:I
    .restart local v11       #operator:I
    .restart local v13       #save:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    :cond_163
    packed-switch v12, :pswitch_data_1bc

    .line 279
    :goto_166
    :pswitch_166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    new-instance v15, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;)V

    invoke-virtual {v14, v15}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setOnChangedListener(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;)V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->toggleDayContainer()V

    goto :goto_136

    .line 239
    :pswitch_178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v14, v11}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mRepeatDay:I

    invoke-virtual {v14, v15}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    goto :goto_166

    .line 244
    :pswitch_18b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v14, v11}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v14, v11}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    goto :goto_166

    .line 248
    :pswitch_19a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mRepeatDay:I

    invoke-virtual {v14, v15}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v14, v11}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    goto :goto_166

    .line 96
    nop

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_158
        :pswitch_e2
        :pswitch_142
        :pswitch_14d
        :pswitch_137
    .end packed-switch

    .line 236
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_166
        :pswitch_18b
        :pswitch_18b
        :pswitch_178
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 436
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 437
    const-string v0, "AlarmRepeat"

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

    .line 439
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->volumeKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 440
    const/4 v0, 0x1

    .line 442
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

    .line 418
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v1, :cond_1d

    .line 419
    const-string v1, "AlarmRepeat"

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

    .line 420
    :cond_1d
    packed-switch p1, :pswitch_data_2a

    .line 432
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_24
    return v0

    .line 423
    :pswitch_25
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToneType:I

    if-ne v1, v0, :cond_20

    goto :goto_24

    .line 420
    :pswitch_data_2a
    .packed-switch 0x18
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 305
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 306
    const-string v0, "AlarmRepeat"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    const-string v1, "once_repeat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    const-string v1, "week_repeat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->setCheckDay(I)V

    .line 312
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 330
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 332
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 334
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 336
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 316
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 317
    const-string v0, "AlarmRepeat"

    const-string v1, "tt onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_b
    const-string v0, "once_repeat"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mOnceDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v0, "week_repeat"

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmRepeat;->mWeekDayContainer:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    return-void
.end method
