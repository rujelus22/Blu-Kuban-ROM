.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;
.super Ljava/lang/Thread;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 869
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mContinueVibrating:Z

    if-eqz v0, :cond_15

    .line 870
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 871
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 873
    :cond_15
    return-void
.end method
