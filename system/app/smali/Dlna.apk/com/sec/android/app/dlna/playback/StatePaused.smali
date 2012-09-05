.class public Lcom/sec/android/app/dlna/playback/StatePaused;
.super Ljava/lang/Object;
.source "StatePaused.java"

# interfaces
.implements Lcom/sec/android/app/dlna/playback/IRenderer;


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dlna/playback/StatePaused;->state:I

    .line 27
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 4

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getPosition()Lcom/samsung/api/ContentPositionInfo;

    move-result-object v1

    .line 36
    .local v1, position:Lcom/samsung/api/ContentPositionInfo;
    invoke-virtual {v1}, Lcom/samsung/api/ContentPositionInfo;->getRelTimeInt()I
    :try_end_b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 40
    .end local v1           #position:Lcom/samsung/api/ContentPositionInfo;
    :goto_c
    return v2

    .line 37
    :catch_d
    move-exception v0

    .line 38
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 40
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x4

    return v0
.end method

.method public requestPause()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public requestPlay()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->play()V

    .line 55
    return-void
.end method

.method public requestSeek(I)V
    .registers 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->seek(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 3
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/DLNAManager;->setAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 64
    return-void
.end method

.method public requestStop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stop()V

    .line 68
    return-void
.end method

.method public requestVolumeDown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getVolume()I

    move-result v0

    .line 72
    .local v0, vol:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setVolume(I)V

    .line 73
    return-void
.end method

.method public requestVolumeUp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getVolume()I

    move-result v0

    .line 77
    .local v0, vol:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setVolume(I)V

    .line 78
    return-void
.end method
