.class public Lcom/google/android/media/effect/effects/VCOEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "VCOEffect.java"


# static fields
.field private static final FACE_DETECTOR_MAX_SIZE:I = 0x140

.field private static final mVCOGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 3;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 25.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 19;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 11;\n}\n\n@filter FrameBranch branch2 {\n  outputs = 2;\n}\n\n@filter LipDiffer lipDiffer {\n}\n\n@filter FaceZoomer faceZoomer {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]         => branch1[in];\n@connect branch1[out0]         => toPackedGray[image];\n@connect branch1[out1]         => lipDiffer[image];\n@connect branch1[out2]         => faceZoomer[image];\n@connect toPackedGray[image]   => faceTracker[image];\n@connect faceTracker[faces]    => branch2[in];\n@connect branch2[out0]         => lipDiffer[faces];\n@connect branch2[out1]         => faceZoomer[faces];\n@connect lipDiffer[diffs]      => faceZoomer[lips];\n@connect faceZoomer[image]     => trgTex[frame];\n"


# instance fields
.field private mFirstTime:Z

.field private mInputHeight:I

.field private mInputWidth:I


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    .line 93
    const-string v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 3;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 25.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 19;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 11;\n}\n\n@filter FrameBranch branch2 {\n  outputs = 2;\n}\n\n@filter LipDiffer lipDiffer {\n}\n\n@filter FaceZoomer faceZoomer {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]         => branch1[in];\n@connect branch1[out0]         => toPackedGray[image];\n@connect branch1[out1]         => lipDiffer[image];\n@connect branch1[out2]         => faceZoomer[image];\n@connect toPackedGray[image]   => faceTracker[image];\n@connect faceTracker[faces]    => branch2[in];\n@connect branch2[out0]         => lipDiffer[faces];\n@connect branch2[out1]         => faceZoomer[faces];\n@connect lipDiffer[diffs]      => faceZoomer[lips];\n@connect faceZoomer[image]     => trgTex[frame];\n"

    const-string v4, "srcTex"

    const-string v5, "trgTex"

    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    .line 36
    iput v7, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    .line 37
    iput v7, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    .line 94
    return-void
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

    .line 98
    iget-boolean v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    if-eqz v3, :cond_3e

    .line 102
    if-le p2, p3, :cond_35

    .line 103
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 104
    .local v1, fdWidth:I
    mul-int v3, v1, p3

    div-int v0, v3, p2

    .line 110
    .local v0, fdHeight:I
    :goto_10
    iget-object v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v4, "toPackedGray"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 111
    .local v2, grayFilter:Landroid/filterfw/core/Filter;
    const-string v3, "owidth"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v3, "oheight"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    .line 114
    iput p2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    .line 115
    iput p3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    .line 120
    .end local v0           #fdHeight:I
    .end local v1           #fdWidth:I
    .end local v2           #grayFilter:Landroid/filterfw/core/Filter;
    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/effect/FilterGraphEffect;->apply(IIII)V

    .line 121
    return-void

    .line 107
    :cond_35
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    .restart local v0       #fdHeight:I
    mul-int v3, v0, p2

    div-int v1, v3, p3

    .restart local v1       #fdWidth:I
    goto :goto_10

    .line 117
    .end local v0           #fdHeight:I
    .end local v1           #fdWidth:I
    :cond_3e
    iget v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    if-ne p2, v3, :cond_46

    iget v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    if-eq p3, v3, :cond_31

    .line 118
    :cond_46
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "VCOEffect can\'t change input size!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "parameterKey"
    .parameter "value"

    .prologue
    .line 125
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 126
    iget-object v2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v3, "srcTex"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 127
    .local v0, srcTexFilter:Landroid/filterfw/core/Filter;
    const-string v2, "timestamp"

    invoke-virtual {v0, v2, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .end local v0           #srcTexFilter:Landroid/filterfw/core/Filter;
    :cond_15
    const-string v2, "maxOutputSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 130
    iget-object v2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v3, "faceZoomer"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 131
    .local v1, zoomerFilter:Landroid/filterfw/core/Filter;
    const-string v2, "maxOutputSize"

    invoke-virtual {v1, v2, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .end local v1           #zoomerFilter:Landroid/filterfw/core/Filter;
    :cond_2a
    return-void
.end method
