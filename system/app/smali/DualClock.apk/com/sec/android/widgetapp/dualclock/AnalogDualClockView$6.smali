.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$6;
.super Ljava/lang/Object;
.source "AnalogDualClockView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->displayMultiTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$6;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 842
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$6;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setPOPUPFlag(Z)V

    .line 844
    return-void
.end method
