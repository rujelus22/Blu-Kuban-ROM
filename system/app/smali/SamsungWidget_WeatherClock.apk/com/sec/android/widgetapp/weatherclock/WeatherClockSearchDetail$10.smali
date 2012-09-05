.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->showRefreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    .line 1576
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1402(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1577
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$902(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Z)Z

    .line 1578
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopRefreshAnimation()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    .line 1579
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1580
    return-void
.end method
