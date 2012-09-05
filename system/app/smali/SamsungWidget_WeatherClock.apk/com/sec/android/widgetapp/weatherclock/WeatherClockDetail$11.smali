.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showRefreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 1629
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1630
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1602(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1631
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1202(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Z)Z

    .line 1632
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iput-boolean v2, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    .line 1633
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 1634
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    const v1, -0x140b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1635
    :cond_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopRefreshAnimation()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1636
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1637
    return-void
.end method
