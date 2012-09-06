.class Lcom/google/android/opengl/carousel/Ray;
.super Ljava/lang/Object;
.source "Ray.java"


# static fields
.field public static sDebugRay:Z


# instance fields
.field public mBestTime:F

.field mDirection:Lcom/google/android/opengl/common/Float3;

.field mPosition:Lcom/google/android/opengl/common/Float3;

.field public mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/opengl/carousel/Ray;->sDebugRay:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .registers 3
    .parameter "renderer"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    .line 21
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 30
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 31
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 32
    return-void
.end method


# virtual methods
.method public makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z
    .registers 20
    .parameter "camera"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v12, v12, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v12, v12

    div-float v10, p2, v12

    .line 40
    .local v10, u:F
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v13, v13

    div-float v13, p3, v13

    sub-float v11, v12, v13

    .line 42
    .local v11, v:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/opengl/carousel/Ray;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v12, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 43
    .local v1, aspect:F
    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 44
    .local v5, halfFovy:F
    const-wide/high16 v12, 0x4000

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v9, v12

    .line 45
    .local v9, tanfov2:F
    new-instance v2, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    invoke-direct {v2, v12}, Lcom/google/android/opengl/common/Float3;-><init>([F)V

    .line 46
    .local v2, dir:Lcom/google/android/opengl/common/Float3;
    new-instance v12, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    invoke-direct {v12, v13}, Lcom/google/android/opengl/common/Float3;-><init>([F)V

    invoke-virtual {v2, v12}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 47
    invoke-virtual {v2}, Lcom/google/android/opengl/common/Float3;->normalize()V

    .line 49
    new-instance v12, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    invoke-direct {v12, v13}, Lcom/google/android/opengl/common/Float3;-><init>([F)V

    invoke-virtual {v2, v12}, Lcom/google/android/opengl/common/Float3;->cross(Lcom/google/android/opengl/common/Float3;)Lcom/google/android/opengl/common/Float3;

    move-result-object v3

    .line 50
    .local v3, du:Lcom/google/android/opengl/common/Float3;
    invoke-virtual {v3}, Lcom/google/android/opengl/common/Float3;->normalize()V

    .line 51
    invoke-virtual {v3, v9}, Lcom/google/android/opengl/common/Float3;->times(F)V

    .line 53
    invoke-virtual {v3, v2}, Lcom/google/android/opengl/common/Float3;->cross(Lcom/google/android/opengl/common/Float3;)Lcom/google/android/opengl/common/Float3;

    move-result-object v4

    .line 54
    .local v4, dv:Lcom/google/android/opengl/common/Float3;
    invoke-virtual {v4}, Lcom/google/android/opengl/common/Float3;->normalize()V

    .line 55
    invoke-virtual {v4, v9}, Lcom/google/android/opengl/common/Float3;->times(F)V

    .line 57
    invoke-virtual {v3, v1}, Lcom/google/android/opengl/common/Float3;->times(F)V

    .line 59
    new-instance v6, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v6, v2}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 60
    .local v6, lowerLeftRay:Lcom/google/android/opengl/common/Float3;
    const/high16 v12, 0x3f00

    invoke-static {v3, v12}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 61
    const/high16 v12, 0x3f00

    invoke-static {v4, v12}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 63
    new-instance v8, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    invoke-direct {v8, v12}, Lcom/google/android/opengl/common/Float3;-><init>([F)V

    .line 64
    .local v8, rayPoint:Lcom/google/android/opengl/common/Float3;
    new-instance v7, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v7, v6}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 65
    .local v7, rayDir:Lcom/google/android/opengl/common/Float3;
    invoke-static {v3, v10}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 66
    invoke-static {v4, v11}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 67
    invoke-virtual {v7}, Lcom/google/android/opengl/common/Float3;->normalize()V

    .line 69
    sget-boolean v12, Lcom/google/android/opengl/carousel/Ray;->sDebugRay:Z

    if-eqz v12, :cond_d4

    .line 70
    const-string v12, "Ray"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ray position : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v12, "Ray"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ray direction:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_d4
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    .line 75
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    .line 77
    const/4 v12, 0x1

    return v12
.end method

.method public rayCylinderIntersect(Lcom/google/android/opengl/carousel/Cylinder;)Z
    .registers 16
    .parameter "cylinder"

    .prologue
    const/4 v8, 0x1

    const/high16 v13, 0x4000

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 146
    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v9, v9, Lcom/google/android/opengl/common/Float3;->x:F

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->z:F

    iget-object v11, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v11, v11, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 147
    .local v0, A:F
    const v9, 0x358637bd

    cmpg-float v9, v0, v9

    if-gez v9, :cond_21

    .line 176
    :cond_20
    :goto_20
    return v7

    .line 151
    :cond_21
    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v9, v9, Lcom/google/android/opengl/common/Float3;->x:F

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->z:F

    iget-object v11, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v11, v11, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    mul-float v1, v13, v9

    .line 152
    .local v1, B:F
    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v9, v9, Lcom/google/android/opengl/common/Float3;->x:F

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v10, v10, Lcom/google/android/opengl/common/Float3;->z:F

    iget-object v11, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget v11, v11, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    iget v11, p1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    mul-float/2addr v10, v11

    sub-float v2, v9, v10

    .line 154
    .local v2, C:F
    mul-float v9, v1, v1

    const/high16 v10, 0x4080

    mul-float/2addr v10, v0

    mul-float/2addr v10, v2

    sub-float v4, v9, v10

    .line 156
    .local v4, disc:F
    cmpg-float v9, v4, v12

    if-ltz v9, :cond_20

    .line 158
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    .line 159
    mul-float v3, v13, v0

    .line 162
    .local v3, denom:F
    neg-float v9, v1

    sub-float/2addr v9, v4

    div-float v5, v9, v3

    .line 163
    .local v5, t1:F
    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v9, v9, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v9, v9, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7f

    cmpl-float v9, v5, v12

    if-lez v9, :cond_7f

    iget v9, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_7f

    .line 165
    iput v5, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    move v7, v8

    .line 166
    goto :goto_20

    .line 170
    :cond_7f
    neg-float v9, v1

    add-float/2addr v9, v4

    div-float v6, v9, v3

    .line 171
    .local v6, t2:F
    iget-object v9, p0, Lcom/google/android/opengl/carousel/Ray;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v9, v9, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v9, v9, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    cmpl-float v9, v6, v12

    if-lez v9, :cond_20

    iget v9, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_20

    .line 173
    iput v6, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    move v7, v8

    .line 174
    goto :goto_20
.end method

.method public rayPlaneIntersect(Lcom/google/android/opengl/carousel/Plane;)Z
    .registers 7
    .parameter "plane"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget-object v3, p1, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/common/Float3;

    invoke-static {v2, v3}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v0

    .line 128
    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x358637bd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_30

    .line 129
    iget v2, p1, Lcom/google/android/opengl/carousel/Plane;->mConstant:F

    iget-object v3, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    iget-object v4, p1, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/common/Float3;

    invoke-static {v3, v4}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v3

    add-float/2addr v2, v3

    neg-float v2, v2

    div-float v1, v2, v0

    .line 130
    .local v1, t:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_30

    iget v2, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_30

    .line 131
    iput v1, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 132
    const/4 v2, 0x1

    .line 135
    .end local v1           #t:F
    :goto_2f
    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public rayTriangleIntersect(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)Z
    .registers 18
    .parameter "p0"
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 85
    const/4 v9, 0x0

    .line 87
    .local v9, tmin:F
    new-instance v3, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 88
    .local v3, e1:Lcom/google/android/opengl/common/Float3;
    invoke-virtual {v3, p1}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 89
    new-instance v4, Lcom/google/android/opengl/common/Float3;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 90
    .local v4, e2:Lcom/google/android/opengl/common/Float3;
    invoke-virtual {v4, p1}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 92
    iget-object v12, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    invoke-virtual {v12, v4}, Lcom/google/android/opengl/common/Float3;->cross(Lcom/google/android/opengl/common/Float3;)Lcom/google/android/opengl/common/Float3;

    move-result-object v6

    .line 93
    .local v6, s1:Lcom/google/android/opengl/common/Float3;
    invoke-static {v6, v3}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v2

    .line 95
    .local v2, div:F
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-nez v12, :cond_26

    .line 96
    const/4 v12, 0x0

    .line 119
    :goto_25
    return v12

    .line 98
    :cond_26
    new-instance v1, Lcom/google/android/opengl/common/Float3;

    iget-object v12, p0, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    invoke-direct {v1, v12}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 99
    .local v1, d:Lcom/google/android/opengl/common/Float3;
    invoke-virtual {v1, p1}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 101
    const/high16 v12, 0x3f80

    div-float v5, v12, v2

    .line 103
    .local v5, invDiv:F
    invoke-static {v1, v6}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v12

    mul-float v10, v12, v5

    .line 104
    .local v10, u:F
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_45

    const/high16 v12, 0x3f80

    cmpl-float v12, v10, v12

    if-lez v12, :cond_47

    .line 105
    :cond_45
    const/4 v12, 0x0

    goto :goto_25

    .line 107
    :cond_47
    invoke-virtual {v1, v3}, Lcom/google/android/opengl/common/Float3;->cross(Lcom/google/android/opengl/common/Float3;)Lcom/google/android/opengl/common/Float3;

    move-result-object v7

    .line 108
    .local v7, s2:Lcom/google/android/opengl/common/Float3;
    iget-object v12, p0, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    invoke-static {v12, v7}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v12

    mul-float v11, v12, v5

    .line 110
    .local v11, v:F
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-ltz v12, :cond_60

    add-float v12, v10, v11

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-lez v12, :cond_62

    .line 111
    :cond_60
    const/4 v12, 0x0

    goto :goto_25

    .line 113
    :cond_62
    invoke-static {v4, v7}, Lcom/google/android/opengl/common/Float3;->dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F

    move-result v12

    mul-float v8, v12, v5

    .line 114
    .local v8, t:F
    cmpg-float v12, v8, v9

    if-ltz v12, :cond_72

    iget v12, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    cmpl-float v12, v8, v12

    if-lez v12, :cond_74

    .line 115
    :cond_72
    const/4 v12, 0x0

    goto :goto_25

    .line 117
    :cond_74
    iput v8, p0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 119
    const/4 v12, 0x1

    goto :goto_25
.end method
