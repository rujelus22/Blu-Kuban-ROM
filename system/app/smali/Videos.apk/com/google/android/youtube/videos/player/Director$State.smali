.class final enum Lcom/google/android/youtube/videos/player/Director$State;
.super Ljava/lang/Enum;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/player/Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/player/Director$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum INITIALIZED_OK:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum INITIALIZING:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

.field public static final enum UNINITIALIZED:Lcom/google/android/youtube/videos/player/Director$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->UNINITIALIZED:Lcom/google/android/youtube/videos/player/Director$State;

    .line 80
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZING:Lcom/google/android/youtube/videos/player/Director$State;

    .line 81
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "INITIALIZED_OK"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_OK:Lcom/google/android/youtube/videos/player/Director$State;

    .line 82
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "INITIALIZED_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    .line 83
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "PLAYER_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    .line 84
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "PLAYER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    .line 85
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$State;

    const-string v1, "PLAYER_ENDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/player/Director$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    .line 78
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/youtube/videos/player/Director$State;

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->UNINITIALIZED:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZING:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_OK:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->INITIALIZED_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_LOADED:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ERROR:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/videos/player/Director$State;->PLAYER_ENDED:Lcom/google/android/youtube/videos/player/Director$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/videos/player/Director$State;->$VALUES:[Lcom/google/android/youtube/videos/player/Director$State;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/player/Director$State;
    .registers 2
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/google/android/youtube/videos/player/Director$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/player/Director$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/videos/player/Director$State;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/youtube/videos/player/Director$State;->$VALUES:[Lcom/google/android/youtube/videos/player/Director$State;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/player/Director$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/player/Director$State;

    return-object v0
.end method
