.class public Lcom/quramsoft/xiv/XIVLargeThumnailInfo;
.super Ljava/lang/Object;
.source "XIVLargeThumnailInfo.java"


# static fields
.field private static mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

.field public static mLTNPreload:Z

.field private static mLastTouchTime:J


# instance fields
.field private mIsDecodingCanceled:Z

.field private mLargeThumnailOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLastTouchTime:J

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLTNPreload:Z

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLargeThumnailOptions:Landroid/graphics/BitmapFactory$Options;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mIsDecodingCanceled:Z

    .line 30
    return-void
.end method

.method public static checkDecodingState(Lcom/cooliris/media/Texture;)Z
    .registers 3
    .parameter "texture"

    .prologue
    .line 103
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 105
    invoke-virtual {p0}, Lcom/cooliris/media/Texture;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 107
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_18

    .line 108
    const-string v0, "XIVLargeThumnailInfo"

    const-string v1, "Decoding canceled ok!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_18
    const/4 v0, 0x1

    .line 113
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static createInfo()Lcom/quramsoft/xiv/XIVLargeThumnailInfo;
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;-><init>()V

    return-object v0
.end method

.method public static getCurrentInfo()Lcom/quramsoft/xiv/XIVLargeThumnailInfo;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    return-object v0
.end method

.method public static requestCancelDecode()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 55
    sget-object v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    if-eqz v2, :cond_20

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, lCurTime:J
    sget-wide v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLastTouchTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    sget-wide v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLastTouchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_21

    .line 60
    :cond_1b
    const/4 v2, 0x0

    sput-boolean v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLTNPreload:Z

    .line 75
    :cond_1e
    :goto_1e
    sput-wide v0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLastTouchTime:J

    .line 77
    :cond_20
    return-void

    .line 64
    :cond_21
    sput-boolean v6, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLTNPreload:Z

    .line 66
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    iget-object v2, v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLargeThumnailOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v2, :cond_1e

    .line 68
    sget-boolean v2, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v2, :cond_3a

    .line 69
    const-string v2, "XIVLargeThumnailInfo"

    const-string v3, "Try to cancle decoding LTN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_3a
    sget-object v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    iput-boolean v6, v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mIsDecodingCanceled:Z

    .line 71
    sget-object v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    iget-object v2, v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLargeThumnailOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    goto :goto_1e
.end method

.method public static setCurrentInfo(Lcom/quramsoft/xiv/XIVLargeThumnailInfo;)V
    .registers 1
    .parameter "info"

    .prologue
    .line 34
    sput-object p0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mCurrentInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    .line 35
    return-void
.end method

.method public static setTextureStateWhenDecodingFailed(Lcom/cooliris/media/Texture;)I
    .registers 4
    .parameter "texture"

    .prologue
    .line 81
    const/4 v0, 0x4

    .line 83
    .local v0, rtn:I
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 85
    iget-object v1, p0, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    if-eqz v1, :cond_22

    .line 87
    iget-object v1, p0, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    invoke-virtual {v1}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->isDecodingCanceled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 89
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v1, :cond_1e

    .line 90
    const-string v1, "XIVLargeThumnailInfo"

    const-string v2, "STATE_DECODING_CANCELED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1e
    const/4 v0, 0x5

    .line 94
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    .line 98
    :cond_22
    return v0
.end method


# virtual methods
.method public isDecodingCanceled()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mIsDecodingCanceled:Z

    return v0
.end method

.method public setLargeThumnailOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 2
    .parameter "options"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLargeThumnailOptions:Landroid/graphics/BitmapFactory$Options;

    .line 50
    return-void
.end method
