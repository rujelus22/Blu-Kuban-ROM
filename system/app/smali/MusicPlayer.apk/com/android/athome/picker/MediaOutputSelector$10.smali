.class Lcom/android/athome/picker/MediaOutputSelector$10;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$10;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuteChange(Lcom/android/athome/picker/MediaOutput;Z)V
    .registers 4
    .parameter "receiver"
    .parameter "mute"

    .prologue
    .line 835
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    .line 836
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$10;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$1300(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputSelector$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    .line 837
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$10;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$1500(Lcom/android/athome/picker/MediaOutputSelector;)V

    .line 838
    return-void
.end method

.method public onStartTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter "receiver"

    .prologue
    .line 841
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStartTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter "receiver"

    .prologue
    .line 845
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnStopTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method

.method public onVolumeSliderChange(Lcom/android/athome/picker/MediaOutput;F)V
    .registers 4
    .parameter "receiver"
    .parameter "volume"

    .prologue
    .line 829
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 830
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$10;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$1300(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputSelector$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    .line 831
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$10;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V
    invoke-static {v0}, Lcom/android/athome/picker/MediaOutputSelector;->access$1500(Lcom/android/athome/picker/MediaOutputSelector;)V

    .line 832
    return-void
.end method
