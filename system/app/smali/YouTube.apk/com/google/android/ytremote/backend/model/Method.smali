.class public final enum Lcom/google/android/ytremote/backend/model/Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADD_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum ADD_VIDEOS:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum CLEAR_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum CONFIRM_PLAYLIST_UPDATE:Lcom/google/android/ytremote/backend/model/Method;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum ERROR:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum GET_NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum GET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum HIDE_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum LOUNGE_STATUS:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum MOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum NEXT:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum NOOP:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum NOW_PLAYING_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum PAUSE:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum PLAY:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum PLAYLIST_MODIFIED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum PREV:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum REMOTE_CALL_ERROR:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum REMOTE_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum REMOTE_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum REMOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SCREEN_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SCREEN_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SEEK_TO:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SET_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SET_VOLUME:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum SHOW_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum STATE_CHANGED:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum STOP:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum UPDATE_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

.field public static final enum UPDATE_USERNAME:Lcom/google/android/ytremote/backend/model/Method;

.field public static final fromString:Ljava/util/Map;


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 23
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "ADD_VIDEO"

    const-string v3, "addVideo"

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->ADD_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    .line 24
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "ADD_VIDEOS"

    const-string v3, "addVideos"

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->ADD_VIDEOS:Lcom/google/android/ytremote/backend/model/Method;

    .line 25
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "CLEAR_PLAYLIST"

    const-string v3, "clearPlaylist"

    invoke-direct {v1, v2, v6, v3}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->CLEAR_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    .line 26
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "CONFIRM_PLAYLIST_UPDATE"

    const-string v3, "confirmPlaylistUpdate"

    invoke-direct {v1, v2, v7, v3}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->CONFIRM_PLAYLIST_UPDATE:Lcom/google/android/ytremote/backend/model/Method;

    .line 27
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "ERROR"

    const-string v3, "onError"

    invoke-direct {v1, v2, v8, v3}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->ERROR:Lcom/google/android/ytremote/backend/model/Method;

    .line 28
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "GET_NOW_PLAYING"

    const/4 v3, 0x5

    .line 32
    const-string v4, "getNowPlaying"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->GET_NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    .line 33
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "GET_PLAYLIST"

    const/4 v3, 0x6

    const-string v4, "getPlaylist"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->GET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    .line 34
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "HIDE_QR_CODE"

    const/4 v3, 0x7

    const-string v4, "hideQrCode"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->HIDE_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

    .line 35
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "LOUNGE_STATUS"

    const/16 v3, 0x8

    const-string v4, "loungeStatus"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->LOUNGE_STATUS:Lcom/google/android/ytremote/backend/model/Method;

    .line 36
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "MOVE_VIDEO"

    const/16 v3, 0x9

    const-string v4, "moveVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->MOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    .line 37
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "NEXT"

    const/16 v3, 0xa

    .line 38
    const-string v4, "next"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->NEXT:Lcom/google/android/ytremote/backend/model/Method;

    .line 39
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "NOOP"

    const/16 v3, 0xb

    const-string v4, "noop"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->NOOP:Lcom/google/android/ytremote/backend/model/Method;

    .line 40
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "NOW_PLAYING"

    const/16 v3, 0xc

    const-string v4, "nowPlaying"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    .line 41
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "NOW_PLAYING_PLAYLIST"

    const/16 v3, 0xd

    const-string v4, "nowPlayingPlaylist"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->NOW_PLAYING_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    .line 42
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "PAUSE"

    const/16 v3, 0xe

    const-string v4, "pause"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->PAUSE:Lcom/google/android/ytremote/backend/model/Method;

    .line 43
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "PLAY"

    const/16 v3, 0xf

    const-string v4, "play"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->PLAY:Lcom/google/android/ytremote/backend/model/Method;

    .line 44
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "PLAYLIST_MODIFIED"

    const/16 v3, 0x10

    const-string v4, "playlistModified"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->PLAYLIST_MODIFIED:Lcom/google/android/ytremote/backend/model/Method;

    .line 45
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "PREV"

    const/16 v3, 0x11

    const-string v4, "prev"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->PREV:Lcom/google/android/ytremote/backend/model/Method;

    .line 46
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "REMOTE_CALL_ERROR"

    const/16 v3, 0x12

    const-string v4, "badRemoteCall"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_CALL_ERROR:Lcom/google/android/ytremote/backend/model/Method;

    .line 47
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "REMOTE_CONNECTED"

    const/16 v3, 0x13

    const-string v4, "remoteConnected"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    .line 48
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "REMOTE_DISCONNECTED"

    const/16 v3, 0x14

    const-string v4, "remoteDisconnected"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    .line 49
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "REMOVE_VIDEO"

    const/16 v3, 0x15

    const-string v4, "removeVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->REMOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    .line 50
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SCREEN_CONNECTED"

    const/16 v3, 0x16

    const-string v4, "loungeScreenConnected"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    .line 51
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SCREEN_DISCONNECTED"

    const/16 v3, 0x17

    const-string v4, "loungeScreenDisconnected"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    .line 52
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SEEK_TO"

    const/16 v3, 0x18

    const-string v4, "seekTo"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SEEK_TO:Lcom/google/android/ytremote/backend/model/Method;

    .line 53
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SET_PLAYLIST"

    const/16 v3, 0x19

    const-string v4, "setPlaylist"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    .line 54
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SET_VIDEO"

    const/16 v3, 0x1a

    const-string v4, "setVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SET_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    .line 55
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SET_VOLUME"

    const/16 v3, 0x1b

    const-string v4, "setVolume"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SET_VOLUME:Lcom/google/android/ytremote/backend/model/Method;

    .line 56
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "SHOW_QR_CODE"

    const/16 v3, 0x1c

    const-string v4, "showQrCode"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->SHOW_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

    .line 57
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "STATE_CHANGED"

    const/16 v3, 0x1d

    const-string v4, "onStateChange"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->STATE_CHANGED:Lcom/google/android/ytremote/backend/model/Method;

    .line 58
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "STOP"

    const/16 v3, 0x1e

    const-string v4, "stopVideo"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->STOP:Lcom/google/android/ytremote/backend/model/Method;

    .line 59
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "UPDATE_PLAYLIST"

    const/16 v3, 0x1f

    const-string v4, "updatePlaylist"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->UPDATE_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    .line 60
    new-instance v1, Lcom/google/android/ytremote/backend/model/Method;

    const-string v2, "UPDATE_USERNAME"

    const/16 v3, 0x20

    const-string v4, "updateUsername"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ytremote/backend/model/Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->UPDATE_USERNAME:Lcom/google/android/ytremote/backend/model/Method;

    const/16 v1, 0x21

    new-array v1, v1, [Lcom/google/android/ytremote/backend/model/Method;

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->ADD_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->ADD_VIDEOS:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->CLEAR_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->CONFIRM_PLAYLIST_UPDATE:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/ytremote/backend/model/Method;->ERROR:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->GET_NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->GET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->HIDE_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->LOUNGE_STATUS:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->MOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->NEXT:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->NOOP:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->NOW_PLAYING:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->NOW_PLAYING_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->PAUSE:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->PLAY:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->PLAYLIST_MODIFIED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->PREV:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_CALL_ERROR:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->REMOTE_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->REMOVE_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_CONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SCREEN_DISCONNECTED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SEEK_TO:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SET_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SET_VIDEO:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SET_VOLUME:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->SHOW_QR_CODE:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->STATE_CHANGED:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->STOP:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->UPDATE_PLAYLIST:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/android/ytremote/backend/model/Method;->UPDATE_USERNAME:Lcom/google/android/ytremote/backend/model/Method;

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Method;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/ytremote/backend/model/Method;->fromString:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/google/android/ytremote/backend/model/Method;->values()[Lcom/google/android/ytremote/backend/model/Method;

    move-result-object v1

    array-length v2, v1

    :goto_270
    if-lt v0, v2, :cond_273

    .line 21
    return-void

    .line 66
    :cond_273
    aget-object v3, v1, v0

    .line 67
    sget-object v4, Lcom/google/android/ytremote/backend/model/Method;->fromString:Ljava/util/Map;

    iget-object v5, v3, Lcom/google/android/ytremote/backend/model/Method;->method:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_270
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    invoke-static {p3}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/model/Method;->method:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Method;
    .registers 2
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/ytremote/backend/model/Method;->fromString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/model/Method;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Method;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/model/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/model/Method;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/model/Method;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/model/Method;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Method;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/model/Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/ytremote/backend/model/Method;->method:Ljava/lang/String;

    return-object v0
.end method
