.class public Lcom/google/android/music/lockscreen/WaveScene;
.super Ljava/lang/Object;
.source "WaveScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;
    }
.end annotation


# static fields
.field public static final mVerticesData:[F


# instance fields
.field private WAVE_DELAY:J

.field private final mAddFinalWaves:Ljava/lang/Runnable;

.field private final mAddWaveAction:Ljava/lang/Runnable;

.field private mBackground:Lcom/google/android/music/lockscreen/LockBackground;

.field private mContext:Landroid/content/Context;

.field private mCurrentWave:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/lockscreen/DrawableTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerDown:Z

.field private mFinishWaves:Z

.field private mGrabbedState:I

.field public mHeight:I

.field private mIds:[I

.field private mLandScape:Z

.field private mLightWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/lockscreen/DrawableTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCenterX:F

.field private mLockCenterY:F

.field private mLockState:I

.field private final mLockTimerActions:Ljava/lang/Runnable;

.field private mMouseX:F

.field private mMouseY:F

.field private mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

.field private mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

.field private mSnapRadius:I

.field private mSyncHandler:Landroid/os/Handler;

.field mTexCoord:Ljava/nio/FloatBuffer;

.field private mTexCoordData:[F

.field private mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

.field private mUnlockDefaultRadius:I

.field private mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

.field private mUnlockHaloRadius:I

.field private mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

.field private mUnlockRingRadius:I

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWaveCount:I

.field private mWaveTexture:I

.field private mWaveTimerDelay:J

.field private mWavesRunning:Z

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/music/lockscreen/WaveScene;->mVerticesData:[F

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveRenderer;)V
    .registers 12
    .parameter "context"
    .parameter "renderer"

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    .line 56
    iget v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    int-to-long v3, v3

    div-long v3, v7, v3

    iput-wide v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    .line 72
    const/16 v3, 0xb6

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRingRadius:I

    .line 81
    const/4 v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    .line 88
    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_110

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoordData:[F

    .line 93
    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWidth:I

    .line 94
    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mHeight:I

    .line 99
    const/16 v3, 0xaa

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    .line 102
    iput-boolean v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    .line 103
    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I

    .line 104
    iget-wide v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    iput-wide v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    .line 109
    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    .line 110
    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mGrabbedState:I

    .line 117
    new-instance v3, Lcom/google/android/music/lockscreen/WaveScene$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/WaveScene$1;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    .line 136
    new-instance v3, Lcom/google/android/music/lockscreen/WaveScene$2;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/WaveScene$2;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mAddWaveAction:Ljava/lang/Runnable;

    .line 182
    new-instance v3, Lcom/google/android/music/lockscreen/WaveScene$3;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/WaveScene$3;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mAddFinalWaves:Ljava/lang/Runnable;

    .line 214
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    .line 217
    sget-object v3, Lcom/google/android/music/lockscreen/WaveScene;->mVerticesData:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mVertices:Ljava/nio/FloatBuffer;

    .line 219
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mVertices:Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/google/android/music/lockscreen/WaveScene;->mVerticesData:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoordData:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 223
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoord:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoordData:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    new-instance v3, Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/DrawableTexture;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 226
    new-instance v3, Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/DrawableTexture;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 227
    new-instance v3, Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-direct {v3, p0}, Lcom/google/android/music/lockscreen/DrawableTexture;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 228
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    .line 233
    .local v1, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v3

    if-nez v3, :cond_e0

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_104

    .line 234
    :cond_e0
    const/16 v3, 0x14

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    .line 238
    :goto_e4
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 241
    iget v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    int-to-long v3, v3

    div-long v3, v7, v3

    iput-wide v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_ef
    iget v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    if-ge v0, v3, :cond_107

    .line 244
    new-instance v2, Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-direct {v2, p0}, Lcom/google/android/music/lockscreen/DrawableTexture;-><init>(Lcom/google/android/music/lockscreen/WaveScene;)V

    .line 245
    .local v2, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .line 236
    .end local v0           #i:I
    .end local v2           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_104
    iput v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    goto :goto_e4

    .line 249
    .restart local v0       #i:I
    :cond_107
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    .line 250
    return-void

    .line 88
    nop

    :array_110
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/music/lockscreen/WaveScene;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/lockscreen/WaveScene;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mAddFinalWaves:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/lockscreen/WaveScene;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/lockscreen/WaveScene;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/lockscreen/WaveScene;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/lockscreen/WaveScene;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/lockscreen/WaveScene;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFinishWaves:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/music/lockscreen/WaveScene;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWavesRunning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/music/lockscreen/WaveScene;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mAddWaveAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/lockscreen/WaveScene;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/lockscreen/WaveScene;)Lcom/google/android/music/lockscreen/WaveRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/lockscreen/WaveScene;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/lockscreen/WaveScene;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/lockscreen/WaveScene;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/lockscreen/WaveScene;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/lockscreen/WaveScene;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/lockscreen/WaveScene;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/android/music/lockscreen/WaveScene;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    return-wide p1
.end method

.method static synthetic access$914(Lcom/google/android/music/lockscreen/WaveScene;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    return-wide v0
.end method

.method private bindDrawableToTexture(Lcom/google/android/music/lockscreen/DrawableTexture;I)V
    .registers 12
    .parameter "drawable"
    .parameter "DrawableId"

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x0

    .line 491
    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 492
    .local v3, res:Landroid/content/res/Resources;
    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 493
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v4, p1, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 495
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_16
    invoke-static {v4, v5, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 496
    const-string v4, "texImage2D"

    invoke-static {v4}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1e} :catch_22

    .line 505
    :goto_1e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 506
    return-void

    .line 497
    :catch_22
    move-exception v2

    .line 498
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "WaveScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "glError in calling textImage2D for resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    .local v1, bitmap2:Landroid/graphics/Bitmap;
    invoke-static {v8, v7, v1, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 501
    const-string v4, "texImage2D"

    invoke-static {v4}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1e
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    if-eqz v0, :cond_d

    .line 685
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v1, v1, Lcom/google/android/music/lockscreen/WaveRenderer;->mView:Lcom/google/android/music/lockscreen/WaveView;

    invoke-interface {v0, v1, p1}, Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;->onTrigger(Lcom/google/android/music/lockscreen/WaveView;I)V

    .line 687
    :cond_d
    return-void
.end method

.method public static setDefaultNPOTTextureState()V
    .registers 4

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 509
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 511
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 515
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 517
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 519
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 626
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mGrabbedState:I

    if-eq p1, v0, :cond_15

    .line 627
    iput p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mGrabbedState:I

    .line 628
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    if-eqz v0, :cond_15

    .line 629
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v1, v1, Lcom/google/android/music/lockscreen/WaveRenderer;->mView:Lcom/google/android/music/lockscreen/WaveView;

    iget v2, p0, Lcom/google/android/music/lockscreen/WaveScene;->mGrabbedState:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;->onGrabbedStateChange(Lcom/google/android/music/lockscreen/WaveView;I)V

    .line 632
    :cond_15
    return-void
.end method

.method private waveUpdateFrame(FFZ)V
    .registers 39
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "fingerDown"

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    sub-float v3, p1, v3

    float-to-double v0, v3

    move-wide/from16 v24, v0

    .line 299
    .local v24, distX:D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    sub-float v3, p2, v3

    float-to-double v0, v3

    move-wide/from16 v26, v0

    .line 300
    .local v26, distY:D
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v28, v0

    .line 301
    .local v28, dragDistance:I
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v33

    .line 302
    .local v33, touchA:D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    float-to-double v3, v3

    const-wide v9, 0x4067c00000000000L

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    double-to-float v8, v3

    .line 303
    .local v8, ringX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    float-to-double v3, v3

    const-wide v9, 0x4067c00000000000L

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v3, v9

    double-to-float v15, v3

    .line 305
    .local v15, ringY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    packed-switch v3, :pswitch_data_4a6

    .line 450
    .end local v8           #ringX:F
    :goto_4a
    return-void

    .line 308
    .restart local v8       #ringX:F
    :pswitch_4b
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    .line 309
    const/16 v30, 0x0

    .end local v8           #ringX:F
    .local v30, i:I
    :goto_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_7b

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 311
    .local v2, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x0

    const-string v7, "alpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 309
    add-int/lit8 v30, v30, 0x1

    goto :goto_55

    .line 313
    .end local v2           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_83
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 314
    .local v29, drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 315
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 316
    const v3, 0x3dcccccd

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 317
    const v3, 0x3dcccccd

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 318
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    goto :goto_83

    .line 321
    .end local v29           #drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/music/lockscreen/WaveScene;->dispatchTriggerEvent(I)V

    .line 330
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    goto/16 :goto_4a

    .line 334
    .end local v30           #i:I
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v8       #ringX:F
    :pswitch_131
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->WAVE_DELAY:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    goto/16 :goto_4a

    .line 339
    :pswitch_13b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    const/high16 v7, 0x433e

    add-float/2addr v4, v7

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v4, 0x3dcccccd

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v4, 0x3dcccccd

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleX"

    .end local v8           #ringX:F
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 354
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/music/lockscreen/WaveScene;->dispatchTriggerEvent(I)V

    .line 355
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    goto/16 :goto_4a

    .line 359
    .restart local v8       #ringX:F
    :pswitch_1de
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I

    move/from16 v0, v28

    if-le v0, v3, :cond_21f

    .line 360
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mFinishWaves:Z

    .line 361
    if-eqz p3, :cond_218

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v8}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v15}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    goto/16 :goto_4a

    .line 371
    :cond_218
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    goto/16 :goto_4a

    .line 375
    :cond_21f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mWavesRunning:Z

    if-nez v3, :cond_23e

    .line 376
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mWavesRunning:Z

    .line 377
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mFinishWaves:Z

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTimerDelay:J

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    :cond_23e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    goto/16 :goto_4a

    .line 389
    :pswitch_26d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I

    move/from16 v0, v28

    if-le v0, v3, :cond_492

    .line 391
    const/16 v32, 0x0

    .local v32, n:I
    :goto_277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_2e3

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 393
    .restart local v2       #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    const-wide/16 v3, 0x3e8

    add-int/lit8 v7, v32, 0x6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/music/lockscreen/WaveScene;->mCurrentWave:I

    sub-int/2addr v7, v9

    int-to-long v9, v7

    mul-long/2addr v3, v9

    const-wide/16 v9, 0xa

    div-long v5, v3, v9

    .line 394
    .local v5, delay:J
    const-wide/16 v3, 0xc8

    const-string v7, "x"

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 395
    const-wide/16 v10, 0xc8

    const-string v14, "y"

    const/16 v16, 0x1

    move-object v9, v2

    move-wide v12, v5

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 396
    const-wide/16 v17, 0xc8

    const-string v21, "scaleX"

    const v22, 0x3dcccccd

    const/16 v23, 0x1

    move-object/from16 v16, v2

    move-wide/from16 v19, v5

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 397
    const-wide/16 v17, 0xc8

    const-string v21, "scaleY"

    const v22, 0x3dcccccd

    const/16 v23, 0x1

    move-object/from16 v16, v2

    move-wide/from16 v19, v5

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 398
    const-wide/16 v17, 0xc8

    const-string v21, "alpha"

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v16, v2

    move-wide/from16 v19, v5

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 391
    add-int/lit8 v32, v32, 0x1

    goto :goto_277

    .line 401
    .end local v2           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    .end local v5           #delay:J
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "x"

    const/16 v23, 0x0

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 402
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const-string v14, "y"

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "scaleX"

    const v22, 0x3dcccccd

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "scaleY"

    const v22, 0x3dcccccd

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "alpha"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "alpha"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v8}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v3, v15}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v4, 0x3dcccccd

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v4, 0x3dcccccd

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "x"

    const/16 v23, 0x1

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 416
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const-string v14, "y"

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "scaleX"

    const/high16 v22, 0x3f80

    const/16 v23, 0x1

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "scaleY"

    const/high16 v22, 0x3f80

    const/16 v23, 0x1

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "alpha"

    const/high16 v22, 0x3f80

    const/16 v23, 0x1

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "scaleX"

    const/high16 v22, 0x4040

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "scaleY"

    const/high16 v22, 0x4040

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "alpha"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0x0

    const-string v21, "x"

    const/16 v23, 0x0

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 426
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const-string v14, "y"

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "scaleX"

    const/high16 v22, 0x4040

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "scaleY"

    const/high16 v22, 0x4040

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    move-object/from16 v16, v0

    const-wide/16 v17, 0xc8

    const-wide/16 v19, 0xc8

    const-string v21, "alpha"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/music/lockscreen/DrawableTexture;->addAnimTo(JJLjava/lang/String;FZ)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/music/lockscreen/WaveScene;->dispatchTriggerEvent(I)V

    .line 435
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    goto/16 :goto_4a

    .line 437
    .end local v32           #n:I
    :cond_492
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    goto/16 :goto_4a

    .line 443
    :pswitch_499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/WaveScene;->mAddWaveAction:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4a

    .line 305
    :pswitch_data_4a6
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_131
        :pswitch_13b
        :pswitch_1de
        :pswitch_26d
        :pswitch_499
    .end packed-switch
.end method


# virtual methods
.method public getRenderer()Lcom/google/android/music/lockscreen/WaveRenderer;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    return-object v0
.end method

.method public loadTexture()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0xde1

    const/4 v8, 0x0

    .line 455
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    invoke-static {v10, v5, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 457
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    aget v6, v6, v8

    iput v6, v5, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    .line 458
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    iput v6, v5, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    .line 459
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    iput v6, v5, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    .line 460
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTexture:I

    .line 463
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v10, :cond_3a

    .line 464
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mIds:[I

    aget v5, v5, v1

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 465
    invoke-static {}, Lcom/google/android/music/lockscreen/WaveScene;->setDefaultNPOTTextureState()V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 468
    :cond_3a
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v6, 0x7f02024b

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/lockscreen/WaveScene;->bindDrawableToTexture(Lcom/google/android/music/lockscreen/DrawableTexture;I)V

    .line 469
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v6, 0x7f020249

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/lockscreen/WaveScene;->bindDrawableToTexture(Lcom/google/android/music/lockscreen/DrawableTexture;I)V

    .line 470
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    const v6, 0x7f02024a

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/lockscreen/WaveScene;->bindDrawableToTexture(Lcom/google/android/music/lockscreen/DrawableTexture;I)V

    .line 474
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 475
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f02024c

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTexture:I

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 477
    invoke-static {v9, v8, v0, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 478
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 479
    .local v4, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWaveTexture:I

    iput v5, v4, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    goto :goto_6d

    .line 481
    .end local v4           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_7e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v5}, Lcom/google/android/music/lockscreen/LockBackground;->loadTextures()V

    .line 483
    return-void
.end method

.method public onDrawFrame()Z
    .registers 12

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 261
    const/4 v10, 0x0

    .line 264
    .local v10, stillAnimating:Z
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    if-eqz v0, :cond_11

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 266
    .local v6, currentTime:J
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/music/lockscreen/LockBackground;->draw(J)Z

    .line 269
    .end local v6           #currentTime:J
    :cond_11
    iget v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F

    iget v1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F

    iget-boolean v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/music/lockscreen/WaveScene;->waveUpdateFrame(FFZ)V

    .line 270
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->useTextureProgram()V

    .line 271
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 274
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->maPosHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v0, v0, Lcom/google/android/music/lockscreen/WaveRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->maTexHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mTexCoord:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 282
    .local v8, drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    invoke-virtual {v8}, Lcom/google/android/music/lockscreen/DrawableTexture;->onDrawFrame()Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_45

    .line 285
    .end local v8           #drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_57
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 286
    .restart local v8       #drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    invoke-virtual {v8}, Lcom/google/android/music/lockscreen/DrawableTexture;->onDrawFrame()Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_5d

    .line 288
    .end local v8           #drawable:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_6f
    return v10
.end method

.method public onSizeChanged(IIZ)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "landscape"

    .prologue
    const/high16 v2, 0x3f00

    .line 609
    iput p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mWidth:I

    .line 610
    iput p2, p0, Lcom/google/android/music/lockscreen/WaveScene;->mHeight:I

    .line 611
    iput-boolean p3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLandScape:Z

    .line 612
    if-eqz p3, :cond_16

    .line 613
    const v0, 0x3f666666

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    .line 614
    int-to-float v0, p2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    .line 619
    :goto_15
    return-void

    .line 616
    :cond_16
    int-to-float v0, p1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterX:F

    .line 617
    const v0, 0x3dcccccc

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockCenterY:F

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 523
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F

    .line 525
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mHeight:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F

    .line 527
    const/4 v2, 0x0

    .line 528
    .local v2, handled:Z
    packed-switch v0, :pswitch_data_88

    .line 573
    :goto_1a
    return v2

    .line 530
    :pswitch_1b
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    iput-boolean v10, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    .line 532
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/google/android/music/lockscreen/WaveScene;->setGrabbedState(I)V

    .line 534
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v6}, Lcom/google/android/music/lockscreen/DrawableTexture;->x()F

    move-result v6

    sub-float v3, v5, v6

    .line 535
    .local v3, x:F
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v6}, Lcom/google/android/music/lockscreen/DrawableTexture;->y()F

    move-result v6

    sub-float v4, v5, v6

    .line 536
    .local v4, y:F
    float-to-double v5, v3

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 537
    .local v1, dist:F
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    invoke-virtual {v5}, Lcom/google/android/music/lockscreen/DrawableTexture;->width()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gez v5, :cond_58

    .line 538
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    if-ne v5, v10, :cond_58

    .line 539
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    .line 542
    :cond_58
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSnapRadius:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_66

    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_66

    .line 543
    iput v9, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockState:I

    .line 546
    :cond_66
    const/4 v2, 0x1

    .line 547
    goto :goto_1a

    .line 550
    .end local v1           #dist:F
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_68
    const/4 v2, 0x1

    .line 551
    goto :goto_1a

    .line 555
    :pswitch_6a
    iput-boolean v9, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    .line 556
    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mSyncHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    invoke-direct {p0, v9}, Lcom/google/android/music/lockscreen/WaveScene;->setGrabbedState(I)V

    .line 563
    iget v5, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseX:F

    iget v6, p0, Lcom/google/android/music/lockscreen/WaveScene;->mMouseY:F

    iget-boolean v7, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/music/lockscreen/WaveScene;->waveUpdateFrame(FFZ)V

    .line 564
    const/4 v2, 0x1

    .line 565
    goto :goto_1a

    .line 568
    :pswitch_83
    iput-boolean v9, p0, Lcom/google/android/music/lockscreen/WaveScene;->mFingerDown:Z

    .line 569
    const/4 v2, 0x1

    goto :goto_1a

    .line 528
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_6a
        :pswitch_68
        :pswitch_83
    .end packed-switch
.end method

.method public setBackground(Lcom/google/android/music/lockscreen/LockBackground;)V
    .registers 2
    .parameter "background"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    .line 258
    return-void
.end method

.method public setOnTriggerListener(Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveScene;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    .line 641
    return-void
.end method

.method public updateDimensions(II)V
    .registers 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 580
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 581
    .local v1, resources:Landroid/content/res/Resources;
    const v3, 0x7f09005b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRingRadius:I

    .line 582
    const v3, 0x7f09005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefaultRadius:I

    .line 583
    const v3, 0x7f09005d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHaloRadius:I

    .line 593
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRing:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRingRadius:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setRadius(F)V

    .line 594
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefault:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockDefaultRadius:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setRadius(F)V

    .line 595
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHalo:Lcom/google/android/music/lockscreen/DrawableTexture;

    iget v4, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockHaloRadius:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/DrawableTexture;->setRadius(F)V

    .line 596
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/lockscreen/DrawableTexture;

    .line 597
    .local v2, wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    iget v3, p0, Lcom/google/android/music/lockscreen/WaveScene;->mUnlockRingRadius:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setRadius(F)V

    goto :goto_3f

    .line 599
    .end local v2           #wave:Lcom/google/android/music/lockscreen/DrawableTexture;
    :cond_52
    return-void
.end method
