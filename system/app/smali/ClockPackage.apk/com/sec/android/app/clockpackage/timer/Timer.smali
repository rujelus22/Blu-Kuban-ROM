.class public Lcom/sec/android/app/clockpackage/timer/Timer;
.super Landroid/app/Activity;
.source "Timer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static currentInputPosition:I

.field private static inputMillis:J

.field static isFirst:Z

.field static isViewChanged:Z

.field static mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

.field static pause:Z

.field static pressedTimeUnit:I

.field private static remainMillis:J

.field static selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

.field static state:I

.field static timeNumber:[Landroid/graphics/drawable/Drawable;

.field private static timer:Landroid/os/CountDownTimer;


# instance fields
.field private final COUNT_DOWN_INTERVAL:J

.field private final DEFAULT_TIME:J

.field private final RESETED:I

.field private final STARTED:I

.field private final STOPPED:I

.field private alarmManager:Landroid/app/AlarmManager;

.field private bFocusChanged:Z

.field private hour:I

.field private mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

.field private mKeypad:[Landroid/widget/Button;

.field private mKeypadex:[Landroid/widget/ImageButton;

.field private mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

.field private mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

.field private minute:I

.field private second:I

.field private timerIntent:Landroid/content/Intent;

.field private timerSender:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->isFirst:Z

    .line 109
    sput-boolean v1, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    .line 110
    sput v1, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->COUNT_DOWN_INTERVAL:J

    .line 71
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->DEFAULT_TIME:J

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->STARTED:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->STOPPED:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->RESETED:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->bFocusChanged:Z

    return-void
.end method

.method static synthetic access$002(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    sput-wide p0, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/timer/Timer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/timer/Timer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->preLoadImage()V

    return-void
.end method

.method static synthetic access$300()J
    .registers 2

    .prologue
    .line 60
    sget-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    return-wide v0
.end method

.method private chkInputData()V
    .registers 7

    .prologue
    .line 753
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->convertMillis(III)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 755
    return-void

    .line 753
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private convertMillis(III)J
    .registers 6
    .parameter "h"
    .parameter "m"
    .parameter "s"

    .prologue
    .line 748
    const v0, 0x36ee80

    mul-int/2addr v0, p1

    const v1, 0xea60

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p3, 0x3e8

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private getInputTime()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x3a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initAlarm()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 539
    :goto_5
    return-void

    .line 535
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/timer/TimerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerIntent:Landroid/content/Intent;

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerIntent:Landroid/content/Intent;

    const-string v1, ".timer.playsound"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerIntent:Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerSender:Landroid/app/PendingIntent;

    .line 538
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->alarmManager:Landroid/app/AlarmManager;

    goto :goto_5
.end method

.method private static initInputTime(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 574
    const-string v2, "TIMER"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 577
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, ".timer.input.time"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 578
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, ".timer.input.time"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1d
    return-void
.end method

.method private initKeypad()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    const/16 v2, 0xa

    new-array v2, v2, [Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const v2, 0x7f0e011a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v5

    .line 240
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const v2, 0x7f0e0110

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v6

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x2

    const v2, 0x7f0e0111

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x3

    const v2, 0x7f0e0112

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 243
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x4

    const v2, 0x7f0e0113

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 244
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x5

    const v2, 0x7f0e0114

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x6

    const v2, 0x7f0e0115

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 246
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/4 v4, 0x7

    const v2, 0x7f0e0116

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 247
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/16 v4, 0x8

    const v2, 0x7f0e0117

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 248
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    const/16 v4, 0x9

    const v2, 0x7f0e0118

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v4

    .line 250
    new-array v2, v6, [Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypadex:[Landroid/widget/ImageButton;

    .line 251
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypadex:[Landroid/widget/ImageButton;

    const v2, 0x7f0e011b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v3, v5

    .line 253
    const v2, 0x7f0e011e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, ResetBgButton:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b0
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v1, v2, :cond_bf

    .line 256
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypad:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 259
    :cond_bf
    const/4 v1, 0x0

    :goto_c0
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypadex:[Landroid/widget/ImageButton;

    array-length v2, v2

    if-ge v1, v2, :cond_cf

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mKeypadex:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 262
    :cond_cf
    return-void
.end method

.method private initTimeView()V
    .registers 7

    .prologue
    const v5, 0xea60

    .line 352
    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    .line 353
    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .local v0, tmp:I
    div-int v1, v0, v5

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    .line 354
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    mul-int/2addr v1, v5

    sub-int v1, v0, v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    .line 356
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 357
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 358
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 359
    return-void
.end method

.method private initTimerView()V
    .registers 2

    .prologue
    .line 217
    const v0, 0x7f0e0106

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    .line 218
    const v0, 0x7f0e0107

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    .line 219
    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 229
    const v0, 0x7f0e010a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 230
    const v0, 0x7f0e010b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 231
    const v0, 0x7f0e010c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 232
    const v0, 0x7f0e010d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 233
    const v0, 0x7f0e010e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    .line 234
    return-void
.end method

.method private initViews()V
    .registers 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initTimerView()V

    .line 208
    return-void
.end method

.method private input(I)Z
    .registers 9
    .parameter "keyCode"

    .prologue
    const/16 v5, 0x43

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->shouldSkipEvent()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 506
    :goto_a
    return v2

    .line 428
    :cond_b
    sget v1, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    .line 429
    .local v1, nextResId:I
    add-int/lit8 v0, p1, -0x7

    .line 431
    .local v0, input:I
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    packed-switch v4, :pswitch_data_aa

    .line 502
    :goto_14
    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    .line 503
    sput-boolean v2, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    .line 504
    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    iget v5, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/app/clockpackage/timer/Timer;->convertMillis(III)J

    move-result-wide v4

    sput-wide v4, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v4, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    move v2, v3

    .line 506
    goto :goto_a

    .line 434
    :pswitch_29
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_31

    .line 435
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    .line 437
    :cond_31
    if-ne p1, v5, :cond_3f

    .line 438
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    .line 448
    :cond_35
    :goto_35
    sget-object v4, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v6, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    goto :goto_14

    .line 440
    :cond_3f
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    invoke-direct {p0, v4, v0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->inputTime(IIZ)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    .line 441
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    .line 443
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_35

    .line 444
    const v1, 0x7f0e0107

    .line 445
    sput v3, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    goto :goto_35

    .line 454
    :pswitch_59
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_61

    .line 455
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    .line 457
    :cond_61
    if-ne p1, v5, :cond_6f

    .line 458
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    .line 469
    :cond_65
    :goto_65
    sget-object v4, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v6, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    goto :goto_14

    .line 460
    :cond_6f
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    invoke-direct {p0, v4, v0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->inputTime(IIZ)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    .line 461
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    .line 463
    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_65

    .line 464
    const v1, 0x7f0e0108

    .line 465
    sput v3, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    goto :goto_65

    .line 475
    :pswitch_89
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->bFocusChanged:Z

    if-ne v4, v2, :cond_91

    .line 476
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    .line 477
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->bFocusChanged:Z

    .line 487
    :cond_91
    if-ne p1, v5, :cond_a0

    .line 488
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    .line 497
    :goto_95
    sget-object v4, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    iget v6, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    goto/16 :goto_14

    .line 490
    :cond_a0
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v4, v0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->inputTime(IIZ)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    goto :goto_95

    .line 431
    nop

    :pswitch_data_aa
    .packed-switch 0x7f0e0106
        :pswitch_29
        :pswitch_59
        :pswitch_89
    .end packed-switch
.end method

.method private inputTime(IIZ)I
    .registers 6
    .parameter "time"
    .parameter "input"
    .parameter "isHour"

    .prologue
    const/16 v0, 0x3b

    .line 510
    if-nez p3, :cond_d

    if-ne p1, v0, :cond_d

    move p1, p2

    .line 512
    :goto_7
    if-nez p3, :cond_c

    if-le p1, v0, :cond_c

    move p1, v0

    .end local p1
    :cond_c
    return p1

    .line 510
    .restart local p1
    :cond_d
    rem-int/lit8 v1, p1, 0xa

    mul-int/lit8 v1, v1, 0xa

    add-int p1, v1, p2

    goto :goto_7
.end method

.method private preLoadImage()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 934
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 975
    :cond_9
    :goto_9
    return-void

    .line 938
    :cond_a
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    .line 939
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 940
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 941
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 942
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 943
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 944
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 945
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 946
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 947
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 948
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020250

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 950
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 954
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    .line 955
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 957
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 959
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 961
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 963
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 965
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 969
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 971
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 973
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_9
.end method

.method private pressNumberViews([Landroid/view/View;)V
    .registers 7
    .parameter "views"

    .prologue
    .line 517
    move-object v0, p1

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 518
    .local v3, view:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 520
    .end local v3           #view:Landroid/view/View;
    :cond_e
    return-void
.end method

.method private releaseNumberViews([Landroid/view/View;)V
    .registers 7
    .parameter "views"

    .prologue
    .line 524
    move-object v0, p1

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 525
    .local v3, view:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 527
    .end local v3           #view:Landroid/view/View;
    :cond_e
    return-void
.end method

.method private resetTime(Z)V
    .registers 3
    .parameter "resetButtonClicked"

    .prologue
    .line 737
    if-nez p1, :cond_c

    sget-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    if-eqz v0, :cond_c

    .line 743
    :goto_6
    sget v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    .line 744
    return-void

    .line 739
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initTimeView()V

    .line 740
    const v0, 0x7f0e0107

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    goto :goto_6
.end method

.method private setAlarm()V
    .registers 7

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 545
    return-void
.end method

.method private setDefaultViewState(Z)V
    .registers 4
    .parameter "isShow"

    .prologue
    .line 769
    const v0, 0x7f0e010f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 771
    return-void

    .line 769
    :cond_e
    const/4 v0, 0x4

    goto :goto_a
.end method

.method private static setInputTime(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 633
    const-string v2, "TIMER"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 634
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, ".timer.input.time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    return-void
.end method

.method private setStartedViewState(Z)V
    .registers 6
    .parameter "isShow"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 775
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_36

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 777
    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_38

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 779
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3a

    move v0, v2

    :goto_26
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 781
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3c

    :goto_32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    return-void

    :cond_36
    move v0, v2

    .line 775
    goto :goto_c

    :cond_38
    move v0, v2

    .line 777
    goto :goto_19

    :cond_3a
    move v0, v1

    .line 779
    goto :goto_26

    :cond_3c
    move v2, v1

    .line 781
    goto :goto_32
.end method

.method private setStopedViewState(Z)V
    .registers 6
    .parameter "isShow"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 787
    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_29

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 789
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2b

    move v0, v2

    :goto_19
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 791
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2d

    :goto_25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 793
    return-void

    :cond_29
    move v0, v2

    .line 787
    goto :goto_c

    :cond_2b
    move v0, v1

    .line 789
    goto :goto_19

    :cond_2d
    move v1, v2

    .line 791
    goto :goto_25
.end method

.method private setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V
    .registers 5
    .parameter "prefix"
    .parameter "postfix"
    .parameter "time"

    .prologue
    .line 408
    div-int/lit8 v0, p3, 0xa

    invoke-virtual {p1, v0}, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->setNumber(I)V

    .line 409
    rem-int/lit8 v0, p3, 0xa

    invoke-virtual {p2, v0}, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->setNumber(I)V

    .line 410
    return-void
.end method

.method private setTimer(J)V
    .registers 9
    .parameter "time"

    .prologue
    .line 549
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/Timer$1;

    const-wide/16 v4, 0x32

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/timer/Timer$1;-><init>(Lcom/sec/android/app/clockpackage/timer/Timer;JJ)V

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    .line 570
    return-void
.end method

.method private setViewState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewState() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget v0, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    packed-switch v0, :pswitch_data_66

    .line 296
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setStartedViewState(Z)V

    .line 297
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/timer/Timer;->setDefaultViewState(Z)V

    .line 299
    sget-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->isFirst:Z

    if-eqz v0, :cond_39

    .line 300
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 301
    const v0, 0x7f0e0107

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    .line 302
    sput-boolean v3, Lcom/sec/android/app/clockpackage/timer/Timer;->isFirst:Z

    .line 305
    :cond_39
    sget v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    .line 308
    :goto_3e
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initTimeView()V

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->chkInputData()V

    .line 310
    return-void

    .line 275
    :pswitch_45
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setDefaultViewState(Z)V

    .line 276
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/timer/Timer;->setStartedViewState(Z)V

    goto :goto_3e

    .line 280
    :pswitch_4c
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setDefaultViewState(Z)V

    .line 281
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/timer/Timer;->setStopedViewState(Z)V

    goto :goto_3e

    .line 285
    :pswitch_53
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setStartedViewState(Z)V

    .line 286
    invoke-direct {p0, v4}, Lcom/sec/android/app/clockpackage/timer/Timer;->setDefaultViewState(Z)V

    .line 288
    sget-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 290
    invoke-direct {p0, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->resetTime(Z)V

    .line 291
    sget v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    goto :goto_3e

    .line 272
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_45
        :pswitch_4c
        :pswitch_53
    .end packed-switch
.end method

.method private shouldSkipEvent()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 404
    sget v1, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    if-eq v1, v0, :cond_a

    sget v1, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private updateTime()V
    .registers 12

    .prologue
    const v10, 0x36ee80

    const v9, 0xea60

    .line 364
    sget-wide v5, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 365
    .local v0, hour:I
    sget-wide v5, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    mul-int v7, v0, v10

    int-to-long v7, v7

    sub-long/2addr v5, v7

    long-to-int v4, v5

    .local v4, tmp:I
    div-int v2, v4, v9

    .line 366
    .local v2, minute:I
    mul-int v5, v2, v9

    sub-int v5, v4, v5

    div-int/lit16 v3, v5, 0x3e8

    .line 367
    .local v3, second:I
    sget-wide v5, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    mul-int v7, v0, v10

    int-to-long v7, v7

    sub-long/2addr v5, v7

    mul-int v7, v2, v9

    int-to-long v7, v7

    sub-long/2addr v5, v7

    mul-int/lit16 v7, v3, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    long-to-int v1, v5

    .line 369
    .local v1, mili_second:I
    const/16 v5, 0x64

    if-gt v1, v5, :cond_5d

    .line 370
    sget-wide v5, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-gez v5, :cond_3a

    if-eqz v3, :cond_43

    .line 371
    :cond_3a
    iput v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    .line 372
    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v6, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    invoke-direct {p0, v5, v6, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 378
    :cond_43
    iget v5, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    if-eq v2, v5, :cond_5d

    .line 379
    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    .line 380
    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v6, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    invoke-direct {p0, v5, v6, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 385
    iget v5, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    if-eq v0, v5, :cond_5d

    .line 386
    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    .line 387
    sget-object v5, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    sget-object v6, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    invoke-direct {p0, v5, v6, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimeToView(Lcom/sec/android/app/clockpackage/timer/NumberImageView;Lcom/sec/android/app/clockpackage/timer/NumberImageView;I)V

    .line 391
    :cond_5d
    return-void
.end method

.method private updateTimeViews(I)V
    .registers 9
    .parameter "pressedTimeUnit"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 313
    sput p1, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->shouldSkipEvent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 347
    :goto_d
    return-void

    .line 319
    :cond_e
    packed-switch p1, :pswitch_data_a8

    .line 346
    :goto_11
    sput-boolean v3, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    goto :goto_d

    .line 322
    :pswitch_14
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->pressNumberViews([Landroid/view/View;)V

    .line 325
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->releaseNumberViews([Landroid/view/View;)V

    goto :goto_11

    .line 330
    :pswitch_45
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->pressNumberViews([Landroid/view/View;)V

    .line 332
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->releaseNumberViews([Landroid/view/View;)V

    goto :goto_11

    .line 338
    :pswitch_76
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->pressNumberViews([Landroid/view/View;)V

    .line 340
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->releaseNumberViews([Landroid/view/View;)V

    goto/16 :goto_11

    .line 319
    :pswitch_data_a8
    .packed-switch 0x7f0e0106
        :pswitch_14
        :pswitch_45
        :pswitch_76
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 820
    invoke-virtual {p1, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 863
    :goto_b
    :pswitch_b
    sput-boolean v1, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    .line 865
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->chkInputData()V

    .line 866
    return-void

    .line 826
    :pswitch_11
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 829
    :pswitch_16
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 832
    :pswitch_1c
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 835
    :pswitch_22
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 838
    :pswitch_28
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 841
    :pswitch_2e
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 844
    :pswitch_34
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 847
    :pswitch_3a
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 850
    :pswitch_40
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 853
    :pswitch_46
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 856
    :pswitch_4c
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    .line 857
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_b

    .line 823
    nop

    :pswitch_data_56
    .packed-switch 0x7f0e0110
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_b
        :pswitch_11
        :pswitch_4c
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    const-string v1, "Timer"

    const-string v2, "onConfigurationChanged() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->setContentView(I)V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initViews()V

    .line 167
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initAlarm()V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initKeypad()V

    .line 183
    const-string v1, "pl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 184
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 185
    const v1, 0x7f0e011d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 186
    .local v0, btn:Landroid/widget/Button;
    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 190
    .end local v0           #btn:Landroid/widget/Button;
    :cond_3c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "Timer"

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initInputTime(Landroid/content/Context;)V

    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->preLoadImage()V

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 979
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    .line 929
    sget v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pressedTimeUnit:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    .line 930
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 870
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 872
    :cond_10
    const/4 v0, 0x1

    .line 875
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 880
    packed-switch p1, :pswitch_data_4a

    .line 922
    :goto_3
    :pswitch_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    .line 923
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->chkInputData()V

    .line 924
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 883
    :pswitch_e
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 887
    :pswitch_13
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 891
    :pswitch_19
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 895
    :pswitch_1f
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 899
    :pswitch_25
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 903
    :pswitch_2b
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 907
    :pswitch_31
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 911
    :pswitch_37
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 915
    :pswitch_3d
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 919
    :pswitch_43
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->input(I)Z

    goto :goto_3

    .line 880
    nop

    :pswitch_data_4a
    .packed-switch 0x7
        :pswitch_e
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_3d
        :pswitch_43
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_43
        :pswitch_e
        :pswitch_13
        :pswitch_25
        :pswitch_3
        :pswitch_2b
        :pswitch_37
        :pswitch_3
        :pswitch_19
        :pswitch_3
        :pswitch_31
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 988
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 990
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 992
    .local v0, id:I
    packed-switch v0, :pswitch_data_1c

    .line 1002
    :goto_a
    const/4 v2, 0x1

    return v2

    .line 995
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 996
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.clockpackage"

    const-string v3, "com.sec.android.app.clockpackage.timer.TimerDetail"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 992
    :pswitch_data_1c
    .packed-switch 0x7f0e015c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    const-string v0, "Timer"

    const-string v1, "onPause() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pause:Z

    .line 199
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundle"

    .prologue
    .line 587
    const-string v3, "Timer"

    const-string v4, "onRestoreInstancestate() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v3, "timer_current_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 591
    const-string v3, "timer_elapsed_realtime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 592
    .local v1, savedElapsedTime:J
    const-string v3, "timer_inputMillis"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    .line 594
    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    if-eqz v3, :cond_26

    .line 596
    :try_start_21
    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_26} :catch_64

    .line 601
    :cond_26
    :goto_26
    sget v3, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_69

    .line 602
    const-string v3, "timer_remainMillis"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 604
    sget-wide v3, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    const-wide/16 v5, 0x7d

    add-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimer(J)V

    .line 606
    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 613
    :cond_46
    :goto_46
    const-string v3, "Timer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestoreInstancestate() remainMillis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 616
    return-void

    .line 597
    :catch_64
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_26

    .line 608
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_69
    sget v3, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    .line 610
    const-string v3, "timer_remainMillis"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    goto :goto_46
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 132
    const-string v0, "Timer"

    const-string v1, "onResume() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initViews()V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initAlarm()V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->initKeypad()V

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/clockpackage/timer/Timer;->pause:Z

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 621
    const-string v0, "Timer"

    const-string v1, "onSaveInstanceState() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v0, "timer_current_state"

    sget v1, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    const-string v0, "timer_elapsed_realtime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    const-string v0, "timer_remainMillis"

    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 626
    const-string v0, "timer_inputMillis"

    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 629
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 797
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 811
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0108

    if-eq v0, v1, :cond_13

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->bFocusChanged:Z

    .line 815
    :cond_13
    invoke-super {p0, p2}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 800
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_7

    .line 804
    :pswitch_20
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->currentInputPosition:I

    .line 805
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/Timer;->updateTimeViews(I)V

    goto :goto_7

    .line 797
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch

    .line 800
    :pswitch_data_32
    .packed-switch 0x7f0e0106
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public reset(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 711
    const v2, 0x7f0e011d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 712
    .local v0, btn:Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 714
    const/4 v2, 0x3

    sput v2, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 716
    sget-wide v2, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v2, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 718
    invoke-direct {p0, v6}, Lcom/sec/android/app/clockpackage/timer/Timer;->resetTime(Z)V

    .line 720
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 723
    :try_start_1f
    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_24} :catch_51

    .line 728
    :goto_24
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 730
    const-string v2, "Timer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset() called. state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainMillis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 733
    return-void

    .line 724
    :catch_51
    move-exception v1

    .line 725
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_24
.end method

.method public restart(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 697
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 699
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setAlarm()V

    .line 701
    sget-wide v0, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimer(J)V

    .line 702
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 704
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 706
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restart() called. state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remainMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method public start(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 641
    sget v1, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    if-ne v1, v5, :cond_7

    .line 680
    :cond_6
    :goto_6
    return-void

    .line 644
    :cond_7
    const v1, 0x7f0e011f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 645
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 647
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->convertMillis(III)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 649
    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 653
    sput v5, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 654
    sput-boolean v6, Lcom/sec/android/app/clockpackage/timer/Timer;->isViewChanged:Z

    .line 656
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->mHourPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinuteBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->mMinutePostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondBackground:Lcom/sec/android/app/clockpackage/timer/TimeImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPrefix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/android/app/clockpackage/timer/Timer;->mSecondPostfix:Lcom/sec/android/app/clockpackage/timer/NumberImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->releaseNumberViews([Landroid/view/View;)V

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->getInputTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->setInputTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->hour:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->minute:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->second:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/timer/Timer;->convertMillis(III)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    sput-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    .line 664
    sget-wide v1, Lcom/sec/android/app/clockpackage/timer/Timer;->inputMillis:J

    const-wide/16 v3, 0x7d

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/clockpackage/timer/Timer;->setTimer(J)V

    .line 665
    sget-object v1, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setAlarm()V

    .line 669
    const v1, 0x7f0e010f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 672
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 674
    const v1, 0x7f0e011e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/Timer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 677
    const-string v1, "Timer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() called. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remainMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_6
.end method

.method public stop(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 684
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/Timer;->timerSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 688
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 690
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/Timer;->setViewState()V

    .line 692
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() called. state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/clockpackage/timer/Timer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remainMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/clockpackage/timer/Timer;->remainMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method
