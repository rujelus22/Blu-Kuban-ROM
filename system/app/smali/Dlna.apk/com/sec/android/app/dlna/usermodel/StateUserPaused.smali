.class public Lcom/sec/android/app/dlna/usermodel/StateUserPaused;
.super Ljava/lang/Object;
.source "StateUserPaused.java"

# interfaces
.implements Lcom/sec/android/app/dlna/usermodel/IUserControl;


# instance fields
.field final mType:I

.field virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->mType:I

    .line 30
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getPosition()I

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 46
    const-string v0, "DLNA"

    const-string v1, "User StatePaused : playorpause action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestResume()Z

    .line 48
    return-void
.end method

.method public requestSeek(I)V
    .registers 4
    .parameter "seekTime"

    .prologue
    .line 41
    const-string v0, "DLNA"

    const-string v1, "User StatePaused : seek action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestSeek(I)Z

    .line 43
    return-void
.end method

.method public requestStop()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "DLNA"

    const-string v1, "User StatePaused : stop action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestStop()Z

    .line 53
    return-void
.end method

.method public requestVolumeDown()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestVolumeDown()Z

    .line 57
    return-void
.end method

.method public requestVolumeUp()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestVolumeUp()Z

    .line 61
    return-void
.end method

.method public setRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V
    .registers 2
    .parameter "renderer"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->virtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 69
    return-void
.end method
