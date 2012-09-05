.class final enum Lcom/google/android/youtube/core/player/AdOverlay$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/AdOverlay$State;

.field public static final enum NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

.field public static final enum SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

.field public static final enum WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/AdOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/player/AdOverlay$State;

    const-string v1, "NOT_SKIPPABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/AdOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 55
    new-instance v0, Lcom/google/android/youtube/core/player/AdOverlay$State;

    const-string v1, "WAITING_TO_SKIP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/AdOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/player/AdOverlay$State;

    const-string v1, "SKIPPABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/AdOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/AdOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/AdOverlay$State;->NOT_SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/AdOverlay$State;->WAITING_TO_SKIP:Lcom/google/android/youtube/core/player/AdOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/AdOverlay$State;->SKIPPABLE:Lcom/google/android/youtube/core/player/AdOverlay$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->$VALUES:[Lcom/google/android/youtube/core/player/AdOverlay$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/AdOverlay$State;
    .registers 2
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/google/android/youtube/core/player/AdOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/AdOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/AdOverlay$State;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/youtube/core/player/AdOverlay$State;->$VALUES:[Lcom/google/android/youtube/core/player/AdOverlay$State;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/AdOverlay$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/AdOverlay$State;

    return-object v0
.end method
