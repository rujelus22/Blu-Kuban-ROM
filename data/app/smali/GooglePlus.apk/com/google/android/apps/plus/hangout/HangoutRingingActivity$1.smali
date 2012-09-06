.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$800(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$800(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->ping()V

    .line 486
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    :cond_2c
    return-void
.end method
