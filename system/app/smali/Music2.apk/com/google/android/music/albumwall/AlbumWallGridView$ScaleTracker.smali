.class Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;
.super Ljava/lang/Object;
.source "AlbumWallGridView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleTracker"
.end annotation


# instance fields
.field private mAnchorCol:I

.field private mAnchorOffsetX:F

.field private mAnchorOffsetY:F

.field private mAnchorRow:I

.field private mOldGlobalX:F

.field private mOldGlobalY:F

.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallGridView;Landroid/view/MotionEvent;)V
    .registers 20
    .parameter
    .parameter "e0"

    .prologue
    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    #calls: Lcom/google/android/music/albumwall/AlbumWallGridView;->getAdapter()Lcom/google/android/opengl/glview/GridView$Adapter;
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$000(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/opengl/glview/GridView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;

    .line 96
    .local v2, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 97
    .local v9, ex:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 99
    .local v10, ey:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->x()F

    move-result v14

    .line 100
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->y()F

    move-result v15

    .line 102
    .local v15, y:F
    sub-float v7, v9, v14

    .line 103
    .local v7, cx:F
    sub-float v8, v10, v15

    .line 105
    .local v8, cy:F
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v5

    .line 106
    .local v5, cellSizeW:F
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 108
    .local v4, cellSizeH:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapW()F

    move-result v16

    add-float v6, v5, v16

    .line 109
    .local v6, cellW:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapH()F

    move-result v16

    add-float v3, v4, v16

    .line 111
    .local v3, cellH:F
    div-float v16, v7, v6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v6

    sub-float v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetX:F

    .line 113
    div-float v16, v8, v3

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v16, v8, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetY:F

    .line 115
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    .line 116
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v13

    .line 119
    .local v13, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v13, :cond_b5

    .line 120
    invoke-virtual {v13}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v11

    .line 121
    .local v11, ox:F
    invoke-virtual {v13}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v12

    .line 122
    .local v12, oy:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    move/from16 v16, v0

    add-float v16, v16, v11

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    move/from16 v16, v0

    add-float v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    .line 125
    .end local v11           #ox:F
    .end local v12           #oy:F
    :cond_b5
    return-void
.end method

.method private layoutIfNeeded(FF)V
    .registers 20
    .parameter "current"
    .parameter "newValue"

    .prologue
    .line 159
    cmpl-float v13, p1, p2

    if-nez v13, :cond_5

    .line 193
    :cond_4
    :goto_4
    return-void

    .line 162
    :cond_5
    const/high16 v13, 0x3f80

    cmpg-float v13, p1, v13

    if-gez v13, :cond_a5

    const/4 v13, 0x1

    move v14, v13

    :goto_d
    const/high16 v13, 0x3f80

    cmpg-float v13, p2, v13

    if-gez v13, :cond_a9

    const/4 v13, 0x1

    :goto_14
    if-eq v14, v13, :cond_1d

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->clearChildren()V

    .line 166
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v12

    .line 167
    .local v12, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v12, :cond_4

    .line 169
    const/16 v13, 0xc8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/google/android/opengl/glview/Transformer;->visit(ILjava/lang/Object;)V

    .line 170
    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->x()F

    move-result v13

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->y()F

    move-result v14

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v15

    invoke-virtual {v12}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v16

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/opengl/glview/Transformer;->setContentRect(FFFF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    #calls: Lcom/google/android/music/albumwall/AlbumWallGridView;->getAdapter()Lcom/google/android/opengl/glview/GridView$Adapter;
    invoke-static {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$200(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/opengl/glview/GridView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;

    .line 176
    .local v1, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    const/4 v13, 0x1

    invoke-interface {v1, v13}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v4

    .line 177
    .local v4, cellSizeW:F
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v3

    .line 179
    .local v3, cellSizeH:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapW()F

    move-result v13

    add-float v5, v4, v13

    .line 180
    .local v5, cellW:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapH()F

    move-result v13

    add-float v2, v3, v13

    .line 182
    .local v2, cellH:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorCol:I

    int-to-float v13, v13

    mul-float/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetX:F

    add-float v6, v13, v14

    .line 183
    .local v6, cx:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorRow:I

    int-to-float v13, v13

    mul-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mAnchorOffsetY:F

    add-float v7, v13, v14

    .line 185
    .local v7, cy:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->x()F

    move-result v13

    add-float v10, v13, v6

    .line 186
    .local v10, ex:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    invoke-virtual {v13}, Lcom/google/android/music/albumwall/AlbumWallGridView;->y()F

    move-result v13

    add-float v11, v13, v7

    .line 188
    .local v11, ey:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalX:F

    sub-float v8, v13, v10

    .line 189
    .local v8, deltaX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->mOldGlobalY:F

    sub-float v9, v13, v11

    .line 191
    .local v9, deltaY:F
    invoke-virtual {v12, v8, v9}, Lcom/google/android/opengl/glview/Transformer;->setOffset(FF)V

    goto/16 :goto_4

    .line 162
    .end local v1           #adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    .end local v2           #cellH:F
    .end local v3           #cellSizeH:F
    .end local v4           #cellSizeW:F
    .end local v5           #cellW:F
    .end local v6           #cx:F
    .end local v7           #cy:F
    .end local v8           #deltaX:F
    .end local v9           #deltaY:F
    .end local v10           #ex:F
    .end local v11           #ey:F
    .end local v12           #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_a5
    const/4 v13, 0x0

    move v14, v13

    goto/16 :goto_d

    :cond_a9
    const/4 v13, 0x0

    goto/16 :goto_14
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 12
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/high16 v5, 0x3f80

    .line 129
    packed-switch p1, :pswitch_data_54

    .line 155
    const/4 v4, 0x0

    :goto_6
    return v4

    .line 131
    :pswitch_7
    move v3, p4

    .line 132
    .local v3, scale:F
    cmpl-float v4, v3, v5

    if-eqz v4, :cond_30

    .line 133
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;
    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    .line 134
    .local v1, current:F
    add-float v4, v5, v1

    mul-float/2addr v4, v3

    sub-float v2, v4, v5

    .line 135
    .local v2, newValue:F
    const/4 v4, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 136
    .local v0, clampedNewValue:F
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;
    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 137
    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->layoutIfNeeded(FF)V

    .line 139
    .end local v0           #clampedNewValue:F
    .end local v1           #current:F
    .end local v2           #newValue:F
    :cond_30
    const/4 v4, 0x1

    goto :goto_6

    .line 143
    .end local v3           #scale:F
    :pswitch_32
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;
    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    .line 145
    .restart local v1       #current:F
    const/high16 v4, 0x3f00

    cmpg-float v4, v1, v4

    if-gez v4, :cond_51

    .line 146
    const/4 v2, 0x0

    .line 150
    .restart local v2       #newValue:F
    :goto_43
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->this$0:Lcom/google/android/music/albumwall/AlbumWallGridView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;
    invoke-static {v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->access$100(Lcom/google/android/music/albumwall/AlbumWallGridView;)Lcom/google/android/music/albumwall/Model;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 151
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallGridView$ScaleTracker;->layoutIfNeeded(FF)V

    .line 152
    const/4 v4, 0x3

    goto :goto_6

    .line 148
    .end local v2           #newValue:F
    :cond_51
    const/high16 v2, 0x3f80

    .restart local v2       #newValue:F
    goto :goto_43

    .line 129
    :pswitch_data_54
    .packed-switch 0x9
        :pswitch_7
        :pswitch_32
    .end packed-switch
.end method
