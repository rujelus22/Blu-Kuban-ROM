.class public Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;
.super Ljava/lang/Object;
.source "WeatherClockData.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnData:Ljava/lang/Runnable;

.field private mOnNetFail:Ljava/lang/Runnable;

.field myProgressDialog:Landroid/app/ProgressDialog;


# virtual methods
.method public cancelLoadingWeather()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 576
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    .line 580
    return-void
.end method
