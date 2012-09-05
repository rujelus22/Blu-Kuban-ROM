.class public Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMetaSmoothFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    }
.end annotation


# instance fields
.field private mLastPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;",
            ">;"
        }
    .end annotation
.end field

.field final mMaximumGap:J

.field final mMaximumPredictionGap:J

.field final mSmoothingRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const-wide/16 v1, 0x12c

    .line 140
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mSmoothingRate:F

    .line 41
    iput-wide v1, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mMaximumGap:J

    .line 42
    iput-wide v1, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mMaximumPredictionGap:J

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    .line 141
    return-void
.end method

.method private getCurrentPositions(Lcom/google/android/filterpacks/facedetect/FaceMeta;)Ljava/util/Vector;
    .registers 20
    .parameter "face"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filterpacks/facedetect/FaceMeta;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 67
    .local v10, retFaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v7

    .line 68
    .local v7, num_face:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 69
    .local v11, t:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_e
    if-ge v5, v7, :cond_128

    .line 70
    new-instance v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;-><init>(Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;)V

    .line 71
    .local v8, p:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    .line 73
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    .line 75
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    .line 78
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    .line 79
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    .line 81
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    .line 84
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    move-result v14

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    .line 86
    iput-wide v11, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    .line 87
    const/4 v14, 0x0

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    .line 88
    const/4 v14, 0x0

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11a

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    .line 91
    .local v13, v:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    iget v15, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    sub-float/2addr v14, v15

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    iget v0, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float v2, v14, v15

    .line 93
    .local v2, dx:F
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    iget v15, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    sub-float/2addr v14, v15

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    iget v0, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float v3, v14, v15

    .line 95
    .local v3, dy:F
    iget-wide v14, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    sub-long v14, v11, v14

    long-to-float v14, v14

    const/high16 v15, 0x447a

    div-float v1, v14, v15

    .line 96
    .local v1, dt:F
    iget v14, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    div-float v15, v2, v1

    iget v0, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f00

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    .line 97
    iget v14, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    div-float v15, v3, v1

    iget v0, v13, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f00

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_y:F

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v1           #dt:F
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v13           #v:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :goto_113
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e

    .line 101
    :cond_11a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    iget v15, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_113

    .line 105
    .end local v8           #p:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :cond_128
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v9, removeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_139
    :goto_139
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    .line 108
    .local v4, f:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget-wide v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    const-wide/16 v16, 0x12c

    sub-long v16, v11, v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_159

    iget v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_139

    .line 111
    :cond_159
    iget-wide v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    cmp-long v14, v14, v11

    if-eqz v14, :cond_139

    iget-wide v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    const-wide/16 v16, 0x12c

    sub-long v16, v11, v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_139

    .line 112
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->clone()Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    move-result-object v8

    .line 113
    .restart local v8       #p:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    iget v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    const/high16 v15, 0x447a

    div-float/2addr v14, v15

    iget-wide v15, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    sub-long v15, v11, v15

    long-to-float v15, v15

    mul-float v2, v14, v15

    .line 114
    .restart local v2       #dx:F
    iget v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->speed_x:F

    const/high16 v15, 0x447a

    div-float/2addr v14, v15

    iget-wide v15, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->last_seen:J

    sub-long v15, v11, v15

    long-to-float v15, v15

    mul-float v3, v14, v15

    .line 115
    .restart local v3       #dy:F
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    .line 116
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    .line 117
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    .line 118
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    .line 119
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    .line 120
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    .line 121
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    .line 122
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    .line 123
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    .line 124
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    .line 125
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    .line 126
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    .line 127
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    add-float/2addr v14, v2

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    .line 128
    iget v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    add-float/2addr v14, v3

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    .line 129
    iget v14, v4, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    iput v14, v8, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    .line 130
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 134
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #f:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    .end local v8           #p:Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    :cond_1d4
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v5           #i:I
    :goto_1d8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1ec

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 135
    .local v5, i:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->mLastPositions:Ljava/util/HashMap;

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d8

    .line 137
    .end local v5           #i:Ljava/lang/Integer;
    :cond_1ec
    return-object v10
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 14
    .parameter "context"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    .line 158
    .local v2, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v9, "faces"

    invoke-virtual {p0, v9}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 161
    .local v1, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 162
    .local v0, face:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-direct {p0, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->getCurrentPositions(Lcom/google/android/filterpacks/facedetect/FaceMeta;)Ljava/util/Vector;

    move-result-object v8

    .line 163
    .local v8, vnewfaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;>;"
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v4, v9, [Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;

    .line 164
    .local v4, newfaces:[Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;
    invoke-virtual {v8, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    const-class v9, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    array-length v10, v4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v7

    .line 168
    .local v7, outputFormat:Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 169
    .local v6, output:Landroid/filterfw/core/Frame;
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 170
    .local v5, outfaces:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    invoke-virtual {v5}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v9

    if-ge v3, v9, :cond_a2

    .line 171
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->id:I

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setId(II)V

    .line 172
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x0:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX0(IF)V

    .line 173
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y0:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY0(IF)V

    .line 174
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_x1:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX1(IF)V

    .line 175
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->face_y1:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY1(IF)V

    .line 176
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_x:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeX(IF)V

    .line 177
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->left_eye_y:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeY(IF)V

    .line 178
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_x:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeX(IF)V

    .line 179
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->right_eye_y:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeY(IF)V

    .line 180
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_x:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthX(IF)V

    .line 181
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->mouth_y:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthY(IF)V

    .line 182
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_x:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipX(IF)V

    .line 183
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->upper_lip_y:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipY(IF)V

    .line 184
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_x:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipX(IF)V

    .line 185
    aget-object v9, v4, v3

    iget v9, v9, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter$FacePos;->lower_lip_y:F

    invoke-virtual {v5, v3, v9}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipY(IF)V

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 188
    :cond_a2
    const-string v9, "faces"

    invoke-virtual {p0, v9, v6}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 191
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 192
    return-void
.end method

.method public setupPorts()V
    .registers 4

    .prologue
    .line 146
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 149
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 150
    const-string v1, "faces"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaSmoothFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 151
    return-void
.end method
