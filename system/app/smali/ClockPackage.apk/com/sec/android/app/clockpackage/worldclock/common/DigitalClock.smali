.class public Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# instance fields
.field private mCalendar:Landroid/text/format/Time;

.field private mIs24Format:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mCalendar:Landroid/text/format/Time;

    .line 39
    return-void
.end method

.method private onTimeChanged()V
    .registers 8

    .prologue
    .line 51
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mCalendar:Landroid/text/format/Time;

    const-string v4, "%H"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, h:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mCalendar:Landroid/text/format/Time;

    const-string v4, "%M"

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, m:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mIs24Format:Z

    if-nez v3, :cond_32

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v1, v3, 0xc

    .line 56
    .local v1, hour:I
    if-nez v1, :cond_22

    const/16 v1, 0xc

    .line 59
    :cond_22
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v1           #hour:I
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method private setFormat()V
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mIs24Format:Z

    .line 79
    :goto_d
    return-void

    .line 77
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mIs24Format:Z

    goto :goto_d
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 47
    return-void
.end method

.method public setTime(Landroid/text/format/Time;)V
    .registers 3
    .parameter "time"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setFormat()V

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->onTimeChanged()V

    .line 85
    return-void
.end method
