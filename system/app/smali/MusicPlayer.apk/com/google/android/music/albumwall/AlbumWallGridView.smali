.class public Lcom/google/android/music/albumwall/AlbumWallGridView;
.super Lcom/google/android/opengl/glview/GridView;
.source "AlbumWallGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    }
.end annotation


# instance fields
.field private mBaseIndex:I

.field private mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V
    .registers 11
    .parameter "id"
    .parameter "adapter"
    .parameter "columnMajor"
    .parameter "gapW"
    .parameter "gapH"
    .parameter "marginW"
    .parameter "marginH"
    .parameter "minorAxisLength"
    .parameter "baseIndex"
    .parameter "model"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p8}, Lcom/google/android/opengl/glview/GridView;-><init>(ILcom/google/android/opengl/glview/GridView$Adapter;ZFFFFF)V

    .line 19
    iput-object p10, p0, Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 20
    iput p9, p0, Lcom/google/android/music/albumwall/AlbumWallGridView;->mBaseIndex:I

    .line 21
    return-void
.end method

.method private checkFocusItem(FF)V
    .registers 33
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getAdapter()Lcom/google/android/opengl/glview/GridView$Adapter;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;

    .line 48
    .local v12, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    invoke-interface {v12}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->count()I

    move-result v25

    .line 49
    .local v25, itemCount:I
    if-gtz v25, :cond_d

    .line 82
    :goto_c
    return-void

    .line 53
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallGridView;->x()F

    move-result v27

    .line 54
    .local v27, x:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallGridView;->y()F

    move-result v28

    .line 56
    .local v28, y:F
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v15

    .line 57
    .local v15, cellSizeW:F
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getCellLength(Z)F

    move-result v14

    .line 59
    .local v14, cellSizeH:F
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15, v14}, Lcom/google/android/music/albumwall/AlbumWallGridView;->cols(IFF)I

    move-result v17

    .line 60
    .local v17, cols:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15, v14}, Lcom/google/android/music/albumwall/AlbumWallGridView;->rows(IFF)I

    move-result v26

    .line 62
    .local v26, rows:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapW()F

    move-result v5

    add-float v16, v15, v5

    .line 63
    .local v16, cellW:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallGridView;->gapH()F

    move-result v5

    add-float v13, v14, v5

    .line 65
    .local v13, cellH:F
    sub-float v5, p1, v27

    div-float v5, v5, v16

    float-to-int v0, v5

    move/from16 v21, v0

    .line 66
    .local v21, hitCellColRaw:I
    sub-float v5, p2, v28

    div-float/2addr v5, v13

    float-to-int v0, v5

    move/from16 v24, v0

    .line 67
    .local v24, hitCellRowRaw:I
    const/4 v5, 0x0

    add-int/lit8 v29, v17, -0x1

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 68
    .local v20, hitCellCol:I
    const/4 v5, 0x0

    add-int/lit8 v29, v26, -0x1

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 69
    .local v23, hitCellRow:I
    add-int/lit8 v5, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallGridView;->getChildIndex(IIII)I

    move-result v29

    move/from16 v0, v29

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 71
    .local v22, hitCellId:I
    move/from16 v0, v22

    invoke-interface {v12, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v8

    .line 72
    .local v8, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    move/from16 v0, v22

    invoke-interface {v12, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v6

    .line 73
    .local v6, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    move/from16 v0, v22

    invoke-interface {v12, v0}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->getPileIndexAt(I)I

    move-result v7

    .line 74
    .local v7, pileIndex:I
    invoke-interface {v12}, Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;->isPileList()Z

    move-result v11

    .line 76
    .local v11, isPileList:Z
    sub-int v18, v21, v20

    .line 77
    .local v18, distanceCol:I
    sub-int v19, v24, v23

    .line 78
    .local v19, distanceRow:I
    mul-int v5, v18, v18

    mul-int v29, v19, v19

    add-int v10, v5, v29

    .line 80
    .local v10, distance2:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/albumwall/AlbumWallGridView;->mBaseIndex:I

    add-int v9, v22, v5

    .line 81
    .local v9, centerCellIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallGridView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/music/albumwall/Model;->reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V

    goto/16 :goto_c
.end method

.method private checkFocusItems(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 8
    .parameter "glCanvas"

    .prologue
    const/high16 v5, 0x3f00

    .line 37
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v0

    .line 38
    .local v0, canvasX:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v1

    .line 40
    .local v1, canvasY:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v4

    mul-float/2addr v4, v5

    add-float v2, v0, v4

    .line 41
    .local v2, centerX:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v4

    mul-float/2addr v4, v5

    add-float v3, v1, v4

    .line 43
    .local v3, centerY:F
    invoke-direct {p0, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallGridView;->checkFocusItem(FF)V

    .line 44
    return-void
.end method


# virtual methods
.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallGridView;->checkFocusItems(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GridView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    return v0
.end method
