.class public Lcom/sec/android/app/lcdtest/button_touch_fail;
.super Landroid/app/Activity;
.source "button_touch_fail.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/button_touch_fail;->requestWindowFeature(I)Z

    .line 15
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/button_touch_fail;->setContentView(I)V

    .line 17
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 18
    .local v0, mTimer:Ljava/util/Timer;
    new-instance v1, Lcom/sec/android/app/lcdtest/button_touch_fail$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/button_touch_fail$1;-><init>(Lcom/sec/android/app/lcdtest/button_touch_fail;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 23
    return-void
.end method
