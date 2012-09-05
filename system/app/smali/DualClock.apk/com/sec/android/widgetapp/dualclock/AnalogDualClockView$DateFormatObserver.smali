.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "AnalogDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
