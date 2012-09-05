.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$2;
.super Landroid/database/ContentObserver;
.source "DigitalDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.DATE_FORMAT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    return-void
.end method
