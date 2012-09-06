.class public Lcom/google/android/opengl/glview/GLLinearLayout;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "GLLinearLayout.java"


# instance fields
.field private mAlignment:I

.field private mExpansion:I

.field private mGap:F

.field private mHorizontalAxis:Z


# direct methods
.method public constructor <init>(IZFII)V
    .registers 6
    .parameter "id"
    .parameter "horizontalAxis"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 34
    iput-boolean p2, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    .line 35
    iput p3, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    .line 36
    iput p4, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    .line 37
    iput p5, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    .line 38
    return-void
.end method

.method public static createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;
    .registers 10
    .parameter "id"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/opengl/glview/GLLinearLayout;

    const/4 v2, 0x1

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLLinearLayout;-><init>(IZFII)V

    return-object v0
.end method

.method public static createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;
    .registers 10
    .parameter "id"
    .parameter "gap"
    .parameter "alignment"
    .parameter "expansion"

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/opengl/glview/GLLinearLayout;

    const/4 v2, 0x0

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLLinearLayout;-><init>(IZFII)V

    return-object v0
.end method

.method private isExpandChildren(Z)Z
    .registers 5
    .parameter "horizontal"

    .prologue
    const/4 v0, 0x1

    .line 183
    iget v2, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    if-eqz p1, :cond_a

    move v1, v0

    :goto_6
    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x2

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isExpandGap()Z
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final getGap()F
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    return v0
.end method

.method public final getHorizontalAxis()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    return v0
.end method

.method public getMinLength(Z)F
    .registers 12
    .parameter "horizontal"

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildCount()I

    move-result v0

    .line 63
    .local v0, childCount:I
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandChildren(Z)Z

    move-result v1

    .line 64
    .local v1, expandChildren:Z
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandGap()Z

    move-result v2

    .line 65
    .local v2, expandGap:Z
    const/4 v4, 0x0

    .line 66
    .local v4, foundAnExpandableChild:Z
    const/4 v6, 0x0

    .line 67
    .local v6, length:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-ne p1, v8, :cond_43

    .line 69
    const/4 v5, 0x0

    .local v5, i:I
    :goto_14
    if-ge v5, v0, :cond_2a

    .line 70
    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v7

    .line 71
    .local v7, view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    add-float/2addr v6, v8

    .line 72
    if-eqz v1, :cond_27

    if-nez v4, :cond_27

    .line 73
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    .line 69
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 76
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_2a
    if-le v0, v3, :cond_33

    .line 77
    iget v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 90
    :cond_33
    if-eqz v1, :cond_37

    if-nez v4, :cond_3f

    :cond_37
    if-eqz v2, :cond_5d

    iget-boolean v8, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-ne p1, v8, :cond_5d

    if-le v0, v3, :cond_5d

    .line 92
    .local v3, expandable:Z
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1, v3}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 93
    return v6

    .line 81
    .end local v3           #expandable:Z
    .end local v5           #i:I
    :cond_43
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_44
    if-ge v5, v0, :cond_33

    .line 82
    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v7

    .line 83
    .restart local v7       #view:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 85
    if-eqz v1, :cond_5a

    if-nez v4, :cond_5a

    .line 86
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    .line 81
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 90
    .end local v7           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_5d
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public layout(ZFF)V
    .registers 24
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildCount()I

    move-result v9

    .line 100
    .local v9, childCount:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandChildren(Z)Z

    move-result v11

    .line 101
    .local v11, expandChildren:Z
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLLinearLayout;->isExpandGap()Z

    move-result v12

    .line 102
    .local v12, expandGap:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    move/from16 v0, p1

    if-ne v0, v4, :cond_d1

    .line 104
    move/from16 v10, p2

    .line 105
    .local v10, childStart:F
    if-nez v11, :cond_1a

    if-eqz v12, :cond_9d

    .line 110
    :cond_1a
    const/4 v13, 0x0

    .line 111
    .local v13, expandableChildCount:I
    const/16 v17, 0x0

    .line 112
    .local v17, minLength:F
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1f
    move/from16 v0, v16

    if-ge v0, v9, :cond_4c

    .line 113
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 114
    .local v3, view:Lcom/google/android/opengl/glview/GLView;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    add-float v17, v17, v4

    .line 115
    add-int/lit8 v4, v9, -0x1

    move/from16 v0, v16

    if-ge v0, v4, :cond_3f

    .line 116
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    add-float v17, v17, v4

    .line 118
    :cond_3f
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 119
    add-int/lit8 v13, v13, 0x1

    .line 112
    :cond_49
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f

    .line 125
    .end local v3           #view:Lcom/google/android/opengl/glview/GLView;
    :cond_4c
    const/4 v4, 0x0

    sub-float v5, p3, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 126
    .local v14, extraLength:F
    const/16 v18, 0x0

    .line 127
    .local v18, perExpandableChildExtra:F
    const/16 v19, 0x0

    .line 128
    .local v19, perGapExtra:F
    if-eqz v11, :cond_92

    if-lez v13, :cond_92

    .line 129
    int-to-float v4, v13

    div-float v18, v14, v4

    .line 136
    :cond_5e
    :goto_5e
    const/16 v16, 0x0

    :goto_60
    move/from16 v0, v16

    if-ge v0, v9, :cond_c5

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 138
    .restart local v3       #view:Lcom/google/android/opengl/glview/GLView;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v7

    .line 139
    .local v7, childLength:F
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 140
    add-float v7, v7, v18

    .line 142
    :cond_7c
    move/from16 v0, p1

    invoke-virtual {v3, v0, v10, v7}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 143
    add-float/2addr v10, v7

    .line 144
    add-int/lit8 v4, v9, -0x1

    move/from16 v0, v16

    if-ge v0, v4, :cond_8f

    .line 145
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    add-float v4, v4, v19

    add-float/2addr v10, v4

    .line 136
    :cond_8f
    add-int/lit8 v16, v16, 0x1

    goto :goto_60

    .line 130
    .end local v3           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #childLength:F
    :cond_92
    if-eqz v12, :cond_5e

    const/4 v4, 0x1

    if-le v9, v4, :cond_5e

    .line 131
    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    div-float v19, v14, v4

    goto :goto_5e

    .line 152
    .end local v13           #expandableChildCount:I
    .end local v14           #extraLength:F
    .end local v16           #i:I
    .end local v17           #minLength:F
    .end local v18           #perExpandableChildExtra:F
    .end local v19           #perGapExtra:F
    :cond_9d
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_9f
    move/from16 v0, v16

    if-ge v0, v9, :cond_c5

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 154
    .restart local v3       #view:Lcom/google/android/opengl/glview/GLView;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v7

    .line 155
    .restart local v7       #childLength:F
    move/from16 v0, p1

    invoke-virtual {v3, v0, v10, v7}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 156
    add-float/2addr v10, v7

    .line 157
    add-int/lit8 v4, v9, -0x1

    move/from16 v0, v16

    if-ge v0, v4, :cond_c2

    .line 158
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    add-float/2addr v10, v4

    .line 152
    :cond_c2
    add-int/lit8 v16, v16, 0x1

    goto :goto_9f

    .line 162
    .end local v3           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #childLength:F
    :cond_c5
    sub-float v4, v10, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->internalLayout(ZFF)V

    .line 177
    .end local v10           #childStart:F
    :goto_d0
    return-void

    .line 165
    .end local v16           #i:I
    :cond_d1
    move/from16 v15, p3

    .line 166
    .local v15, fullLength:F
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_d5
    move/from16 v0, v16

    if-ge v0, v9, :cond_112

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 168
    .restart local v3       #view:Lcom/google/android/opengl/glview/GLView;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v7

    .line 169
    .restart local v7       #childLength:F
    if-eqz v11, :cond_f5

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 170
    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 172
    :cond_f5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 173
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v4

    add-float/2addr v4, v7

    sub-float v4, v4, p2

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 166
    add-int/lit8 v16, v16, 0x1

    goto :goto_d5

    .line 175
    .end local v3           #view:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #childLength:F
    :cond_112
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/google/android/opengl/glview/GLLinearLayout;->internalLayout(ZFF)V

    goto :goto_d0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mHorizontalAxis:Z

    if-eqz v0, :cond_58

    const-string v0, "H"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mGap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mAlignment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5b

    const-string v0, "H"

    :goto_43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/android/opengl/glview/GLLinearLayout;->mExpansion:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5e

    const-string v0, "V"

    :goto_4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    const-string v0, "V"

    goto :goto_19

    :cond_5b
    const-string v0, ""

    goto :goto_43

    :cond_5e
    const-string v0, ""

    goto :goto_4f
.end method
