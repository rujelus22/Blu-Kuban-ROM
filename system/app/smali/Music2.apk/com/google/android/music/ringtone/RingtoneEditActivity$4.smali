.class Lcom/google/android/music/ringtone/RingtoneEditActivity$4;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

.field final synthetic val$saveZoomLevel:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iput p2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->val$saveZoomLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/MarkerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/MarkerView;->requestFocus()Z

    .line 339
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;
    invoke-static {v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/MarkerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->markerFocus(Lcom/google/android/music/ringtone/MarkerView;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1300(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/WaveformView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->val$saveZoomLevel:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->setZoomLevel(I)V

    .line 342
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1300(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/WaveformView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->recomputeHeights()V

    .line 344
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #calls: Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V
    invoke-static {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1400(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    .line 345
    return-void
.end method
