.class public Lcom/google/android/media/effect/effects/FaceTanningEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "FaceTanningEffect.java"


# static fields
.field private static final mFaceTanningGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.android.effects;\n@import com.google.android.filterpacks.facedetect;\n\n@setting autoBranch = \"synced\";\n\n@filter GLTextureSource input {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = false;\n}\n\n@filter FaceTanFilter faceTanner {\n}\n\n@filter MultiFaceDetectorFilter faceDetector {\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numChannelsDetector = 3;\n}\n\n@filter ToPackedGrayFilter toGrayScale {\n}\n\n@filter CallbackFilter frameListener {\n}\n\n@connect input[frame]  => toGrayScale[image];\n@connect toGrayScale[image] => faceDetector[image];\n@connect input[frame]  => faceTanner[image];\n@connect faceDetector[faces] => faceTanner[faces];\n@connect faceTanner[image] => frameListener[frame];\n"


# instance fields
.field private mBlendFunction:Landroid/filterfw/core/FilterFunction;

.field private mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mSmoothFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "name"

    .prologue
    .line 85
    const-string v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.android.effects;\n@import com.google.android.filterpacks.facedetect;\n\n@setting autoBranch = \"synced\";\n\n@filter GLTextureSource input {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = false;\n}\n\n@filter FaceTanFilter faceTanner {\n}\n\n@filter MultiFaceDetectorFilter faceDetector {\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numChannelsDetector = 3;\n}\n\n@filter ToPackedGrayFilter toGrayScale {\n}\n\n@filter CallbackFilter frameListener {\n}\n\n@connect input[frame]  => toGrayScale[image];\n@connect toGrayScale[image] => faceDetector[image];\n@connect input[frame]  => faceTanner[image];\n@connect faceDetector[faces] => faceTanner[faces];\n@connect faceTanner[image] => frameListener[frame];\n"

    const-string v4, "input"

    const-string v5, "output"

    const-class v6, Landroid/filterfw/core/SimpleScheduler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    .line 163
    new-instance v0, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;

    invoke-direct {v0, p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;-><init>(Lcom/google/android/media/effect/effects/FaceTanningEffect;)V

    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 87
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v1, "frameListener"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v7

    .line 88
    .local v7, listenerFilter:Landroid/filterfw/core/Filter;
    const-string v0, "listener"

    iget-object v1, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->createBlendFunction()V

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/media/effect/effects/FaceTanningEffect;Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    return-object p1
.end method

.method private createBlendFunction()V
    .registers 7

    .prologue
    .line 94
    const-class v2, Landroid/filterpacks/imageproc/BlendFilter;

    .line 95
    .local v2, filterClass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, filterName:Ljava/lang/String;
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    move-result-object v0

    .line 97
    .local v0, factory:Landroid/filterfw/core/FilterFactory;
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 98
    .local v1, filter:Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->init()V

    .line 100
    new-instance v4, Landroid/filterfw/core/FilterFunction;

    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    iput-object v4, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    .line 101
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .registers 15
    .parameter "inputTexId"
    .parameter "width"
    .parameter "height"
    .parameter "outputTexId"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->beginGLEffect()V

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 115
    .local v2, inputFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 117
    .local v1, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2f

    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_62

    .line 121
    :cond_2f
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    if-eqz v6, :cond_38

    .line 122
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 125
    :cond_38
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v7, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mInputName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v5

    .line 126
    .local v5, src:Landroid/filterfw/core/Filter;
    if-eqz v5, :cond_95

    .line 127
    const-string v6, "texId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v6, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v6, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :try_start_5d
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_62} :catch_9d

    .line 140
    .end local v5           #src:Landroid/filterfw/core/Filter;
    :cond_62
    invoke-virtual {p0, p4, p2, p3}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 142
    .local v3, outputFrame:Landroid/filterfw/core/Frame;
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    if-eqz v6, :cond_a6

    .line 143
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "left"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    const-string v9, "right"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 145
    .local v4, resultFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v3, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 146
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 152
    .end local v4           #resultFrame:Landroid/filterfw/core/Frame;
    :goto_8b
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 153
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->endGLEffect()V

    .line 155
    return-void

    .line 131
    .end local v3           #outputFrame:Landroid/filterfw/core/Frame;
    .restart local v5       #src:Landroid/filterfw/core/Filter;
    :cond_95
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to extract texture source in graph."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :catch_9d
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Internal error applying effect: "

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 149
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v5           #src:Landroid/filterfw/core/Filter;
    .restart local v3       #outputFrame:Landroid/filterfw/core/Frame;
    :cond_a6
    invoke-virtual {v3, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto :goto_8b
.end method

.method public release()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/media/effect/FilterGraphEffect;->release()V

    .line 160
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 161
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "parameterKey"
    .parameter "value"

    .prologue
    .line 105
    const-string v0, "blend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    :cond_d
    return-void
.end method
