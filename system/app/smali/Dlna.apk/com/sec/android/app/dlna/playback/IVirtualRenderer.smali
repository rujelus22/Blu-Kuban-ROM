.class public interface abstract Lcom/sec/android/app/dlna/playback/IVirtualRenderer;
.super Ljava/lang/Object;
.source "IVirtualRenderer.java"


# virtual methods
.method public abstract addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V
.end method

.method public abstract addRendererPropertyListener(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
.end method

.method public abstract getPosition()I
.end method

.method public abstract getState()I
.end method

.method public abstract gotoNotingState()V
.end method

.method public abstract removeRendererControlListener()V
.end method

.method public abstract removeRendererPropertyListener()V
.end method

.method public abstract requestPause()Z
.end method

.method public abstract requestPlay()Z
.end method

.method public abstract requestResume()Z
.end method

.method public abstract requestSeek(I)Z
.end method

.method public abstract requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
.end method

.method public abstract requestStop()Z
.end method

.method public abstract requestVolumeDown()Z
.end method

.method public abstract requestVolumeUp()Z
.end method

.method public abstract startRenderer()V
.end method

.method public abstract stopRenderer()V
.end method
