.class final enum Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;
.super Ljava/lang/Enum;
.source "DefaultControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field public static final enum ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field public static final enum ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field public static final enum LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field public static final enum PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field public static final enum PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 44
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->$VALUES:[Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->$VALUES:[Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    return-object v0
.end method
