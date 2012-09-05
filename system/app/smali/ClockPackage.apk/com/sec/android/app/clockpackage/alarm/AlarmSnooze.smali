.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;
.super Landroid/app/Activity;
.source "AlarmSnooze.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field mDurationAry:[I

.field private mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field mRepeatAry:[I

.field private mToneType:I

.field private mVolIntent:Landroid/content/Intent;

.field private mVolume:I

.field private mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDurationAry:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeatAry:[I

    return-void

    .line 45
    nop

    :array_14
    .array-data 0x4
        0x5ft 0x0t 0xet 0x7ft
        0x60t 0x0t 0xet 0x7ft
        0x61t 0x0t 0xet 0x7ft
        0x62t 0x0t 0xet 0x7ft
        0x63t 0x0t 0xet 0x7ft
    .end array-data

    .line 48
    :array_22
    .array-data 0x4
        0x4ct 0x0t 0xet 0x7ft
        0x4at 0x0t 0xet 0x7ft
        0x4bt 0x0t 0xet 0x7ft
        0x48t 0x0t 0xet 0x7ft
        0x64t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;[II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->getCheckedButtonIndexFromArray([II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->DEBUG:Z

    return v0
.end method

.method private getCheckedButtonIndexFromArray([II)I
    .registers 8
    .parameter "ary"
    .parameter "id"

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
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

    .line 57
    .local v4, tId:I
    if-ne p2, v4, :cond_b

    .line 67
    .end local v1           #i:I
    .end local v4           #tId:I
    :goto_a
    return v1

    .line 63
    .restart local v1       #i:I
    .restart local v4       #tId:I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 67
    .end local v4           #tId:I
    :cond_10
    const/4 v1, -0x1

    goto :goto_a
.end method

.method private setClickListener()V
    .registers 13

    .prologue
    .line 214
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)V

    .line 222
    .local v0, soundCL:Landroid/view/View$OnClickListener;
    const v11, 0x7f0e005f

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 224
    .local v1, v1:Landroid/view/View;
    const v11, 0x7f0e0060

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, v2:Landroid/view/View;
    const v11, 0x7f0e0061

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 228
    .local v3, v3:Landroid/view/View;
    const v11, 0x7f0e0062

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, v4:Landroid/view/View;
    const v11, 0x7f0e0063

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 232
    .local v5, v5:Landroid/view/View;
    if-eqz v1, :cond_2d

    .line 234
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_2d
    if-eqz v2, :cond_32

    .line 238
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_32
    if-eqz v3, :cond_37

    .line 242
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_37
    if-eqz v4, :cond_3c

    .line 246
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_3c
    if-eqz v5, :cond_41

    .line 250
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_41
    const v11, 0x7f0e004c

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 254
    .local v6, vt1:Landroid/view/View;
    const v11, 0x7f0e004a

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 256
    .local v7, vt2:Landroid/view/View;
    const v11, 0x7f0e004b

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 258
    .local v8, vt3:Landroid/view/View;
    const v11, 0x7f0e0048

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 260
    .local v9, vt4:Landroid/view/View;
    const v11, 0x7f0e0064

    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 262
    .local v10, vt5:Landroid/view/View;
    if-eqz v6, :cond_69

    .line 264
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_69
    if-eqz v7, :cond_6e

    .line 268
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_6e
    if-eqz v8, :cond_73

    .line 272
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_73
    if-eqz v9, :cond_78

    .line 276
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_78
    if-eqz v10, :cond_7d

    .line 280
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_7d
    return-void
.end method

.method private volumeKeyEvent(I)Z
    .registers 7
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 340
    packed-switch p1, :pswitch_data_3e

    .line 378
    :goto_6
    return v2

    .line 346
    :pswitch_7
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mToneType:I

    if-ne v4, v3, :cond_d

    move v2, v3

    .line 348
    goto :goto_6

    .line 350
    :cond_d
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolume:I

    .line 352
    .local v0, i:I
    const/16 v4, 0x18

    if-ne p1, v4, :cond_38

    .line 354
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_18

    move v0, v1

    .line 362
    :cond_18
    :goto_18
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolume:I

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-nez v1, :cond_25

    .line 366
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    .line 368
    :cond_25
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->showAlarmVolumeToast(Landroid/content/Context;I)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolIntent:Landroid/content/Intent;

    const-string v2, "volume_level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 374
    goto :goto_6

    .line 358
    :cond_38
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3d

    move v0, v2

    :cond_3d
    goto :goto_18

    .line 340
    :pswitch_data_3e
    .packed-switch 0x18
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f03000d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 85
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "snooze_duration"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, duration:I
    const-string v5, "snooze_repeat"

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, repeat:I
    const-string v5, "volume_level"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolume:I

    .line 94
    const-string v5, "tone_type"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mToneType:I

    .line 96
    new-instance v5, Landroid/content/Intent;

    const-string v6, "volume_change"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolIntent:Landroid/content/Intent;

    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->setClickListener()V

    .line 100
    const v5, 0x7f0e0050

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 102
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-eqz v5, :cond_51

    .line 104
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mDurationAry:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 106
    :cond_51
    const v5, 0x7f0e0047

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 108
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-eqz v5, :cond_69

    .line 110
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeat:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mRepeatAry:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 112
    :cond_69
    const v5, 0x7f0e0065

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 116
    .local v1, btnSave:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v5, 0x7f0e0066

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 148
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 312
    const-string v0, "AlarmSnooze"

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

    .line 316
    :cond_1c
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->volumeKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 318
    const/4 v0, 0x1

    .line 322
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

    .line 286
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v1, :cond_1d

    .line 287
    const-string v1, "AlarmSnooze"

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

    .line 289
    :cond_1d
    packed-switch p1, :pswitch_data_2a

    .line 305
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_24
    return v0

    .line 295
    :pswitch_25
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mToneType:I

    if-ne v1, v0, :cond_20

    goto :goto_24

    .line 289
    :pswitch_data_2a
    .packed-switch 0x18
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->hideAlarmVolumeToast()V

    .line 208
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 172
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 175
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 178
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 181
    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 184
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 187
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 190
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 193
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 196
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setText(I)V

    .line 199
    return-void
.end method
