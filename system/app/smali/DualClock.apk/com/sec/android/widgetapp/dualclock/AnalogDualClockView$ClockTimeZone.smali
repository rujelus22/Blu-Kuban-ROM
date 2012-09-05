.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;
.super Ljava/lang/Object;
.source "AnalogDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockTimeZone"
.end annotation


# instance fields
.field mDST:I

.field mTimezone:Ljava/util/TimeZone;

.field mZonename:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Ljava/util/TimeZone;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "timezone"
    .parameter "name"
    .parameter "dst"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mTimezone:Ljava/util/TimeZone;

    .line 732
    iput-object p3, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mZonename:Ljava/lang/String;

    .line 733
    iput p4, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$ClockTimeZone;->mDST:I

    .line 734
    return-void
.end method
