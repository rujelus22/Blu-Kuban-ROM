.class public Lcom/samsung/upnp/media/server/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# instance fields
.field private direction:Ljava/lang/String;

.field private id:I

.field private peerConnectionID:I

.field private peerConnectionManager:Ljava/lang/String;

.field private rcsId:I

.field private status:Ljava/lang/String;

.field private transId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAVTransportID()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->transId:I

    return v0
.end method

.method public getDirection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->id:I

    return v0
.end method

.method public getPeerConnectionID()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->peerConnectionID:I

    return v0
.end method

.method public getPeerConnectionManager()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->peerConnectionManager:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsID()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->rcsId:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionInfo;->status:Ljava/lang/String;

    return-object v0
.end method
