.class Lcom/google/android/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 244
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_13

    .line 249
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$500(Lcom/google/android/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 272
    :goto_12
    return-void

    .line 252
    :cond_13
    packed-switch p1, :pswitch_data_5a

    .line 271
    :cond_16
    :goto_16
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #calls: Lcom/google/android/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$800(Lcom/google/android/music/AudioPreview;)V

    goto :goto_12

    .line 254
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #setter for: Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 255
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_16

    .line 259
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 260
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 261
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_16

    .line 265
    :pswitch_47
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$600(Lcom/google/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 266
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #setter for: Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$602(Lcom/google/android/music/AudioPreview;Z)Z

    .line 267
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$2;->this$0:Lcom/google/android/music/AudioPreview;

    #calls: Lcom/google/android/music/AudioPreview;->start()V
    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$700(Lcom/google/android/music/AudioPreview;)V

    goto :goto_16

    .line 252
    :pswitch_data_5a
    .packed-switch -0x3
        :pswitch_2b
        :pswitch_2b
        :pswitch_1c
        :pswitch_16
        :pswitch_47
    .end packed-switch
.end method
