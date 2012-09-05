.class Lcom/sec/android/app/music/AudioPreview$20;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 3313
    if-eqz p3, :cond_e

    .line 3314
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 3315
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->setVolume(I)V
    invoke-static {v0, p2}, Lcom/sec/android/app/music/AudioPreview;->access$3400(Lcom/sec/android/app/music/AudioPreview;I)V

    .line 3318
    :cond_e
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeTouching:Z

    .line 3324
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 3325
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/music/AudioPreview;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    invoke-static {v0, v1, p1}, Lcom/sec/android/app/music/AudioPreview;->access$3500(Lcom/sec/android/app/music/AudioPreview;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 3326
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeTouching:Z

    .line 3332
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 3333
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$20;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 3334
    return-void
.end method
