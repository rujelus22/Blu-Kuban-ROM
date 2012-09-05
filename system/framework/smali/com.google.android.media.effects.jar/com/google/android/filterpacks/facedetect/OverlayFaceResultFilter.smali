.class public Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;
.super Landroid/filterfw/core/Filter;
.source "OverlayFaceResultFilter.java"


# instance fields
.field private final mBlendShader:Ljava/lang/String;

.field private mOverlayProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, "precision mediump float;\nuniform int num_face;\nuniform float alpha;\nuniform vec4 blend_color;\nuniform vec4 face_rect;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 mouth_pos;\nuniform vec2 upper_lip_pos;\nuniform vec2 lower_lip_pos;\nuniform sampler2D tex_sampler_0;\nfloat eye_size;\nvec2 face_size;\nvec2 face_center;\nfloat dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  if (num_face!=0) {\n    face_center[0] = (face_rect[0] + face_rect[2]) / 2.0;\n    face_center[1] = (face_rect[1] + face_rect[3]) / 2.0;\n    face_size[0] = (face_rect[2] - face_rect[0]) / 2.0;\n    face_size[1] = (face_rect[3] - face_rect[1]) / 2.0;\n    dist = length((v_texcoord - face_center) / face_size);\n    if (dist<1.0) {\n       eye_size = distance(left_eye, right_eye) / 6.0;\n       if ( distance(left_eye, v_texcoord) < eye_size ||\n            distance(right_eye, v_texcoord) < eye_size) { \n         gl_FragColor = mix(color, vec4(1.0,0,0,1.0), alpha);\n       } else if (distance(mouth_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(0,0,1.0,1.0), alpha);\n       } else if (distance(upper_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       } else if (distance(lower_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       }\n       else gl_FragColor = mix(color, blend_color, alpha);\n    }\n    else {\n      gl_FragColor = color;\n    }\n  } else gl_FragColor = color;\n}\n"

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mBlendShader:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 104
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 108
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform int num_face;\nuniform float alpha;\nuniform vec4 blend_color;\nuniform vec4 face_rect;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 mouth_pos;\nuniform vec2 upper_lip_pos;\nuniform vec2 lower_lip_pos;\nuniform sampler2D tex_sampler_0;\nfloat eye_size;\nvec2 face_size;\nvec2 face_center;\nfloat dist;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  if (num_face!=0) {\n    face_center[0] = (face_rect[0] + face_rect[2]) / 2.0;\n    face_center[1] = (face_rect[1] + face_rect[3]) / 2.0;\n    face_size[0] = (face_rect[2] - face_rect[0]) / 2.0;\n    face_size[1] = (face_rect[3] - face_rect[1]) / 2.0;\n    dist = length((v_texcoord - face_center) / face_size);\n    if (dist<1.0) {\n       eye_size = distance(left_eye, right_eye) / 6.0;\n       if ( distance(left_eye, v_texcoord) < eye_size ||\n            distance(right_eye, v_texcoord) < eye_size) { \n         gl_FragColor = mix(color, vec4(1.0,0,0,1.0), alpha);\n       } else if (distance(mouth_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(0,0,1.0,1.0), alpha);\n       } else if (distance(upper_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       } else if (distance(lower_lip_pos, v_texcoord) < 0.5*eye_size ) { \n         gl_FragColor = mix(color, vec4(1.0,1.0,0,1.0), alpha);\n       }\n       else gl_FragColor = mix(color, blend_color, alpha);\n    }\n    else {\n      gl_FragColor = color;\n    }\n  } else gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    .line 109
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 23
    .parameter "context"

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    .line 115
    .local v4, frameManager:Landroid/filterfw/core/FrameManager;
    const-string v15, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 116
    .local v7, imageFrame:Landroid/filterfw/core/Frame;
    const-string v15, "faces"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 119
    .local v2, facesFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    .line 121
    .local v1, face:Lcom/google/android/filterpacks/facedetect/FaceMeta;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 123
    const/4 v15, 0x4

    new-array v5, v15, [F

    fill-array-data v5, :array_1ac

    .line 124
    .local v5, green_color:[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "blend_color"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "alpha"

    const/high16 v17, 0x3f00

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    move-result v11

    .line 128
    .local v11, num_face:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "num_face"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v15, "Overlay Result"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "number of faces"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v11, :cond_1a4

    .line 132
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v12

    .line 134
    .local v12, output:Landroid/filterfw/core/Frame;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8e
    if-ge v6, v11, :cond_199

    .line 135
    const/4 v15, 0x4

    new-array v3, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    move-result v16

    aput v16, v3, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    move-result v16

    aput v16, v3, v15

    const/4 v15, 0x2

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    move-result v16

    aput v16, v3, v15

    const/4 v15, 0x3

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    move-result v16

    aput v16, v3, v15

    .line 137
    .local v3, fr:[F
    const/4 v15, 0x2

    new-array v8, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    move-result v16

    aput v16, v8, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    move-result v16

    aput v16, v8, v15

    .line 138
    .local v8, le:[F
    const/4 v15, 0x2

    new-array v13, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    move-result v16

    aput v16, v13, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    move-result v16

    aput v16, v13, v15

    .line 139
    .local v13, re:[F
    const/4 v15, 0x2

    new-array v10, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    move-result v16

    aput v16, v10, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    move-result v16

    aput v16, v10, v15

    .line 140
    .local v10, mouth:[F
    const/4 v15, 0x2

    new-array v14, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    move-result v16

    aput v16, v14, v15

    .line 141
    .local v14, upper_lip:[F
    const/4 v15, 0x2

    new-array v9, v15, [F

    const/4 v15, 0x0

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    move-result v16

    aput v16, v9, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    move-result v16

    aput v16, v9, v15

    .line 142
    .local v9, lower_lip:[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "face_rect"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "left_eye"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "right_eye"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "mouth_pos"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "upper_lip_pos"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v16, "lower_lip_pos"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    if-lez v6, :cond_18e

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/16 v16, 0x0

    aget v16, v3, v16

    const/16 v17, 0x1

    aget v17, v3, v17

    const/16 v18, 0x2

    aget v18, v3, v18

    const/16 v19, 0x0

    aget v19, v3, v19

    sub-float v18, v18, v19

    const/16 v19, 0x3

    aget v19, v3, v19

    const/16 v20, 0x1

    aget v20, v3, v20

    sub-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    const/16 v16, 0x0

    aget v16, v3, v16

    const/16 v17, 0x1

    aget v17, v3, v17

    const/16 v18, 0x2

    aget v18, v3, v18

    const/16 v19, 0x0

    aget v19, v3, v19

    sub-float v18, v18, v19

    const/16 v19, 0x3

    aget v19, v3, v19

    const/16 v20, 0x1

    aget v20, v3, v20

    sub-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 152
    :cond_18e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v15, v7, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8e

    .line 156
    .end local v3           #fr:[F
    .end local v8           #le:[F
    .end local v9           #lower_lip:[F
    .end local v10           #mouth:[F
    .end local v13           #re:[F
    .end local v14           #upper_lip:[F
    :cond_199
    const-string v15, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 159
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 162
    .end local v6           #i:I
    .end local v12           #output:Landroid/filterfw/core/Frame;
    :goto_1a3
    return-void

    .line 161
    :cond_1a4
    const-string v15, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_1a3

    .line 123
    :array_1ac
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setupPorts()V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 92
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 94
    .local v1, imageFormat:Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 97
    .local v0, facesFormat:Landroid/filterfw/core/FrameFormat;
    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 98
    const-string v2, "faces"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 99
    const-string v2, "image"

    const-string v3, "image"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/OverlayFaceResultFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
