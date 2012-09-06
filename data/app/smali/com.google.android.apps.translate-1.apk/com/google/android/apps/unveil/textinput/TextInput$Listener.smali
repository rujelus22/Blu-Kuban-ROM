.class public interface abstract Lcom/google/android/apps/unveil/textinput/TextInput$Listener;
.super Ljava/lang/Object;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract noResults()V
.end method

.method public abstract onCameraError()V
.end method

.method public abstract onNetworkError(I)V
.end method

.method public abstract onPictureTaken()V
.end method

.method public abstract onPreviewFrozen()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResult(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onSearching(J)V
.end method

.method public abstract onZoom()V
.end method
