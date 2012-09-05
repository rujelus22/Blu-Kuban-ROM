.class final enum Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field public static final enum BOTTOMUP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field public static final enum LEFTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field public static final enum RIGHTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field public static final enum UPRIGHT:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;


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
    new-instance v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    const-string v1, "UPRIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UPRIGHT:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 44
    new-instance v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    const-string v1, "LEFTONTOP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->LEFTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 45
    new-instance v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    const-string v1, "BOTTOMUP"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->BOTTOMUP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    const-string v1, "RIGHTONTOP"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->RIGHTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UPRIGHT:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->LEFTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->BOTTOMUP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->RIGHTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->$VALUES:[Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->$VALUES:[Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    return-object v0
.end method
