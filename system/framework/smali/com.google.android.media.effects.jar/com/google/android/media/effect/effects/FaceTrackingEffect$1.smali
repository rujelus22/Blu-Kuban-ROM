.class Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;
.super Ljava/lang/Object;
.source "FaceTrackingEffect.java"

# interfaces
.implements Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/media/effect/effects/FaceTrackingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;


# direct methods
.method constructor <init>(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .registers 16
    .parameter "filter"
    .parameter "frame"
    .parameter "userData"

    .prologue
    const/high16 v11, 0x44fa

    const/high16 v10, 0x3f00

    .line 138
    const/16 v3, 0x7d0

    .line 139
    .local v3, pixelRange:I
    iget-object v4, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #getter for: Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;
    invoke-static {v4}, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->access$000(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object v4

    if-eqz v4, :cond_b9

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, facedata:[Landroid/hardware/Camera$Face;
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 142
    .local v1, faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v4

    new-array v0, v4, [Landroid/hardware/Camera$Face;

    .line 143
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v4

    if-ge v2, v4, :cond_ae

    .line 144
    new-instance v4, Landroid/hardware/Camera$Face;

    invoke-direct {v4}, Landroid/hardware/Camera$Face;-><init>()V

    aput-object v4, v0, v2

    .line 145
    aget-object v4, v0, v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v6

    sub-float/2addr v6, v10

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v7

    sub-float/2addr v7, v10

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v8

    sub-float/2addr v8, v10

    mul-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v9

    sub-float/2addr v9, v10

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v4, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 150
    aget-object v4, v0, v2

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/Camera$Face;->id:I

    .line 151
    aget-object v4, v0, v2

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getConfidence(I)F

    move-result v5

    const/high16 v6, 0x42c6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/hardware/Camera$Face;->score:I

    .line 152
    aget-object v4, v0, v2

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v6

    sub-float/2addr v6, v10

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v7

    sub-float/2addr v7, v10

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 155
    aget-object v4, v0, v2

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v6

    sub-float/2addr v6, v10

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v7

    sub-float/2addr v7, v10

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 158
    aget-object v4, v0, v2

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v6

    sub-float/2addr v6, v10

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v7

    sub-float/2addr v7, v10

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1c

    .line 162
    :cond_ae
    iget-object v4, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #getter for: Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;
    invoke-static {v4}, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->access$000(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    invoke-interface {v4, v5, v0}, Landroid/media/effect/EffectUpdateListener;->onEffectUpdated(Landroid/media/effect/Effect;Ljava/lang/Object;)V

    .line 164
    .end local v0           #facedata:[Landroid/hardware/Camera$Face;
    .end local v1           #faces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v2           #i:I
    :cond_b9
    return-void
.end method
