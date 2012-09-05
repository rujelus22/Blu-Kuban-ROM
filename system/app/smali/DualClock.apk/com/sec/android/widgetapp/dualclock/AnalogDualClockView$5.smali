.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;
.super Ljava/lang/Object;
.source "AnalogDualClockView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 823
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mCityID:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$600(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->currentCityID:I

    .line 828
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->updateDualClockDB(Landroid/content/Context;Lcom/sec/android/widgetapp/dualclock/City;)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.add_city"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 833
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 834
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setUserSettingFlag(Z)V

    .line 836
    return-void
.end method
