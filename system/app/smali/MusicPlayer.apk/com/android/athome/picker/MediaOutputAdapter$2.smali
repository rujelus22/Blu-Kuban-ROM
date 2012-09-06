.class Lcom/android/athome/picker/MediaOutputAdapter$2;
.super Ljava/lang/Object;
.source "MediaOutputAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$volumeSlider:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputAdapter;Landroid/graphics/drawable/LevelListDrawable;Landroid/widget/SeekBar;Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    iput-object p2, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object p3, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeSlider:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$item:Lcom/android/athome/picker/MediaOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/16 v3, 0x65

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mView:Landroid/widget/AdapterView;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputAdapter;->access$100(Lcom/android/athome/picker/MediaOutputAdapter;)Landroid/widget/AdapterView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    #setter for: Lcom/android/athome/picker/MediaOutputAdapter;->mFirstVisibleIndex:I
    invoke-static {v4, v5}, Lcom/android/athome/picker/MediaOutputAdapter;->access$002(Lcom/android/athome/picker/MediaOutputAdapter;I)I

    .line 197
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v4

    if-ne v4, v3, :cond_41

    move v0, v1

    .line 199
    .local v0, mute:Z
    :goto_1c
    if-nez v0, :cond_43

    move v0, v1

    .line 201
    :goto_1f
    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeIcon:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v0, :cond_45

    :goto_23
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 203
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeSlider:Landroid/widget/SeekBar;

    if-nez v0, :cond_4c

    :goto_2a
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 206
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->this$0:Lcom/android/athome/picker/MediaOutputAdapter;

    #getter for: Lcom/android/athome/picker/MediaOutputAdapter;->mVolumeSliderListener:Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
    invoke-static {v1}, Lcom/android/athome/picker/MediaOutputAdapter;->access$200(Lcom/android/athome/picker/MediaOutputAdapter;)Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$item:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v1, v2, v0}, Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;->onMuteChange(Lcom/android/athome/picker/MediaOutput;Z)V

    .line 208
    :cond_40
    return-void

    .end local v0           #mute:Z
    :cond_41
    move v0, v2

    .line 197
    goto :goto_1c

    .restart local v0       #mute:Z
    :cond_43
    move v0, v2

    .line 199
    goto :goto_1f

    .line 201
    :cond_45
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputAdapter$2;->val$volumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    goto :goto_23

    :cond_4c
    move v1, v2

    .line 203
    goto :goto_2a
.end method
