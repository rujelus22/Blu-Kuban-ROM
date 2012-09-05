.class Lcom/google/android/music/ringtone/WaveformView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/WaveformView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/WaveformView;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/WaveformView;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView$1;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$1;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$000(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformDoubleClick(FF)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$1;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$000(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformFling(F)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
