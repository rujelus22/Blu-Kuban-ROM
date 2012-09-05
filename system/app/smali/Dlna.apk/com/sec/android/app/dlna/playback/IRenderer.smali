.class public interface abstract Lcom/sec/android/app/dlna/playback/IRenderer;
.super Ljava/lang/Object;
.source "IRenderer.java"


# virtual methods
.method public abstract getPosition()I
.end method

.method public abstract getState()I
.end method

.method public abstract requestPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestPlay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestSeek(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestVolumeDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method

.method public abstract requestVolumeUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation
.end method
