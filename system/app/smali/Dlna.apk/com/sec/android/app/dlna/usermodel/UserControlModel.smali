.class public Lcom/sec/android/app/dlna/usermodel/UserControlModel;
.super Ljava/lang/Object;
.source "UserControlModel.java"

# interfaces
.implements Lcom/sec/android/app/dlna/playback/IRendererControlListener;
.implements Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;


# static fields
.field private static enableListHilight:Z


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field actionLocked:Z

.field private actionQue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field curPosition:I

.field private currentRepeatState:I

.field private currentShuffleMode:Z

.field currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

.field currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

.field private guiHandlers:Lcom/samsung/util/ListenerList;

.field private mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

.field nothingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserNothing;

.field pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

.field playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

.field stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

.field private tryToPlaying:Z

.field userSelectedRenderer:Lcom/samsung/api/DeviceItem;

.field virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

.field virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

.field virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "UserControlModel."

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->CLASS_NAME:Ljava/lang/String;

    .line 92
    iput v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentRepeatState:I

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentShuffleMode:Z

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 115
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->userSelectedRenderer:Lcom/samsung/api/DeviceItem;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    .line 131
    iput-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->nothingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserNothing;

    .line 133
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 135
    iput v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    .line 823
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z

    .line 177
    new-instance v0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 179
    new-instance v0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 180
    new-instance v0, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/VirtualRendererNothing;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 182
    new-instance v0, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    .line 183
    new-instance v0, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    .line 184
    new-instance v0, Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    .line 187
    new-instance v0, Lcom/sec/android/app/dlna/model/Playlist;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/model/Playlist;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    .line 189
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    iput-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->setRendererListener()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getUserStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getRendererStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/usermodel/UserControlModel;Lcom/sec/android/app/dlna/usermodel/IUserControl;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    return-void
.end method

.method private changeRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-ne v0, p1, :cond_5

    .line 821
    :goto_4
    return-void

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-eqz v0, :cond_2f

    .line 812
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->removeRendererListener()V

    .line 813
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop old renderer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->stopRenderer()V

    .line 817
    :cond_2f
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    .line 818
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->setRendererListener()V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->startRenderer()V

    .line 820
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start new Renderer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private getControlResultString(I)Ljava/lang/String;
    .registers 3
    .parameter "result"

    .prologue
    .line 932
    sparse-switch p1, :sswitch_data_30

    .line 962
    const-string v0, "getControlResultString-__-;"

    :goto_5
    return-object v0

    .line 934
    :sswitch_6
    const-string v0, "PLAY_ACTION_SUCCESS"

    goto :goto_5

    .line 936
    :sswitch_9
    const-string v0, "PLAY_ACTION_FAIL"

    goto :goto_5

    .line 938
    :sswitch_c
    const-string v0, "PAUSE_ACTION_SUCCESS"

    goto :goto_5

    .line 940
    :sswitch_f
    const-string v0, "PAUSE_ACTION_FAIL"

    goto :goto_5

    .line 942
    :sswitch_12
    const-string v0, "STOP_ACTION_SUCCESS"

    goto :goto_5

    .line 944
    :sswitch_15
    const-string v0, "STOP_ACTION_FAIL"

    goto :goto_5

    .line 946
    :sswitch_18
    const-string v0, "SEEK_ACTION_SUCCESS"

    goto :goto_5

    .line 948
    :sswitch_1b
    const-string v0, "SEEK_ACTION_FAIL"

    goto :goto_5

    .line 950
    :sswitch_1e
    const-string v0, "SETAVT_ACTION_SUCCESS"

    goto :goto_5

    .line 952
    :sswitch_21
    const-string v0, "SETAVT_ACTION_FAIL"

    goto :goto_5

    .line 954
    :sswitch_24
    const-string v0, "SETVOLUME_ACTION_SUCCESS"

    goto :goto_5

    .line 956
    :sswitch_27
    const-string v0, "SETVOLUME_ACTION_FAIL"

    goto :goto_5

    .line 958
    :sswitch_2a
    const-string v0, "RESUME_ACTION_SUCCESS"

    goto :goto_5

    .line 960
    :sswitch_2d
    const-string v0, "RESUME_ACTION_FAIL"

    goto :goto_5

    .line 932
    :sswitch_data_30
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_9
        0xc8 -> :sswitch_c
        0xc9 -> :sswitch_f
        0x12c -> :sswitch_12
        0x12d -> :sswitch_15
        0x1f4 -> :sswitch_18
        0x1f5 -> :sswitch_1b
        0x258 -> :sswitch_1e
        0x259 -> :sswitch_21
        0x2bc -> :sswitch_24
        0x2bd -> :sswitch_27
        0x320 -> :sswitch_2a
        0x321 -> :sswitch_2d
    .end sparse-switch
.end method

.method private getRendererStateString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 982
    packed-switch p1, :pswitch_data_16

    .line 994
    const-string v0, "getRendererStateString-__-;"

    :goto_5
    return-object v0

    .line 984
    :pswitch_6
    const-string v0, "NOTHING"

    goto :goto_5

    .line 986
    :pswitch_9
    const-string v0, "PAUSED"

    goto :goto_5

    .line 988
    :pswitch_c
    const-string v0, "PLAYING"

    goto :goto_5

    .line 990
    :pswitch_f
    const-string v0, "STOPPED"

    goto :goto_5

    .line 992
    :pswitch_12
    const-string v0, "TRANSITIONING"

    goto :goto_5

    .line 982
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_12
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private getUserStateString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 967
    packed-switch p1, :pswitch_data_12

    .line 977
    :pswitch_3
    const-string v0, "getUserStateString-__-;"

    :goto_5
    return-object v0

    .line 969
    :pswitch_6
    const-string v0, "USER_NOTHING"

    goto :goto_5

    .line 971
    :pswitch_9
    const-string v0, "USER_PAUSED"

    goto :goto_5

    .line 973
    :pswitch_c
    const-string v0, "USER_PLAYING"

    goto :goto_5

    .line 975
    :pswitch_f
    const-string v0, "USER_STOPPED"

    goto :goto_5

    .line 967
    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private removeRendererListener()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-eqz v0, :cond_e

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->removeRendererControlListener()V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->removeRendererPropertyListener()V

    .line 241
    :cond_e
    return-void
.end method

.method private setCurrentPlaylist(I)Z
    .registers 5
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    if-ne v1, p1, :cond_10

    .line 534
    :cond_f
    :goto_f
    return v0

    .line 507
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    if-eqz v1, :cond_19

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->unsetPlayingItem()V

    .line 510
    :cond_19
    packed-switch p1, :pswitch_data_46

    .line 524
    const/4 v0, 0x0

    goto :goto_f

    .line 513
    :pswitch_1e
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->changeRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    .line 527
    :goto_23
    const/4 v1, 0x3

    if-ne v1, p1, :cond_f

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    if-eqz v1, :cond_f

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentShuffleMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/model/Playlist;->setShuffle(Z)V

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    iget v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentRepeatState:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/model/Playlist;->setRepeatMode(I)V

    goto :goto_f

    .line 517
    :pswitch_39
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->changeRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    goto :goto_23

    .line 521
    :pswitch_3f
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->changeRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    goto :goto_23

    .line 510
    nop

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_3f
        :pswitch_39
    .end packed-switch
.end method

.method private setRendererListener()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-eqz v0, :cond_23

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0, p0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->addRendererPropertyListener(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;->setRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/StateUserPaused;->setRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/StateUserStopped;->setRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    .line 234
    :cond_23
    return-void
.end method

.method private switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    if-eq v0, p1, :cond_3f

    .line 799
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserControlModel.switchState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getUserStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getUserStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    .line 803
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 805
    :cond_3f
    return-void
.end method

.method private tryToPlay()V
    .registers 3

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 910
    :goto_5
    return-void

    .line 829
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$6;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method


# virtual methods
.method public addGuiHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "modelHandler"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public addToPlaylist(Ljava/util/ArrayList;I)V
    .registers 7
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 594
    :cond_8
    :goto_8
    return-void

    .line 567
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    if-ne v2, v3, :cond_22

    :cond_13
    if-ltz p2, :cond_22

    .line 568
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->setCurrentPlaylist(I)Z

    .line 574
    :cond_22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 575
    .local v1, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    if-eqz v2, :cond_26

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    goto :goto_26

    .line 579
    .end local v1           #item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_3c
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    if-ne v2, v3, :cond_63

    if-ltz p2, :cond_63

    .line 580
    const-string v2, "DLNA"

    const-string v3, "currentUserstate is equals stopppedUserState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    if-eqz v2, :cond_8

    .line 585
    const-string v2, "DLNA"

    const-string v3, "set CurrentPlaylistitem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentPlayItem(I)V

    .line 587
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V

    .line 591
    :cond_63
    const/4 v2, -0x1

    if-ne p2, v2, :cond_8

    .line 592
    const/16 v2, 0x72

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_8
.end method

.method public clearActionQueue()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 215
    return-void
.end method

.method public clearPlaylist()V
    .registers 2

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 598
    .local v0, currentlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v0, :cond_9

    .line 599
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 600
    :cond_9
    return-void
.end method

.method public enableListHilight(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 493
    sput-boolean p1, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->enableListHilight:Z

    .line 494
    return-void
.end method

.method public forceStop()V
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->requestStop()Z

    .line 203
    return-void
.end method

.method public getCurrentPlayListType()I
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_a

    .line 539
    const/4 v0, 0x6

    .line 541
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v0

    goto :goto_9
.end method

.method public getCurrentRepeatState()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentRepeatState:I

    return v0
.end method

.method public getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_a

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public getMediaName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 446
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-nez v1, :cond_b

    .line 447
    const-string v1, ""

    .line 453
    :goto_a
    return-object v1

    .line 449
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    .line 450
    .local v0, playlistItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v0, :cond_18

    .line 451
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 453
    :cond_18
    const-string v1, ""

    goto :goto_a
.end method

.method public getOrderOfCurrentItem()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentIndexOfList()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCountOfList()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method public getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->getPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->gotoNotingState()V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->gotoNotingState()V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->gotoNotingState()V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    .line 211
    return-void
.end method

.method public isCurrentMediaSeekable()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    .line 466
    .local v0, playlistItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-nez v0, :cond_a

    .line 472
    :cond_9
    :goto_9
    return v1

    .line 468
    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 472
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public isListHilight()Z
    .registers 2

    .prologue
    .line 497
    sget-boolean v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->enableListHilight:Z

    return v0
.end method

.method public isShuffle()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentShuffleMode:Z

    return v0
.end method

.method public notifyGuiMessage(I)V
    .registers 8
    .parameter "message"

    .prologue
    .line 261
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, handler:Ljava/lang/Object;
    instance-of v3, v0, Landroid/os/Handler;

    if-eqz v3, :cond_6

    move-object v3, v0

    .line 263
    check-cast v3, Landroid/os/Handler;

    const/16 v4, 0x4d2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 264
    .local v2, msg:Landroid/os/Message;
    check-cast v0, Landroid/os/Handler;

    .end local v0           #handler:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 267
    .end local v2           #msg:Landroid/os/Message;
    :cond_24
    return-void
.end method

.method public notifyGuiMessage(II)V
    .registers 8
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 270
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, handler:Ljava/lang/Object;
    instance-of v3, v0, Landroid/os/Handler;

    if-eqz v3, :cond_6

    move-object v3, v0

    .line 272
    check-cast v3, Landroid/os/Handler;

    const/16 v4, 0x4d2

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 273
    .local v2, msg:Landroid/os/Message;
    check-cast v0, Landroid/os/Handler;

    .end local v0           #handler:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 276
    .end local v2           #msg:Landroid/os/Message;
    :cond_23
    return-void
.end method

.method public notifyRendererPropertyChangedEvent(I)V
    .registers 10
    .parameter "property"

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 709
    packed-switch p1, :pswitch_data_18e

    .line 791
    :cond_5
    :goto_5
    return-void

    .line 711
    :pswitch_6
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel. Event from renderer STATECHANGED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v5}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getRendererStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    if-eq v3, v6, :cond_46

    .line 715
    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 722
    :goto_35
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 725
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 726
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V

    goto :goto_5

    .line 717
    :cond_46
    const/16 v3, 0x71

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_35

    .line 730
    :cond_4c
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14e

    .line 731
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget-object v4, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    if-ne v3, v4, :cond_133

    .line 732
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    .line 735
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel.ActionLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with IRenderer.STOPPED_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-boolean v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    if-nez v3, :cond_5

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v1

    .line 739
    .local v1, curDuration:I
    const/4 v2, 0x0

    .line 741
    .local v2, endingMargin:I
    const/16 v3, 0x1e

    if-le v1, v3, :cond_f6

    .line 742
    const/16 v2, 0xa

    .line 748
    :goto_8f
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel.curPosition is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with endingMargin is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    sub-int v4, v1, v2

    if-lt v3, v4, :cond_108

    .line 751
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel. item is done. curPosition is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-nez v1, :cond_fc

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    iget-object v4, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-ne v3, v4, :cond_fc

    .line 753
    const/16 v3, 0x6f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto/16 :goto_5

    .line 745
    :cond_f6
    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-int v2, v3

    goto :goto_8f

    .line 755
    :cond_fc
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestNext()V

    goto/16 :goto_5

    .line 760
    :cond_108
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel. notify UNEXPECTED_STOP. curPosition is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v3, 0x424

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto/16 :goto_5

    .line 766
    .end local v1           #curDuration:I
    .end local v2           #endingMargin:I
    :cond_133
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    .line 767
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 768
    .local v0, action:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 769
    const-string v3, "DLNA"

    const-string v4, "User ControlModel Reserved Play Request"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPlayOrPause()Z

    goto/16 :goto_5

    .line 773
    .end local v0           #action:Ljava/lang/Integer;
    :cond_14e
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15e

    .line 774
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto/16 :goto_5

    .line 775
    :cond_15e
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->getState()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 776
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto/16 :goto_5

    .line 781
    :pswitch_16d
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->curPosition:I

    .line 782
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto/16 :goto_5

    .line 786
    :pswitch_17a
    const-string v3, "DLNA"

    const-string v4, "UserControlModel. Event from renderer CONTENTFINISHED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestNext()V

    goto/16 :goto_5

    .line 709
    nop

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16d
        :pswitch_17a
    .end packed-switch
.end method

.method public playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "playItem"

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 623
    :goto_5
    return-void

    .line 617
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentPlayItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_5

    .line 621
    :catch_14
    move-exception v0

    goto :goto_5
.end method

.method public playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;I)V
    .registers 5
    .parameter "playItem"
    .parameter "index"

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 610
    :goto_5
    return-void

    .line 605
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentPlayItem(I)V

    .line 609
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V

    goto :goto_5
.end method

.method public playItNowDMP(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 4
    .parameter "playItem"

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 631
    :goto_5
    return-void

    .line 628
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentPlayItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto :goto_5
.end method

.method public removeGuiHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "modelHandler"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->guiHandlers:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public rendererControlResultReceived(ILcom/samsung/api/DMCAPIException;)V
    .registers 12
    .parameter "result"
    .parameter "e"

    .prologue
    const/16 v8, 0x6f

    const/16 v7, 0x66

    const/4 v6, 0x0

    .line 638
    invoke-virtual {p2}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_31

    .line 639
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel.Event from renderer... Result of request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getControlResultString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_27
    invoke-virtual {p2}, Lcom/samsung/api/DMCAPIException;->getErrorCode()I

    move-result v1

    .line 646
    .local v1, errorCode:I
    sparse-switch p1, :sswitch_data_ee

    .line 705
    :cond_2e
    :goto_2e
    :sswitch_2e
    iput-boolean v6, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 706
    return-void

    .line 641
    .end local v1           #errorCode:I
    :cond_31
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserControlModel.Event from renderer... Result of request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getControlResultString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UPnP Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/api/DMCAPIException;->getUPnPStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Desc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/api/DMCAPIException;->getUPnPStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 648
    .restart local v1       #errorCode:I
    :sswitch_72
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentItemDimmed(Z)V

    .line 649
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto :goto_2e

    .line 652
    :sswitch_7d
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->pausedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPaused;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto :goto_2e

    .line 655
    :sswitch_83
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playingUserState:Lcom/sec/android/app/dlna/usermodel/StateUserPlaying;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto :goto_2e

    .line 659
    :sswitch_89
    const/16 v3, 0x12c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 660
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stoppedUserState:Lcom/sec/android/app/dlna/usermodel/StateUserStopped;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->switchState(Lcom/sec/android/app/dlna/usermodel/IUserControl;)V

    goto :goto_2e

    .line 665
    :sswitch_94
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentItemDimmed(Z)V

    .line 666
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_2e

    .line 674
    :sswitch_9d
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentItemDimmed(Z)V

    .line 675
    invoke-virtual {p0, v8}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 678
    :sswitch_a6
    invoke-virtual {p0, v8}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 683
    :sswitch_a9
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 685
    :sswitch_ac
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 687
    :sswitch_b1
    const/16 v3, 0x9

    if-ne v1, v3, :cond_c8

    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->userSelectedRenderer:Lcom/samsung/api/DeviceItem;

    if-eqz v3, :cond_c8

    .line 688
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->userSelectedRenderer:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDevice(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 691
    :cond_c8
    const/16 v3, 0xa

    if-ne v1, v3, :cond_e7

    .line 692
    iget-object v3, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    .line 693
    .local v2, playlist:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v2, :cond_2e

    .line 694
    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 695
    .local v0, dms:Lcom/samsung/api/DeviceItem;
    if-eqz v0, :cond_2e

    .line 696
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDevice(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 701
    .end local v0           #dms:Lcom/samsung/api/DeviceItem;
    .end local v2           #playlist:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_e7
    const/16 v3, -0x65

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(II)V

    goto/16 :goto_2e

    .line 646
    :sswitch_data_ee
    .sparse-switch
        0x64 -> :sswitch_72
        0x65 -> :sswitch_a6
        0xc8 -> :sswitch_7d
        0xc9 -> :sswitch_a9
        0x12c -> :sswitch_89
        0x12d -> :sswitch_a9
        0x1f4 -> :sswitch_2e
        0x1f5 -> :sswitch_ac
        0x258 -> :sswitch_94
        0x259 -> :sswitch_9d
        0x2bc -> :sswitch_2e
        0x2bd -> :sswitch_b1
        0x320 -> :sswitch_83
        0x321 -> :sswitch_a9
    .end sparse-switch
.end method

.method public declared-synchronized requestFirst()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 914
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1b

    if-ne v0, v2, :cond_8

    .line 929
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 916
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 917
    const-string v0, "DLNA"

    const-string v1, "User conrtrol requestNext failed cause network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    goto :goto_6

    .line 914
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 921
    :cond_1e
    :try_start_1e
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z

    if-eq v0, v2, :cond_6

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 928
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_1b

    goto :goto_6
.end method

.method public declared-synchronized requestNext()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 337
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1b

    if-ne v0, v2, :cond_8

    .line 353
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 339
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 340
    const-string v0, "DLNA"

    const-string v1, "User conrtrol requestNext failed cause network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    goto :goto_6

    .line 337
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 344
    :cond_1e
    :try_start_1e
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlaying:Z

    if-eq v0, v2, :cond_6

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 352
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_1b

    goto :goto_6
.end method

.method public declared-synchronized requestNextByController()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-ne v2, v1, :cond_9

    .line 367
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 358
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    .line 359
    const-string v1, "DLNA"

    const-string v2, "User conrtrol failed cause network is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 356
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->moveToNextByController()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 366
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_1c

    move v0, v1

    .line 367
    goto :goto_7
.end method

.method public declared-synchronized requestPlayOrPause()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 282
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-ne v2, v1, :cond_9

    .line 295
    :goto_7
    monitor-exit p0

    return v0

    .line 284
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    .line 285
    const-string v1, "DLNA"

    const-string v2, "User conrtrol failed cause network is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 282
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$1;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_1c

    move v0, v1

    .line 295
    goto :goto_7
.end method

.method public declared-synchronized requestPrevious()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 371
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-ne v2, v1, :cond_9

    .line 382
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 373
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    .line 374
    const-string v1, "DLNA"

    const-string v2, "User conrtrol failed cause network is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 371
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/Playlist;->moveToPrev()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->tryToPlay()V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_1c

    move v0, v1

    .line 382
    goto :goto_7
.end method

.method public declared-synchronized requestSeek(I)Z
    .registers 6
    .parameter "seekTime"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-ne v2, v1, :cond_9

    .line 332
    :goto_7
    monitor-exit p0

    return v0

    .line 321
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    .line 322
    const-string v1, "DLNA"

    const-string v2, "User conrtrol failed cause network is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 319
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_1c

    move v0, v1

    .line 332
    goto :goto_7
.end method

.method public declared-synchronized requestStop()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-ne v2, v1, :cond_9

    .line 315
    :goto_7
    monitor-exit p0

    return v0

    .line 301
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    .line 302
    const-string v1, "DLNA"

    const-string v2, "User conrtrol failed cause network is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 299
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 308
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/usermodel/UserControlModel$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$2;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    move v0, v1

    .line 315
    goto :goto_7
.end method

.method public declared-synchronized requestVolumeDown()V
    .registers 3

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 424
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 409
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 410
    const-string v0, "DLNA"

    const-string v1, "User conrtrol failed cause network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    goto :goto_6

    .line 407
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 413
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 417
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_1b

    goto :goto_6
.end method

.method public declared-synchronized requestVolumeUp()V
    .registers 3

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 404
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 388
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 389
    const-string v0, "DLNA"

    const-string v1, "User conrtrol failed cause network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    goto :goto_6

    .line 386
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 393
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 397
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/usermodel/UserControlModel$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel$4;-><init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_1b

    goto :goto_6
.end method

.method public setRendererSelected(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentVirtualRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    iget-object v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualRendererNothing:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    if-ne v0, v1, :cond_b

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->changeRenderer(Lcom/sec/android/app/dlna/playback/IVirtualRenderer;)V

    .line 223
    :cond_b
    return-void
.end method

.method public setRepeatState(I)V
    .registers 3
    .parameter "currentRepeatState"

    .prologue
    .line 155
    iput p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentRepeatState:I

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->setRepeatMode(I)V

    .line 157
    return-void
.end method

.method public setShuffle(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentShuffleMode:Z

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->mPlaylist:Lcom/sec/android/app/dlna/model/Playlist;

    iget-boolean v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentShuffleMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/Playlist;->setShuffle(Z)V

    .line 162
    return-void
.end method

.method public stopVirtualRenderer()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualCommonRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->stopRenderer()V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->virtualImageRenderer:Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->stopRenderer()V

    .line 246
    return-void
.end method
