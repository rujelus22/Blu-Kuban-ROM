.class Lcom/google/android/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/google/android/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 348
    if-nez p3, :cond_3

    .line 352
    :goto_2
    return-void

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "bar"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$902(Lcom/google/android/music/AudioPreview;Z)Z

    .line 346
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "bar"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$902(Lcom/google/android/music/AudioPreview;Z)Z

    .line 355
    return-void
.end method
