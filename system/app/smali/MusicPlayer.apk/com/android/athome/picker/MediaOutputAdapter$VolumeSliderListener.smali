.class public interface abstract Lcom/android/athome/picker/MediaOutputAdapter$VolumeSliderListener;
.super Ljava/lang/Object;
.source "MediaOutputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeSliderListener"
.end annotation


# virtual methods
.method public abstract onMuteChange(Lcom/android/athome/picker/MediaOutput;Z)V
.end method

.method public abstract onStartTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V
.end method

.method public abstract onStopTrackingTouch(Lcom/android/athome/picker/MediaOutput;)V
.end method

.method public abstract onVolumeSliderChange(Lcom/android/athome/picker/MediaOutput;F)V
.end method
