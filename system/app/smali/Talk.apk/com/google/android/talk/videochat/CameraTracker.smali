.class public Lcom/google/android/talk/videochat/CameraTracker;
.super Ljava/lang/Object;
.source "CameraTracker.java"


# instance fields
.field private mCameraIdList:[I

.field private mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

.field private mNumAvailableCameras:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CameraTracker;->inspectCameras(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private inspectCameras(Landroid/content/Context;)V
    .registers 25
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "gtalk_vc_force_camera_ids"

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, cameraIDOverride:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "gtalk_vc_force_camera_dimensions"

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, cameraSizesOverride:Ljava/lang/String;
    if-eqz v4, :cond_cd

    .line 66
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, ids:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    if-nez v20, :cond_5e

    .line 68
    const-string v20, "talk"

    const-string v21, "Camera override empty, disabling"

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v14           #ids:[Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    if-eqz v20, :cond_5d

    if-eqz v6, :cond_5d

    .line 124
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, dimensions:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_14a

    .line 126
    const-string v20, "talk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Non-multiple of 2 length in gtalk_vc_force_camera_dimensions "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v8           #dimensions:[Ljava/lang/String;
    :cond_5d
    return-void

    .line 70
    .restart local v14       #ids:[Ljava/lang/String;
    :cond_5e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 71
    array-length v7, v14

    .line 72
    .local v7, count:I
    new-array v0, v7, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    .line 73
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_76
    move/from16 v0, v16

    if-ge v12, v0, :cond_2a

    aget-object v15, v3, v12

    .line 75
    .local v15, idstring:Ljava/lang/String;
    :try_start_7c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 76
    .local v13, id:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_a2

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v21, v0

    aput v13, v20, v21

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_a2} :catch_a5

    .line 73
    .end local v13           #id:I
    :cond_a2
    :goto_a2
    add-int/lit8 v12, v12, 0x1

    goto :goto_76

    .line 80
    :catch_a5
    move-exception v9

    .line 81
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-string v20, "talk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bad id "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 86
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v12           #i$:I
    .end local v14           #ids:[Ljava/lang/String;
    .end local v15           #idstring:Ljava/lang/String;
    .end local v16           #len$:I
    :cond_cd
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 89
    .local v5, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    .line 90
    .restart local v7       #count:I
    new-array v0, v7, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    .line 91
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 93
    const/4 v10, 0x0

    .local v10, facing:I
    :goto_e9
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v10, v0, :cond_2a

    .line 94
    const/4 v11, 0x0

    .local v11, i:I
    :goto_f0
    if-ge v11, v7, :cond_147

    .line 95
    invoke-static {v11, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 96
    const/16 v17, 0x0

    .line 97
    .local v17, matched:Z
    packed-switch v10, :pswitch_data_1b8

    .line 109
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10e

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-eqz v20, :cond_10e

    .line 111
    const/16 v17, 0x1

    .line 116
    :cond_10e
    :goto_10e
    if-eqz v17, :cond_12c

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v21, v0

    aput v11, v20, v21

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 94
    :cond_12c
    add-int/lit8 v11, v11, 0x1

    goto :goto_f0

    .line 99
    :pswitch_12f
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10e

    .line 100
    const/16 v17, 0x1

    goto :goto_10e

    .line 104
    :pswitch_13e
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-nez v20, :cond_10e

    .line 105
    const/16 v17, 0x1

    goto :goto_10e

    .line 93
    .end local v17           #matched:Z
    :cond_147
    add-int/lit8 v10, v10, 0x1

    goto :goto_e9

    .line 130
    .end local v5           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .end local v7           #count:I
    .end local v10           #facing:I
    .end local v11           #i:I
    .restart local v8       #dimensions:[Ljava/lang/String;
    :cond_14a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    array-length v0, v8

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 131
    .local v19, usefulOverrides:I
    if-lez v19, :cond_5d

    .line 132
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/videochat/Size;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    .line 133
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_168
    move/from16 v0, v19

    if-ge v11, v0, :cond_5d

    .line 134
    const/16 v18, 0x0

    .line 136
    .local v18, s:Lcom/google/android/videochat/Size;
    :try_start_16e
    new-instance v18, Lcom/google/android/videochat/Size;

    .end local v18           #s:Lcom/google/android/videochat/Size;
    mul-int/lit8 v20, v11, 0x2

    aget-object v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    mul-int/lit8 v21, v11, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-object v21, v8, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/Size;-><init>(II)V
    :try_end_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_16e .. :try_end_18b} :catch_1b4

    .line 141
    .restart local v18       #s:Lcom/google/android/videochat/Size;
    :goto_18b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/videochat/Size;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a7

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/videochat/Size;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a9

    .line 142
    :cond_1a7
    const/16 v18, 0x0

    .line 144
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    move-object/from16 v20, v0

    aput-object v18, v20, v11

    .line 133
    add-int/lit8 v11, v11, 0x1

    goto :goto_168

    .line 138
    .end local v18           #s:Lcom/google/android/videochat/Size;
    :catch_1b4
    move-exception v9

    .line 139
    .restart local v9       #ex:Ljava/lang/NumberFormatException;
    const/16 v18, 0x0

    .restart local v18       #s:Lcom/google/android/videochat/Size;
    goto :goto_18b

    .line 97
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_13e
    .end packed-switch
.end method


# virtual methods
.method public firstCamera()I
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNumAvailableCameras()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    return v0
.end method

.method public getOverrideSizeForCamera(I)Lcom/google/android/videochat/Size;
    .registers 3
    .parameter "id"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    array-length v0, v0

    if-lt p1, v0, :cond_b

    .line 45
    :cond_9
    const/4 v0, 0x0

    .line 47
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public nextCamera(I)I
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 25
    const/4 v0, -0x1

    .line 26
    .local v0, currIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget v3, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    if-ge v1, v3, :cond_e

    .line 27
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_11

    .line 28
    move v0, v1

    .line 32
    :cond_e
    if-ne v0, v2, :cond_14

    .line 40
    :goto_10
    return v2

    .line 26
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 36
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 37
    iget v2, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    if-ne v0, v2, :cond_1b

    .line 38
    const/4 v0, 0x0

    .line 40
    :cond_1b
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    aget v2, v2, v0

    goto :goto_10
.end method
