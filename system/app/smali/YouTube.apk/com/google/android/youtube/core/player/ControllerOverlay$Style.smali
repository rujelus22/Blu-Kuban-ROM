.class public final enum Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum CUED:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum REMOTE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;


# instance fields
.field public final minimalInPortrait:Z

.field public final progressColor:I

.field public final showButtonsInPortrait:Z

.field public final supportsBuffered:Z

.field public final supportsNextPrevious:Z

.field public final supportsPlayHQCC:Z

.field public final supportsScrubber:Z

.field public final supportsTimeBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "YOUTUBE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0xeaab6a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "REMOTE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, -0xeaab6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->REMOTE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "AD"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, -0xeaab6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "MOVIE"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const v4, -0xeaab6a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "LIVE"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 39
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "CUED"

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->CUED:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->REMOTE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->CUED:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIZZZZZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    .line 60
    iput p4, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    .line 61
    iput-boolean p5, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsBuffered:Z

    .line 62
    iput-boolean p6, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    .line 63
    iput-boolean p7, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    .line 64
    iput-boolean p8, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    .line 65
    iput-boolean p9, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->minimalInPortrait:Z

    .line 66
    iput-boolean p10, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->showButtonsInPortrait:Z

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object v0
.end method
