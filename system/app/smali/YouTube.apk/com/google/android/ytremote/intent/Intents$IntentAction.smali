.class public final enum Lcom/google/android/ytremote/intent/Intents$IntentAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AUTHORIZATION_LIGHTWEIGHT_ACCOUNT:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_ON_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_PLAYER_STATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_PLAYLIST_CONFIRMED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_PLAYLIST_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum BIG_SCREEN_PLAY_STATE_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CONNECTION_STATUS_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CONNECTION_STATUS_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CONNECTION_STATUS_STARTED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum CONNECTION_STATUS_STOPPED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum DECLINED_PARTY:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum END_PARTY_MODE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum GO_HOME:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum LOUNGE_STATUS:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum NO_ACTION:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum PARTY_VIDEO_FLING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum PLAYSTATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum QUEUE_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum QUEUE_MODIFIED_VIDEO_ADDED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum QUEUE_MODIFIED_VIDEO_REMOVED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum REFRESH:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum REMOTE_CALL_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum SHARED_PLAYLIST_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

.field public static final enum SWITCH_USER:Lcom/google/android/ytremote/intent/Intents$IntentAction;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "AUTHORIZATION_LIGHTWEIGHT_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->AUTHORIZATION_LIGHTWEIGHT_ACCOUNT:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 20
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 21
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 22
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_ON_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_ON_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 23
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_PLAY_STATE_UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAY_STATE_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 24
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_PLAYER_STATE_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYER_STATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 25
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_PLAYLIST_CONFIRMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYLIST_CONFIRMED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 26
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "BIG_SCREEN_PLAYLIST_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYLIST_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 27
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CLOUD_SERVICE_IPV6_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 28
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CLOUD_SERVICE_NO_NETWORK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 29
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CONNECTION_STATUS_CONNECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 35
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CONNECTION_STATUS_DISCONNECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 36
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CONNECTION_STATUS_STARTED_CONNECTING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STARTED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 37
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "CONNECTION_STATUS_STOPPED_CONNECTING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STOPPED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 38
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "DECLINED_PARTY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->DECLINED_PARTY:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 39
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "END_PARTY_MODE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->END_PARTY_MODE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 40
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "GO_HOME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->GO_HOME:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 41
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "LOUNGE_SERVER_CONNECTION_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 42
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "LOUNGE_STATUS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_STATUS:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 43
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "NO_ACTION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->NO_ACTION:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 44
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "PARTY_VIDEO_FLING"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->PARTY_VIDEO_FLING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 48
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "PLAYSTATE_CHANGED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->PLAYSTATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 49
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "QUEUE_MODIFIED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 50
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "QUEUE_MODIFIED_VIDEO_ADDED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED_VIDEO_ADDED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 51
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "QUEUE_MODIFIED_VIDEO_REMOVED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED_VIDEO_REMOVED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 52
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "REFRESH"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->REFRESH:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 53
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "REMOTE_CALL_ERROR"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->REMOTE_CALL_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 54
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "SHARED_PLAYLIST_MODIFIED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->SHARED_PLAYLIST_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 55
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    const-string v1, "SWITCH_USER"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->SWITCH_USER:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 18
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/google/android/ytremote/intent/Intents$IntentAction;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->AUTHORIZATION_LIGHTWEIGHT_ACCOUNT:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_ON_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAY_STATE_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYER_STATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYLIST_CONFIRMED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->BIG_SCREEN_PLAYLIST_UPDATE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_IPV6_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CLOUD_SERVICE_NO_NETWORK:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_CONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_DISCONNECTED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STARTED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->CONNECTION_STATUS_STOPPED_CONNECTING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->DECLINED_PARTY:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->END_PARTY_MODE:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->GO_HOME:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_SERVER_CONNECTION_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->LOUNGE_STATUS:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->NO_ACTION:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->PARTY_VIDEO_FLING:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->PLAYSTATE_CHANGED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED_VIDEO_ADDED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->QUEUE_MODIFIED_VIDEO_REMOVED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->REFRESH:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->REMOTE_CALL_ERROR:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->SHARED_PLAYLIST_MODIFIED:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentAction;->SWITCH_USER:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/ytremote/intent/Intents$IntentAction;
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->NO_ACTION:Lcom/google/android/ytremote/intent/Intents$IntentAction;

    .line 63
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->fromString(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentAction;

    move-result-object v0

    goto :goto_c
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentAction;
    .registers 2
    .parameter

    .prologue
    .line 67
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentAction;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentAction;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/intent/Intents$IntentAction;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentAction;->ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final asIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/google/android/ytremote/intent/Intents$IntentAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/ytremote/intent/Intents$IntentAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
