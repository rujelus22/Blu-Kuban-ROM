.class public Lcom/sec/android/app/dlna/playback/StatePlaying;
.super Ljava/lang/Object;
.source "StatePlaying.java"

# interfaces
.implements Lcom/sec/android/app/dlna/playback/IRenderer;


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dlna/playback/StatePlaying;->state:I

    .line 28
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 4

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getPosition()Lcom/samsung/api/ContentPositionInfo;

    move-result-object v1

    .line 43
    .local v1, position:Lcom/samsung/api/ContentPositionInfo;
    invoke-virtual {v1}, Lcom/samsung/api/ContentPositionInfo;->getRelTimeInt()I
    :try_end_b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v2

    .line 46
    .end local v1           #position:Lcom/samsung/api/ContentPositionInfo;
    :goto_c
    return v2

    .line 44
    :catch_d
    move-exception v0

    .line 45
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 46
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x3

    return v0
.end method

.method public requestPause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->pause()V

    .line 52
    return-void
.end method

.method public requestPlay()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 63
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
    .line 67
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->seek(Ljava/lang/String;)V

    .line 68
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
    .line 77
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/DLNAManager;->setAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 78
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
    .line 81
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stop()V

    .line 82
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
    .line 85
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getVolume()I

    move-result v0

    .line 86
    .local v0, vol:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setVolume(I)V

    .line 87
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
    .line 90
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getVolume()I

    move-result v0

    .line 91
    .local v0, vol:I
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setVolume(I)V

    .line 92
    return-void
.end method
