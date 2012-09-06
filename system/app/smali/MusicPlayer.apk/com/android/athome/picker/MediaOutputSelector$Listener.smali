.class public interface abstract Lcom/android/athome/picker/MediaOutputSelector$Listener;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onOutputAdded(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
.end method

.method public abstract onOutputRemoved(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutputGroup;)V
.end method

.method public abstract onOutputSelected(Lcom/android/athome/picker/MediaOutput;)V
.end method

.method public abstract onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V
.end method
