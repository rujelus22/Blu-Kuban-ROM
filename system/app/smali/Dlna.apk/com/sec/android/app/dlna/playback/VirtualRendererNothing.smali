.class public Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;
.super Ljava/lang/Object;
.source "VirtualRendererNothing.java"

# interfaces
.implements Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# instance fields
.field private rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

.field private stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 16
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateNothing;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateNothing;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    return-void
.end method


# virtual methods
.method public addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 20
    return-void
.end method

.method public addRendererPropertyListener(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter "renderPropertyChangedListener"

    .prologue
    .line 23
    return-void
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, -0x1

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, -0x1

    return v0
.end method

.method public gotoNotingState()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method protected notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    .registers 4
    .parameter "result"
    .parameter "e"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/dlna/playback/IRendererControlListener;->rendererControlResultReceived(ILcom/samsung/api/DMCAPIException;)V

    .line 169
    :cond_9
    return-void
.end method

.method public removeRendererControlListener()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 47
    return-void
.end method

.method public removeRendererPropertyListener()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public requestPause()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 54
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestPlay "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPause()V

    .line 56
    const/16 v2, 0xc8

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 58
    const/4 v1, 0x1

    .line 61
    :goto_19
    return v1

    .line 59
    :catch_1a
    move-exception v0

    .line 60
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0xc9

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestPlay()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 67
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestPlay "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPlay()V

    .line 69
    const/16 v2, 0x64

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 71
    const/4 v1, 0x1

    .line 74
    :goto_19
    return v1

    .line 72
    :catch_1a
    move-exception v0

    .line 73
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestResume()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestResume "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPlay()V

    .line 82
    const/16 v2, 0x64

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 84
    const/4 v1, 0x1

    .line 87
    :goto_19
    return v1

    .line 85
    :catch_1a
    move-exception v0

    .line 86
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestSeek(I)Z
    .registers 7
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 93
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestSeek "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2, p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestSeek(I)V

    .line 95
    const/16 v2, 0x1f4

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 97
    const/4 v1, 0x1

    .line 100
    :goto_19
    return v1

    .line 98
    :catch_1a
    move-exception v0

    .line 99
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x1f5

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
    .registers 7
    .parameter "userSelectedItem"

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_31

    .line 107
    :try_start_3
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VRN : requestSetAvt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1f
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2, p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 112
    const/16 v2, 0x258

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 114
    const/4 v1, 0x1

    .line 117
    :goto_30
    return v1

    .line 110
    :cond_31
    const-string v2, "DLNA"

    const-string v3, "VRN : requestSetAvt = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 115
    :catch_39
    move-exception v0

    .line 116
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x259

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_30
.end method

.method public requestStop()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestStop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestStop()V

    .line 125
    const/16 v2, 0x12c

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 127
    const/4 v1, 0x1

    .line 130
    :goto_19
    return v1

    .line 128
    :catch_1a
    move-exception v0

    .line 129
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x12d

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestVolumeDown()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestVolumeUp "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestVolumeUp()V

    .line 138
    const/16 v2, 0x2bc

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 140
    const/4 v1, 0x1

    .line 143
    :goto_19
    return v1

    .line 141
    :catch_1a
    move-exception v0

    .line 142
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x2bd

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public requestVolumeUp()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 149
    :try_start_1
    const-string v2, "DLNA"

    const-string v3, "VRN : requestVolumeDown "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestVolumeUp()V

    .line 151
    const/16 v2, 0x2bc

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_18
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 153
    const/4 v1, 0x1

    .line 156
    :goto_19
    return v1

    .line 154
    :catch_1a
    move-exception v0

    .line 155
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x2bd

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_19
.end method

.method public startRenderer()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public stopRenderer()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method
