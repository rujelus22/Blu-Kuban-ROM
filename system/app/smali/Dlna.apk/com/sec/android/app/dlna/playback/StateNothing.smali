.class public Lcom/sec/android/app/dlna/playback/StateNothing;
.super Ljava/lang/Object;
.source "StateNothing.java"

# interfaces
.implements Lcom/sec/android/app/dlna/playback/IRenderer;


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/playback/StateNothing;->state:I

    .line 31
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public requestPause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public requestPlay()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
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
    .line 54
    const-string v0, "DLNA"

    const-string v1, "State Nothing request seek"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "DLNA"

    const-string v1, "State Nothing request setAvTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_11

    .line 62
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 69
    :cond_11
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public requestStop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public requestVolumeDown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public requestVolumeUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method
