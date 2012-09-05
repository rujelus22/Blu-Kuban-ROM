.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;
.super Ljava/lang/Object;
.source "DigitalDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitalClock"
.end annotation


# instance fields
.field private calendar_:Ljava/util/Calendar;

.field private dst_offset_:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

.field private timezone_:Ljava/util/TimeZone;

.field private zone_name_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 585
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    const-string v0, "London"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->zone_name_:Ljava/lang/String;

    .line 588
    iput v2, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->dst_offset_:I

    .line 589
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "GMT"

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->timezone_:Ljava/util/TimeZone;

    .line 590
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->timezone_:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->calendar_:Ljava/util/Calendar;

    .line 592
    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->calendar_:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDSTOffset()I
    .registers 2

    .prologue
    .line 615
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->dst_offset_:I

    return v0
.end method

.method public getZoneName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->zone_name_:Ljava/lang/String;

    return-object v0
.end method

.method public setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V
    .registers 5
    .parameter "name"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->zone_name_:Ljava/lang/String;

    .line 604
    iput p2, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->dst_offset_:I

    .line 605
    iput-object p3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->timezone_:Ljava/util/TimeZone;

    .line 606
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->timezone_:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;->calendar_:Ljava/util/Calendar;

    .line 608
    return-void
.end method
