.class Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;
.super Ljava/lang/Object;
.source "WatchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/WatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBrightnessHelper"
.end annotation


# instance fields
.field private internalScreenOffIfConnected:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/videos/honeycomb/WatchController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;-><init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setInternalScreenOffIfConnected(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->updateScreenBrightness()V

    return-void
.end method

.method private setInternalScreenOffIfConnected(Z)V
    .registers 2
    .parameter "offIfConnected"

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->internalScreenOffIfConnected:Z

    .line 509
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->updateScreenBrightness()V

    .line 510
    return-void
.end method

.method private setPrimaryScreenBrightness(F)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 521
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/WatchController;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/WatchController;->access$400(Lcom/google/android/youtube/videos/honeycomb/WatchController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 522
    .local v1, window:Landroid/view/Window;
    if-eqz v1, :cond_15

    .line 523
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 524
    .local v0, attributes:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 525
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 527
    .end local v0           #attributes:Landroid/view/WindowManager$LayoutParams;
    :cond_15
    return-void
.end method

.method private updateScreenBrightness()V
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->internalScreenOffIfConnected:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    iget-object v0, v0, Lcom/google/android/youtube/videos/honeycomb/WatchController;->hdmiReceiver:Lcom/google/android/youtube/core/utils/HdmiReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/HdmiReceiver;->isHdmiPlugged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 514
    const v0, 0x3c23d70a

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setPrimaryScreenBrightness(F)V

    .line 518
    :goto_14
    return-void

    .line 516
    :cond_15
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchController$ScreenBrightnessHelper;->setPrimaryScreenBrightness(F)V

    goto :goto_14
.end method
