.class Lcom/android/athome/picker/MediaOutputAdapter$1;
.super Ljava/lang/Object;
.source "MediaOutputAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/athome/picker/MediaOutputAdapter;->createVolumeControlView(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputAdapter;

.field final synthetic val$item:Lcom/android/athome/picker/MediaOutput;

.field final synthetic val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputAdapter;Lcom/android/athome/picker/MediaOutput;Landroid/graphics/drawable/LevelListDrawable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$item:Lcom/android/athome/picker/MediaOutput;

    iput-object p3, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 184
    if-eqz p3, :cond_26

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 185
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 186
    .local v0, volume:F
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$item:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v1, v2, v0}, Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;->onVolumeSliderChange(Lcom/android/athome/picker/MediaOutput;F)V

    .line 188
    .end local v0           #volume:F
    :cond_26
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mView:Landroid/widget/AdapterView;
    invoke-static {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$100(Lcom/android/athome/picker/MediaOutputAdapter;)Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/android/athome/picker/MediaOutputAdapter;->mFirstVisibleIndex:I
    invoke-static {v0, v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$002(Lcom/android/athome/picker/MediaOutputAdapter;I)I

    .line 168
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 169
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$item:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v0, v1}, Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;->onStartTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V

    .line 171
    :cond_22
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 176
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$1;->val$item:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v0, v1}, Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;->onStopTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V

    .line 178
    :cond_13
    return-void
.end method
