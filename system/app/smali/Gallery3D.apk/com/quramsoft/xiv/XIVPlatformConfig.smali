.class public Lcom/quramsoft/xiv/XIVPlatformConfig;
.super Ljava/lang/Object;
.source "XIVPlatformConfig.java"


# static fields
.field public static isXivLite:Z

.field public static mIsUseSkia:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->mIsUseSkia:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLargeThumbnailSize()I
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_7

    .line 17
    const/16 v0, 0x200

    .line 20
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getLargeThumbnailSize()I

    move-result v0

    goto :goto_6
.end method

.method public static getMediumnailSize()I
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_7

    .line 28
    const/16 v0, 0x100

    .line 30
    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x200

    goto :goto_6
.end method

.method public static getTimeElapsedInSec(I)F
    .registers 2
    .parameter "state"

    .prologue
    .line 35
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_7

    .line 36
    const/high16 v0, 0x4080

    .line 47
    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3fa0

    goto :goto_6
.end method

.method public static isUseCancelDecoding()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_6

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isUseFastCodec()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_6

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isUsePriorityControl()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->isXivLite:Z

    if-eqz v0, :cond_6

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isUseSkia()Z
    .registers 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/quramsoft/xiv/XIVPlatformConfig;->mIsUseSkia:Z

    return v0
.end method
