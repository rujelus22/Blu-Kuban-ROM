.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;
.super Ljava/lang/Object;
.source "DigitalDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitalDualClock"
.end annotation


# instance fields
.field private lower_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

.field private mRotate:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

.field private upper_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;I)V
    .registers 7
    .parameter
    .parameter "rotate"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 907
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->mRotate:I

    .line 910
    if-ltz p2, :cond_d

    if-le p2, v2, :cond_22

    .line 911
    :cond_d
    iput v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->mRotate:I

    .line 917
    :goto_f
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->mRotate:I

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;IIZ)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->upper_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    .line 919
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->mRotate:I

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;IIZ)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->lower_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    .line 922
    return-void

    .line 913
    :cond_22
    iput p2, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->mRotate:I

    goto :goto_f
.end method


# virtual methods
.method public getLowerView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;
    .registers 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->lower_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    return-object v0
.end method

.method public getUpperView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;
    .registers 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->upper_:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    return-object v0
.end method
