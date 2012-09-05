.class public Lcom/sec/android/app/dlna/usermodel/StateUserStopped;
.super Ljava/lang/Object;
.source "StateUserStopped.java"

# interfaces
.implements Lcom/sec/android/app/dlna/usermodel/IUserControl;


# instance fields
.field final mType:I

.field virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->mType:I

    .line 29
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x3

    return v0
.end method

.method public requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 45
    const-string v0, "DLNA"

    const-string v1, "User StateStopped : playorpause action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestPlay()Z

    .line 48
    :cond_15
    return-void
.end method

.method public requestSeek(I)V
    .registers 4
    .parameter "seekTime"

    .prologue
    .line 40
    const-string v0, "DLNA"

    const-string v1, "User StateStopped : stop action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestSeek(I)Z

    .line 42
    return-void
.end method

.method public requestStop()V
    .registers 3

    .prologue
    .line 52
    const-string v0, "DLNA"

    const-string v1, "User StateStopped : stop action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestStop()Z

    .line 54
    return-void
.end method

.method public requestVolumeDown()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestVolumeDown()Z

    .line 58
    return-void
.end method

.method public requestVolumeUp()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestVolumeUp()Z

    .line 62
    return-void
.end method

.method public setRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V
    .registers 2
    .parameter "renderer"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 70
    return-void
.end method
