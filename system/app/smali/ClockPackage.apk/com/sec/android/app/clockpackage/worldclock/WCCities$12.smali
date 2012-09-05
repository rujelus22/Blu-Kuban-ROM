.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;
.super Ljava/util/TimerTask;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->createProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_26

    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mDlgProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFailToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mFailToastHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1619
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$12;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1100(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 1621
    :cond_26
    return-void
.end method
