.class public final enum Lcom/google/android/ytremote/intent/Intents$IntentData;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEVICE_NAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum DEVICE_TYPES:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum ERROR_CODE:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum ERROR_MESSAGE:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum NOT_PLAYABLE_REASONS:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum NOT_PLAYABLE_VIDEOS:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum ORIGINAL_METHOD:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum PARAMS:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum PLAYBACK_POSITION:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum PLAYER_STATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum PLAYLIST:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum PLAYSTATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum SCREEN_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum SCREEN_INFO:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum SCREEN_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum SESSION_TOKEN:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum STATION_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum STATION_TYPE:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum UPDATED:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum USERNAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum USERNAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

.field public static final enum VIDEO_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "DEVICE_NAMES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->DEVICE_NAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 85
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "DEVICE_TYPES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->DEVICE_TYPES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 86
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "ERROR_CODE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->ERROR_CODE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 87
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "ERROR_MESSAGE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->ERROR_MESSAGE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 88
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "NOT_PLAYABLE_VIDEOS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->NOT_PLAYABLE_VIDEOS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 89
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "NOT_PLAYABLE_REASONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->NOT_PLAYABLE_REASONS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 90
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "ORIGINAL_METHOD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->ORIGINAL_METHOD:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 91
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "PARAMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->PARAMS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 92
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "PLAYBACK_POSITION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYBACK_POSITION:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 93
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "PLAYER_STATE_DATA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYER_STATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 94
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "PLAYLIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYLIST:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 95
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "PLAYSTATE_DATA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYSTATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 96
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "SCREEN_ID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 97
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "SCREEN_INFO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_INFO:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 98
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "SCREEN_NAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 99
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "SESSION_TOKEN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->SESSION_TOKEN:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 100
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "STATION_NAME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->STATION_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 101
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "STATION_TYPE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->STATION_TYPE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 102
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "UPDATED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->UPDATED:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 103
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "USERNAME"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->USERNAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 104
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "USERNAMES"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->USERNAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 105
    new-instance v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    const-string v1, "VIDEO_ID"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/intent/Intents$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->VIDEO_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;

    .line 83
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/google/android/ytremote/intent/Intents$IntentData;

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentData;->DEVICE_NAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentData;->DEVICE_TYPES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentData;->ERROR_CODE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentData;->ERROR_MESSAGE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/ytremote/intent/Intents$IntentData;->NOT_PLAYABLE_VIDEOS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->NOT_PLAYABLE_REASONS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->ORIGINAL_METHOD:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->PARAMS:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYBACK_POSITION:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYER_STATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYLIST:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->PLAYSTATE_DATA:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_INFO:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->SCREEN_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->SESSION_TOKEN:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->STATION_NAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->STATION_TYPE:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->UPDATED:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->USERNAME:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->USERNAMES:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/ytremote/intent/Intents$IntentData;->VIDEO_ID:Lcom/google/android/ytremote/intent/Intents$IntentData;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/intent/Intents$IntentData;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/intent/Intents$IntentData;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/intent/Intents$IntentData;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/intent/Intents$IntentData;->ENUM$VALUES:[Lcom/google/android/ytremote/intent/Intents$IntentData;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/intent/Intents$IntentData;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/google/android/ytremote/intent/Intents$IntentData;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/ytremote/intent/Intents$IntentData;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
