.class public final enum Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
.super Ljava/lang/Enum;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/ControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/player/ControllerOverlay$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;


# instance fields
.field public final progressColor:I

.field public final supportsBuffered:Z

.field public final supportsNextPrevious:Z

.field public final supportsPlayHQCC:Z

.field public final supportsScrubber:Z

.field public final supportsTimeBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "YOUTUBE"

    const v4, -0xd0cf

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 29
    new-instance v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v5, "AD"

    const v8, -0x1744d5

    move v6, v3

    move v7, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZ)V

    sput-object v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 30
    new-instance v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v5, "MOVIE"

    const v8, -0x3900cd

    move v6, v13

    move v7, v3

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZ)V

    sput-object v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 31
    new-instance v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v5, "LIVE"

    move v6, v14

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v3

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZ)V

    sput-object v4, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v14

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIZZZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter "supportsTimeBar"
    .parameter "progressColor"
    .parameter "supportsBuffered"
    .parameter "supportsScrubber"
    .parameter "supportsPlayHqCc"
    .parameter "supportsNextPrevious"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZZZZ)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    .line 48
    iput p4, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    .line 49
    iput-boolean p5, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsBuffered:Z

    .line 50
    iput-boolean p6, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    .line 51
    iput-boolean p7, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    .line 52
    iput-boolean p8, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .registers 2
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object v0
.end method
