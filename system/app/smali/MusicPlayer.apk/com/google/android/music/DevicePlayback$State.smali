.class public final enum Lcom/google/android/music/DevicePlayback$State;
.super Ljava/lang/Enum;
.source "DevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/DevicePlayback$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/DevicePlayback$State;

.field public static final enum NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

.field public static final enum PAUSED:Lcom/google/android/music/DevicePlayback$State;

.field public static final enum PLAYING:Lcom/google/android/music/DevicePlayback$State;

.field public static final enum SWITCHING_TRACKS:Lcom/google/android/music/DevicePlayback$State;

.field public static final enum TRANSIENT_PAUSE:Lcom/google/android/music/DevicePlayback$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/google/android/music/DevicePlayback$State;

    const-string v1, "NO_PLAYLIST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/DevicePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

    .line 53
    new-instance v0, Lcom/google/android/music/DevicePlayback$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/DevicePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->PAUSED:Lcom/google/android/music/DevicePlayback$State;

    .line 54
    new-instance v0, Lcom/google/android/music/DevicePlayback$State;

    const-string v1, "TRANSIENT_PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/DevicePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->TRANSIENT_PAUSE:Lcom/google/android/music/DevicePlayback$State;

    .line 55
    new-instance v0, Lcom/google/android/music/DevicePlayback$State;

    const-string v1, "SWITCHING_TRACKS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/DevicePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->SWITCHING_TRACKS:Lcom/google/android/music/DevicePlayback$State;

    .line 56
    new-instance v0, Lcom/google/android/music/DevicePlayback$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/DevicePlayback$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->PLAYING:Lcom/google/android/music/DevicePlayback$State;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/DevicePlayback$State;

    sget-object v1, Lcom/google/android/music/DevicePlayback$State;->NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/DevicePlayback$State;->PAUSED:Lcom/google/android/music/DevicePlayback$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/DevicePlayback$State;->TRANSIENT_PAUSE:Lcom/google/android/music/DevicePlayback$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/DevicePlayback$State;->SWITCHING_TRACKS:Lcom/google/android/music/DevicePlayback$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/DevicePlayback$State;->PLAYING:Lcom/google/android/music/DevicePlayback$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/DevicePlayback$State;->$VALUES:[Lcom/google/android/music/DevicePlayback$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/DevicePlayback$State;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/google/android/music/DevicePlayback$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/DevicePlayback$State;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->$VALUES:[Lcom/google/android/music/DevicePlayback$State;

    invoke-virtual {v0}, [Lcom/google/android/music/DevicePlayback$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/DevicePlayback$State;

    return-object v0
.end method


# virtual methods
.method playingOrWillPlay()Z
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/music/DevicePlayback$1;->$SwitchMap$com$google$android$music$DevicePlayback$State:[I

    invoke-virtual {p0}, Lcom/google/android/music/DevicePlayback$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 65
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 63
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 59
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method
