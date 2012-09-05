.class public Lcom/google/android/media/effect/effects/FaceTrackingEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "FaceTrackingEffect.java"


# static fields
.field private static final FACE_DETECTOR_MAX_SIZE:I = 0x140

.field private static final mFaceTrackingGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 2;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 9;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 15;\n}\n\n@filter CallbackFilter faceListener {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]           => branch1[in];\n@connect branch1[out0]           => toPackedGray[image];\n@connect toPackedGray[image]     => faceTracker[image];\n@connect faceTracker[faces]      => faceListener[frame];\n@connect branch1[out1]           => trgTex[frame];\n"


# instance fields
.field private mEffectListener:Landroid/media/effect/EffectUpdateListener;

.field private mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mFirstTime:Z

.field private mInputHeight:I

.field private mInputWidth:I


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 93
    const-string v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 2;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 9;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 15;\n}\n\n@filter CallbackFilter faceListener {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]           => branch1[in];\n@connect branch1[out0]           => toPackedGray[image];\n@connect toPackedGray[image]     => faceTracker[image];\n@connect faceTracker[faces]      => faceListener[frame];\n@connect branch1[out1]           => trgTex[frame];\n"

    const-string v4, "srcTex"

    const-string v5, "trgTex"

    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    .line 45
    iput v8, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    .line 46
    iput v8, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    .line 134
    new-instance v0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;

    invoke-direct {v0, p0}, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;-><init>(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)V

    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 94
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v1, "faceListener"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v7

    .line 95
    .local v7, listenerFilter:Landroid/filterfw/core/Filter;
    const-string v0, "listener"

    iget-object v1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    return-object v0
.end method


# virtual methods
.method public apply(IIII)V
    .registers 10
    .parameter "inputTexId"
    .parameter "width"
    .parameter "height"
    .parameter "outputTexId"

    .prologue
    const/16 v4, 0x140

    .line 100
    iget-boolean v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    if-eqz v3, :cond_3e

    .line 104
    if-le p2, p3, :cond_35

    .line 105
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    .local v1, fdWidth:I
    mul-int v3, v1, p3

    div-int v0, v3, p2

    .line 112
    .local v0, fdHeight:I
    :goto_10
    iget-object v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v4, "toPackedGray"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 113
    .local v2, grayFilter:Landroid/filterfw/core/Filter;
    const-string v3, "owidth"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v3, "oheight"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    .line 116
    iput p2, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    .line 117
    iput p3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    .line 122
    .end local v0           #fdHeight:I
    .end local v1           #fdWidth:I
    .end local v2           #grayFilter:Landroid/filterfw/core/Filter;
    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/effect/FilterGraphEffect;->apply(IIII)V

    .line 123
    return-void

    .line 109
    :cond_35
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    .restart local v0       #fdHeight:I
    mul-int v3, v0, p2

    div-int v1, v3, p3

    .restart local v1       #fdWidth:I
    goto :goto_10

    .line 119
    .end local v0           #fdHeight:I
    .end local v1           #fdWidth:I
    :cond_3e
    iget v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    if-ne p2, v3, :cond_46

    iget v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    if-eq p3, v3, :cond_31

    .line 120
    :cond_46
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "FaceTrackingEffect can\'t change input size!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "parameterKey"
    .parameter "value"

    .prologue
    .line 127
    return-void
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    .line 132
    return-void
.end method
