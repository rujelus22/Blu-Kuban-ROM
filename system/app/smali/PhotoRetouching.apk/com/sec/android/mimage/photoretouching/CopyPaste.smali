.class public Lcom/sec/android/mimage/photoretouching/CopyPaste;
.super Ljava/lang/Object;
.source "CopyPaste.java"


# instance fields
.field private Angle:I

.field public BackImg:[I

.field public BackImgCopyTo_land:[I

.field public BackImgCopyTo_port:[I

.field private BackImgHeight:I

.field private BackImgPath:Ljava/lang/String;

.field private BackImgWidth:I

.field CenterPT:Landroid/graphics/Point;

.field DestPt1:Landroid/graphics/Point;

.field DestPt2:Landroid/graphics/Point;

.field DestPt3:Landroid/graphics/Point;

.field DestPt4:Landroid/graphics/Point;

.field private DestROI:Landroid/graphics/Rect;

.field EndPT:Landroid/graphics/Point;

.field private ObjectHeight:I

.field private ObjectWidth:I

.field private Object_avg_b:I

.field private Object_avg_g:I

.field private Object_avg_r:I

.field private OrgObjectBmp:Landroid/graphics/Bitmap;

.field private OrgObjectHeight:I

.field private OrgObjectROI:Landroid/graphics/Rect;

.field private OrgObjectWidth:I

.field StartPT:Landroid/graphics/Point;

.field private TouchType:I

.field bApply:Z

.field bSeamless:Z

.field private prevX:F

.field private prevY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1367
    const-string v0, "CopyPaste"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Z)V
    .registers 27
    .parameter "srcroi"
    .parameter "imgInfo"
    .parameter "mask"
    .parameter "bseamless"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    .line 27
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    .line 29
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_port:[I

    .line 30
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_land:[I

    .line 48
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bSeamless:Z

    .line 54
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    .line 56
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    .line 57
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    .line 58
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    .line 60
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    .line 61
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    .line 62
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    .line 63
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    .line 65
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    .line 67
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 69
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-gez v17, :cond_a1

    .line 70
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 71
    :cond_a1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-gez v17, :cond_b1

    .line 72
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 73
    :cond_b1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_cf

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 75
    :cond_cf
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_ed

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 78
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_136

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_414

    .line 81
    :cond_136
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    .line 85
    :goto_13e
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v9

    .line 91
    .local v9, img:[I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4b9

    .line 95
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v13

    .line 97
    .local v13, orgObjectMask:[B
    const/4 v12, 0x0

    check-cast v12, [I

    .line 99
    .local v12, objectData:[I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v13, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->set_object_region([BIILandroid/graphics/Rect;I)V

    .line 101
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    div-int/lit8 v15, v17, 0x2

    .line 104
    .local v15, x_center:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v17

    div-int/lit8 v16, v17, 0x2

    .line 106
    .local v16, y_center:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, count:I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 118
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 119
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .local v10, j:I
    :goto_26b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v10, v0, :cond_41e

    .line 147
    if-gtz v6, :cond_27e

    .line 148
    const/4 v6, 0x1

    .line 150
    :cond_27e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    move/from16 v17, v0

    div-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    move/from16 v17, v0

    div-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    move/from16 v17, v0

    div-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 156
    const/4 v12, 0x0

    check-cast v12, [I

    .line 157
    const/4 v13, 0x0

    check-cast v13, [B

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v15, v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 178
    .end local v6           #count:I
    .end local v10           #j:I
    .end local v12           #objectData:[I
    .end local v13           #orgObjectMask:[B
    .end local v15           #x_center:I
    .end local v16           #y_center:I
    :goto_410
    const/4 v9, 0x0

    check-cast v9, [I

    .line 179
    return-void

    .line 83
    .end local v9           #img:[I
    :cond_414
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    goto/16 :goto_13e

    .line 123
    .restart local v6       #count:I
    .restart local v9       #img:[I
    .restart local v10       #j:I
    .restart local v12       #objectData:[I
    .restart local v13       #orgObjectMask:[B
    .restart local v15       #x_center:I
    .restart local v16       #y_center:I
    :cond_41e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .local v8, i:I
    :goto_428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v8, v0, :cond_43c

    .line 121
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_26b

    .line 125
    :cond_43c
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    mul-int v17, v17, v10

    add-int v17, v17, v8

    aget-byte v11, v13, v17

    .line 126
    .local v11, maskvalue:B
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v17

    mul-int v17, v17, v10

    add-int v17, v17, v8

    aget v5, v9, v17

    .line 128
    .local v5, color:I
    if-nez v11, :cond_47e

    .line 129
    const/4 v5, 0x0

    .line 143
    :goto_453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v17, v17, v18

    aput v5, v12, v17

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto :goto_428

    .line 132
    :cond_47e
    shr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 133
    .local v14, r:I
    shr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v7, v0, 0xff

    .line 134
    .local v7, g:I
    and-int/lit16 v4, v5, 0xff

    .line 136
    .local v4, b:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    move/from16 v17, v0

    add-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_453

    .line 174
    .end local v4           #b:I
    .end local v5           #color:I
    .end local v6           #count:I
    .end local v7           #g:I
    .end local v8           #i:I
    .end local v10           #j:I
    .end local v11           #maskvalue:B
    .end local v12           #objectData:[I
    .end local v13           #orgObjectMask:[B
    .end local v14           #r:I
    .end local v15           #x_center:I
    .end local v16           #y_center:I
    :cond_4b9
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    .line 175
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    goto/16 :goto_410
.end method

.method public static native paste_object([I[I[B[IIIIILandroid/graphics/Rect;)V
.end method

.method public static native poisson_blending([I[I[B[IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public static native reset_paste_object([BIILandroid/graphics/Rect;)V
.end method

.method public static native run_copyobject([I[BII[III)V
.end method

.method public static native run_copypaste([I[I[B[IIIIILandroid/graphics/Rect;III)V
.end method

.method public static native set_object_region([BIILandroid/graphics/Rect;I)V
.end method


# virtual methods
.method public DestoryResource()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    .line 184
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    .line 185
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    .line 186
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    .line 187
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_port:[I

    .line 190
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_land:[I

    .line 192
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    .line 193
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    .line 194
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    .line 196
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    .line 197
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    .line 198
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    .line 199
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    .line 201
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 203
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 206
    :cond_29
    return-void
.end method

.method public DrawPreview([ILcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 7
    .parameter "preview"
    .parameter "imgInfo"

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    if-eqz v0, :cond_f

    .line 446
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    mul-int/2addr v1, v2

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :cond_f
    return-void
.end method

.method public EndMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;[I)V
    .registers 22
    .parameter "x"
    .parameter "y"
    .parameter "imgInfo"
    .parameter "preview"

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    if-nez v1, :cond_7

    .line 1246
    :goto_6
    return-void

    .line 1156
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_175

    .line 1158
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v16

    .line 1159
    .local v16, width:I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v8

    .line 1162
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v13

    .line 1163
    .local v13, pt:Landroid/graphics/Point;
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1164
    add-int/lit8 v1, v16, -0x1

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1165
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1166
    add-int/lit8 v1, v8, -0x1

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1169
    const/4 v13, 0x0

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v13

    .line 1172
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1173
    add-int/lit8 v1, v16, -0x1

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1174
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1175
    add-int/lit8 v1, v8, -0x1

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1177
    const/4 v13, 0x0

    .line 1179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v13

    .line 1180
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1181
    add-int/lit8 v1, v16, -0x1

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1182
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1183
    add-int/lit8 v1, v8, -0x1

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1185
    const/4 v13, 0x0

    .line 1187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v13

    .line 1188
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1189
    add-int/lit8 v1, v16, -0x1

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 1190
    const/4 v1, 0x0

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1191
    add-int/lit8 v1, v8, -0x1

    iget v2, v13, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1193
    const/4 v13, 0x0

    .line 1245
    .end local v8           #height:I
    .end local v13           #pt:Landroid/graphics/Point;
    .end local v16           #width:I
    :cond_16e
    :goto_16e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_6

    .line 1195
    :cond_175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    if-lez v1, :cond_16e

    .line 1198
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v16

    .line 1199
    .restart local v16       #width:I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v8

    .line 1201
    .restart local v8       #height:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1202
    .local v11, objectROI:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->left:I

    .line 1203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->right:I

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->top:I

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 1207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v12, v1, 0x1

    .line 1211
    .local v12, objectW:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v10, v1, 0x1

    .line 1213
    .local v10, objectH:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v12, 0x2

    sub-int v9, v1, v2

    .line 1214
    .local v9, left:I
    if-gez v9, :cond_267

    .line 1216
    const/4 v9, 0x0

    .line 1217
    add-int/lit8 v1, v12, -0x1

    .line 1220
    :cond_267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v12, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v14, v1, -0x1

    .line 1221
    .local v14, right:I
    add-int/lit8 v1, v16, -0x1

    if-le v14, v1, :cond_27c

    .line 1223
    add-int/lit8 v14, v16, -0x1

    .line 1224
    sub-int v1, v14, v12

    add-int/lit8 v9, v1, 0x1

    .line 1227
    :cond_27c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v10, 0x2

    sub-int v15, v1, v2

    .line 1228
    .local v15, top:I
    if-gez v15, :cond_28b

    .line 1230
    const/4 v15, 0x0

    .line 1231
    add-int/lit8 v1, v10, -0x1

    .line 1234
    :cond_28b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, -0x1

    .line 1235
    .local v7, bottom:I
    add-int/lit8 v1, v8, -0x1

    if-le v7, v1, :cond_2a0

    .line 1237
    add-int/lit8 v7, v8, -0x1

    .line 1238
    sub-int v1, v7, v10

    add-int/lit8 v15, v1, 0x1

    .line 1241
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v15, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_16e
.end method

.method public GetAngle()I
    .registers 2

    .prologue
    .line 434
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    return v0
.end method

.method public GetAngle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 22
    .parameter "centerPt"
    .parameter "startPt"
    .parameter "endPt"

    .prologue
    .line 1297
    const/4 v3, 0x0

    .line 1299
    .local v3, angle:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1300
    .local v1, a:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1302
    .local v4, b:Landroid/graphics/Point;
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    iput v14, v1, Landroid/graphics/Point;->x:I

    .line 1303
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    iput v14, v1, Landroid/graphics/Point;->y:I

    .line 1305
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    iput v14, v4, Landroid/graphics/Point;->x:I

    .line 1306
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    iput v14, v4, Landroid/graphics/Point;->y:I

    .line 1308
    iget v14, v1, Landroid/graphics/Point;->x:I

    iget v15, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v14, v15

    iget v15, v1, Landroid/graphics/Point;->y:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 1309
    .local v5, dist_a:D
    iget v14, v4, Landroid/graphics/Point;->x:I

    iget v15, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v14, v15

    iget v15, v4, Landroid/graphics/Point;->y:I

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 1310
    .local v7, dist_b:D
    iget v14, v1, Landroid/graphics/Point;->x:I

    iget v15, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v14, v15

    iget v15, v1, Landroid/graphics/Point;->y:I

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int v2, v14, v15

    .line 1311
    .local v2, a_b:I
    int-to-double v14, v2

    mul-double v16, v5, v7

    div-double v12, v14, v16

    .line 1313
    .local v12, value:D
    iget v14, v1, Landroid/graphics/Point;->x:I

    iget v15, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v14, v15

    iget v15, v1, Landroid/graphics/Point;->y:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    sub-int v11, v14, v15

    .line 1315
    .local v11, temp:I
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    .line 1316
    .local v9, fangle:D
    double-to-int v3, v9

    .line 1317
    if-gez v11, :cond_8d

    .line 1318
    rsub-int v3, v3, 0x168

    .line 1320
    :cond_8d
    const/16 v14, 0x168

    if-le v3, v14, :cond_93

    .line 1321
    add-int/lit16 v3, v3, -0x168

    .line 1323
    :cond_93
    const/4 v1, 0x0

    .line 1324
    const/4 v4, 0x0

    .line 1326
    return v3
.end method

.method public GetCenterPt()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetDestPt1()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetDestPt2()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetDestPt3()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetDestPt4()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetDestROI()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public GetObjectBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetOrgObjectROI()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public GetRotationPoint(IIIII)Landroid/graphics/Point;
    .registers 17
    .parameter "x"
    .parameter "y"
    .parameter "angle"
    .parameter "offset_x"
    .parameter "offset_y"

    .prologue
    .line 1347
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1348
    .local v4, retPt:Landroid/graphics/Point;
    int-to-double v7, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1349
    .local v2, radian:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 1350
    .local v0, cos:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 1352
    .local v5, sin:D
    sub-int v7, p1, p4

    int-to-double v7, v7

    mul-double/2addr v7, v0

    sub-int v9, p2, p5

    int-to-double v9, v9

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1353
    sub-int v7, p1, p4

    int-to-double v7, v7

    mul-double/2addr v7, v5

    sub-int v9, p2, p5

    int-to-double v9, v9

    mul-double/2addr v9, v0

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 1355
    iget v7, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v7, p4

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1356
    iget v7, v4, Landroid/graphics/Point;->y:I

    add-int v7, v7, p5

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 1358
    return-object v4
.end method

.method public GetRotationPoint(Landroid/graphics/Point;III)Landroid/graphics/Point;
    .registers 16
    .parameter "pt"
    .parameter "angle"
    .parameter "offset_x"
    .parameter "offset_y"

    .prologue
    .line 1331
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1332
    .local v4, retPt:Landroid/graphics/Point;
    int-to-double v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1333
    .local v2, radian:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 1334
    .local v0, cos:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 1336
    .local v5, sin:D
    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, p3

    int-to-double v7, v7

    mul-double/2addr v7, v0

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, p4

    int-to-double v9, v9

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1337
    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, p3

    int-to-double v7, v7

    mul-double/2addr v7, v5

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, p4

    int-to-double v9, v9

    mul-double/2addr v9, v0

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 1339
    iget v7, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v7, p3

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1340
    iget v7, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v7, p4

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 1342
    return-object v4
.end method

.method public Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V
    .registers 24
    .parameter "srcroi"
    .parameter "imgInfo"
    .parameter "mask"

    .prologue
    .line 214
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    .line 215
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    .line 216
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    .line 219
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    .line 220
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    .line 221
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    .line 223
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    .line 224
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    .line 225
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    .line 226
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_49

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 235
    :cond_49
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    .line 237
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    .line 238
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    .line 239
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    .line 241
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    .line 242
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    .line 243
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    .line 244
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    .line 246
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 248
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_a1

    .line 249
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 250
    :cond_a1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_ac

    .line 251
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 252
    :cond_ac
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_c2

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 254
    :cond_c2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_d8

    .line 255
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 257
    :cond_d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_2ee

    .line 260
    :cond_fd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    .line 264
    :goto_102
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    .line 267
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v13

    .line 270
    .local v13, img:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    mul-int/2addr v6, v7

    invoke-static {v13, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    if-eqz v3, :cond_378

    .line 274
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v16

    .line 275
    .local v16, orgObjectMask:[B
    const/4 v2, 0x0

    check-cast v2, [B

    .line 276
    .local v2, objectMask:[B
    const/4 v1, 0x0

    check-cast v1, [I

    .line 278
    .local v1, objectData:[I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->set_object_region([BIILandroid/graphics/Rect;I)V

    .line 280
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    .line 282
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .line 283
    .local v18, x_center:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .line 285
    .local v19, y_center:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    .line 288
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    .line 289
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    .line 291
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/2addr v3, v4

    new-array v2, v3, [B

    .line 292
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/2addr v3, v4

    new-array v1, v3, [I

    .line 294
    const/4 v10, 0x0

    .line 295
    .local v10, count:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 297
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v3, Landroid/graphics/Rect;->top:I

    .local v14, j:I
    :goto_1d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v14, v3, :cond_2f5

    .line 326
    if-gtz v10, :cond_1de

    .line 327
    const/4 v10, 0x1

    .line 329
    :cond_1de
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    div-int/2addr v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 330
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    div-int/2addr v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 331
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    div-int/2addr v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 333
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bSeamless:Z

    if-eqz v3, :cond_216

    .line 334
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->run_copyobject([I[BII[III)V

    .line 336
    :cond_216
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    .line 338
    const/4 v2, 0x0

    check-cast v2, [B

    .line 339
    const/4 v1, 0x0

    check-cast v1, [I

    .line 340
    const/16 v16, 0x0

    check-cast v16, [B

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v18, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v19, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 361
    .end local v1           #objectData:[I
    .end local v2           #objectMask:[B
    .end local v10           #count:I
    .end local v14           #j:I
    .end local v16           #orgObjectMask:[B
    .end local v18           #x_center:I
    .end local v19           #y_center:I
    :goto_2ea
    const/4 v13, 0x0

    check-cast v13, [I

    .line 362
    return-void

    .line 262
    .end local v13           #img:[I
    :cond_2ee
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    goto/16 :goto_102

    .line 301
    .restart local v1       #objectData:[I
    .restart local v2       #objectMask:[B
    .restart local v10       #count:I
    .restart local v13       #img:[I
    .restart local v14       #j:I
    .restart local v16       #orgObjectMask:[B
    .restart local v18       #x_center:I
    .restart local v19       #y_center:I
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    .local v12, i:I
    :goto_2fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v12, v3, :cond_307

    .line 299
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1d3

    .line 303
    :cond_307
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    mul-int/2addr v3, v14

    add-int/2addr v3, v12

    aget-byte v15, v16, v3

    .line 304
    .local v15, maskvalue:B
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    mul-int/2addr v3, v14

    add-int/2addr v3, v12

    aget v9, v13, v3

    .line 306
    .local v9, color:I
    if-nez v15, :cond_34d

    .line 307
    const/4 v9, 0x0

    .line 321
    :goto_31a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v14, v4

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v12, v4

    add-int/2addr v3, v4

    aput-byte v15, v2, v3

    .line 322
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v14, v4

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v12, v4

    add-int/2addr v3, v4

    aput v9, v1, v3

    .line 301
    add-int/lit8 v12, v12, 0x1

    goto :goto_2fb

    .line 310
    :cond_34d
    shr-int/lit8 v3, v9, 0x10

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 311
    .local v17, r:I
    shr-int/lit8 v3, v9, 0x8

    and-int/lit16 v11, v3, 0xff

    .line 312
    .local v11, g:I
    and-int/lit16 v8, v9, 0xff

    .line 314
    .local v8, b:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    .line 315
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    .line 316
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    .line 318
    add-int/lit8 v10, v10, 0x1

    goto :goto_31a

    .line 357
    .end local v1           #objectData:[I
    .end local v2           #objectMask:[B
    .end local v8           #b:I
    .end local v9           #color:I
    .end local v10           #count:I
    .end local v11           #g:I
    .end local v12           #i:I
    .end local v14           #j:I
    .end local v15           #maskvalue:B
    .end local v16           #orgObjectMask:[B
    .end local v17           #r:I
    .end local v18           #x_center:I
    .end local v19           #y_center:I
    :cond_378
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectWidth:I

    .line 358
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ObjectHeight:I

    goto/16 :goto_2ea
.end method

.method public InitMoveObject(FF)I
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 596
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    .line 598
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    if-nez v4, :cond_a

    .line 599
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    .line 665
    :goto_9
    return v4

    .line 601
    :cond_a
    const/16 v2, 0x1e

    .line 603
    .local v2, offset:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 604
    .local v1, objectROI:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 605
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 606
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 607
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 612
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_de

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_de

    .line 614
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 615
    .local v0, h_mid:I
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 617
    .local v3, v_mid:I
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Point;->set(II)V

    .line 618
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 620
    const/16 v4, 0x9

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    .line 660
    .end local v0           #h_mid:I
    .end local v3           #v_mid:I
    :cond_d5
    :goto_d5
    const/4 v1, 0x0

    .line 662
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    .line 663
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    .line 665
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_9

    .line 622
    :cond_de
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_110

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_110

    .line 624
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto :goto_d5

    .line 626
    :cond_110
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_142

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_142

    .line 627
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto :goto_d5

    .line 628
    :cond_142
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_175

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_175

    .line 629
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5

    .line 630
    :cond_175
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1a8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1a8

    .line 631
    const/4 v4, 0x5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5

    .line 632
    :cond_1a8
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1cd

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1cd

    .line 633
    const/4 v4, 0x6

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5

    .line 634
    :cond_1cd
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1f2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1f2

    .line 635
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5

    .line 636
    :cond_1f2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_218

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_218

    .line 637
    const/16 v4, 0x8

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5

    .line 638
    :cond_218
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_d5

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_d5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_d5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_d5

    .line 657
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    goto/16 :goto_d5
.end method

.method public ReloadBackground(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 16
    .parameter "path"
    .parameter "backbmp"

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 1250
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    .line 1252
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1254
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bSeamless:Z

    if-eqz v0, :cond_5a

    .line 1256
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 1257
    .local v1, objectData:[I
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/2addr v0, v3

    new-array v11, v0, [B

    .line 1258
    .local v11, objectMask:[B
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1262
    const/4 v9, 0x0

    .local v9, j:I
    :goto_32
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    if-lt v9, v0, :cond_5b

    .line 1276
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgHeight:I

    move-object v2, v11

    invoke-static/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->run_copyobject([I[BII[III)V

    .line 1278
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1279
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectBmp:Landroid/graphics/Bitmap;

    move-object v1, v12

    .line 1281
    check-cast v1, [I

    .line 1282
    check-cast v12, [B

    .line 1284
    .end local v1           #objectData:[I
    .end local v9           #j:I
    .end local v11           #objectMask:[B
    :cond_5a
    return-void

    .line 1264
    .restart local v1       #objectData:[I
    .restart local v9       #j:I
    .restart local v11       #objectMask:[B
    :cond_5b
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5c
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    if-lt v8, v0, :cond_63

    .line 1262
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 1266
    :cond_63
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v8

    aget v10, v1, v0

    .line 1267
    .local v10, maskvalue:I
    const/high16 v0, -0x100

    and-int/2addr v10, v0

    .line 1269
    if-eqz v10, :cond_78

    .line 1270
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v8

    const/4 v3, 0x1

    aput-byte v3, v11, v0

    .line 1264
    :goto_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    .line 1272
    :cond_78
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v8

    aput-byte v2, v11, v0

    goto :goto_75
.end method

.method public SetBackImgInCopyTo(IIIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 15
    .parameter "swidth"
    .parameter "sheight"
    .parameter "sotherwidth"
    .parameter "sotherheight"
    .parameter "bmp_port"
    .parameter "bmp_land"

    .prologue
    const/4 v2, 0x0

    .line 1288
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_port:[I

    .line 1289
    mul-int v0, p3, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_land:[I

    .line 1291
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_port:[I

    move-object v0, p5

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1292
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_land:[I

    move-object v0, p6

    move v3, p3

    move v4, v2

    move v5, v2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1293
    return-void
.end method

.method public SetCenterPt(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 395
    return-void
.end method

.method public SetDestROI(IIII)V
    .registers 12
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    .line 369
    .local v4, offset_x:I
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x2

    .line 372
    .local v5, offset_y:I
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 373
    .local v6, pt:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 374
    const/4 v6, 0x0

    .line 376
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 377
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 378
    const/4 v6, 0x0

    .line 380
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 381
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 382
    const/4 v6, 0x0

    .line 384
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 385
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 386
    const/4 v6, 0x0

    .line 388
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 389
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 390
    return-void
.end method

.method public StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;[I)V
    .registers 51
    .parameter "x"
    .parameter "y"
    .parameter "imgInfo"
    .parameter "preview"

    .prologue
    .line 677
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 678
    .local v28, objectROI:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v37

    .line 679
    .local v37, width:I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v26

    .line 681
    .local v26, height:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    sub-float v2, p1, v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 682
    .local v30, offsetx:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    sub-float v2, p2, v2

    float-to-int v0, v2

    move/from16 v31, v0

    .line 684
    .local v31, offsety:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1a5

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    move/from16 v0, p1

    float-to-int v3, v0

    move/from16 v0, p2

    float-to-int v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartPT:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndPT:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v5

    .line 691
    .local v5, angle:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v32

    .line 692
    .local v32, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 693
    const/16 v32, 0x0

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v32

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 697
    const/16 v32, 0x0

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v32

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 701
    const/16 v32, 0x0

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v32

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 705
    const/16 v32, 0x0

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_196

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_196

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_196

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_196

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_196

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_196

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_196

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_196

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_196

    .line 715
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    .line 1145
    .end local v5           #angle:I
    .end local v32           #pt:Landroid/graphics/Point;
    :cond_196
    :goto_196
    const/16 v28, 0x0

    .line 1147
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    .line 1148
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    .line 1149
    return-void

    .line 717
    :cond_1a5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    if-lez v2, :cond_196

    .line 719
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_407

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int v38, v2, v30

    .line 722
    .local v38, x1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int v42, v2, v31

    .line 723
    .local v42, y1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int v39, v2, v30

    .line 724
    .local v39, x2:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int v43, v2, v31

    .line 725
    .local v43, y2:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int v40, v2, v30

    .line 726
    .local v40, x3:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int v44, v2, v31

    .line 727
    .local v44, y3:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int v41, v2, v30

    .line 728
    .local v41, x4:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int v45, v2, v31

    .line 730
    .local v45, y4:I
    if-ltz v38, :cond_232

    add-int/lit8 v2, v37, -0x1

    move/from16 v0, v38

    if-gt v0, v2, :cond_232

    .line 731
    if-ltz v39, :cond_232

    add-int/lit8 v2, v37, -0x1

    move/from16 v0, v39

    if-gt v0, v2, :cond_232

    .line 732
    if-ltz v40, :cond_232

    add-int/lit8 v2, v37, -0x1

    move/from16 v0, v40

    if-gt v0, v2, :cond_232

    .line 733
    if-ltz v41, :cond_232

    add-int/lit8 v2, v37, -0x1

    move/from16 v0, v41

    if-gt v0, v2, :cond_232

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move/from16 v0, v38

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move/from16 v0, v39

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move/from16 v0, v40

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move/from16 v0, v41

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 742
    :cond_232
    if-ltz v42, :cond_272

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v42

    if-gt v0, v2, :cond_272

    .line 743
    if-ltz v43, :cond_272

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v43

    if-gt v0, v2, :cond_272

    .line 744
    if-ltz v44, :cond_272

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v44

    if-gt v0, v2, :cond_272

    .line 745
    if-ltz v45, :cond_272

    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v45

    if-gt v0, v2, :cond_272

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move/from16 v0, v42

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move/from16 v0, v43

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move/from16 v0, v44

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move/from16 v0, v45

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 754
    :cond_272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v29, v2, 0x1

    .line 755
    .local v29, objectW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v27, v2, 0x1

    .line 757
    .local v27, objectH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v28

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v28

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v28

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v28

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(Landroid/graphics/Point;III)Landroid/graphics/Point;

    move-result-object v32

    .line 768
    .restart local v32       #pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_386

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 771
    :cond_386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 774
    :cond_39f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v29

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v27

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move/from16 v0, v37

    if-lt v2, v0, :cond_3e1

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v3, v37, -0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, v29

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 783
    :cond_3e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v26

    if-lt v2, v0, :cond_403

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v3, v26, -0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v3, v27

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 789
    :cond_403
    const/16 v32, 0x0

    goto/16 :goto_196

    .line 792
    .end local v27           #objectH:I
    .end local v29           #objectW:I
    .end local v32           #pt:Landroid/graphics/Point;
    .end local v38           #x1:I
    .end local v39           #x2:I
    .end local v40           #x3:I
    .end local v41           #x4:I
    .end local v42           #y1:I
    .end local v43           #y2:I
    .end local v44           #y3:I
    .end local v45           #y4:I
    :cond_407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_534

    .line 794
    move/from16 v0, p1

    float-to-int v7, v0

    move/from16 v0, p2

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 795
    .local v22, CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 797
    .local v23, CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v30, v2, v3

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v7, v2, v30

    .line 800
    .local v7, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    add-int/lit8 v25, v2, 0x1

    .line 802
    .local v25, dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-ge v0, v2, :cond_522

    .line 803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v25, v2, 0x2

    .line 807
    :cond_477
    :goto_477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, v25

    add-int/lit8 v7, v2, 0x1

    .line 809
    if-gez v7, :cond_484

    .line 810
    const/4 v7, 0x0

    .line 812
    :cond_484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v33

    .line 813
    .local v33, pt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v11, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v36

    .line 815
    .local v36, pt4:Landroid/graphics/Point;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_518

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_518

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_518

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_518

    .line 817
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_518

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_518

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_518

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_518

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v33

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 825
    :cond_518
    const/16 v33, 0x0

    .line 826
    const/16 v36, 0x0

    .line 828
    const/16 v22, 0x0

    .line 829
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 804
    .end local v33           #pt1:Landroid/graphics/Point;
    .end local v36           #pt4:Landroid/graphics/Point;
    :cond_522
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-le v0, v2, :cond_477

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v25, v2, 0x2

    goto/16 :goto_477

    .line 831
    .end local v7           #left:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v25           #dwidth:I
    :cond_534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_661

    .line 833
    move/from16 v0, p1

    float-to-int v9, v0

    move/from16 v0, p2

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 834
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 836
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v31, v2, v3

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v2, v31

    .line 839
    .local v10, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v10

    add-int/lit8 v24, v2, 0x1

    .line 841
    .local v24, dheight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v0, v2, :cond_64f

    .line 842
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v24, v2, 0x2

    .line 846
    :cond_5a4
    :goto_5a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v24

    add-int/lit8 v10, v2, 0x1

    .line 848
    if-gez v10, :cond_5b1

    .line 849
    const/4 v10, 0x0

    .line 851
    :cond_5b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v33

    .line 852
    .restart local v33       #pt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v34

    .line 854
    .local v34, pt2:Landroid/graphics/Point;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_645

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_645

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_645

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_645

    .line 856
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_645

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_645

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_645

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_645

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v33

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 864
    :cond_645
    const/16 v33, 0x0

    .line 865
    const/16 v34, 0x0

    .line 867
    const/16 v22, 0x0

    .line 868
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 843
    .end local v33           #pt1:Landroid/graphics/Point;
    .end local v34           #pt2:Landroid/graphics/Point;
    :cond_64f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-le v0, v2, :cond_5a4

    .line 844
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v24, v2, 0x2

    goto/16 :goto_5a4

    .line 870
    .end local v10           #top:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v24           #dheight:I
    :cond_661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_79a

    .line 872
    move/from16 v0, p1

    float-to-int v12, v0

    move/from16 v0, p2

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v15, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 873
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v15, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 875
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v30, v2, v3

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v12, v2, v30

    .line 878
    .local v12, right:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v12, v2

    add-int/lit8 v25, v2, 0x1

    .line 880
    .restart local v25       #dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-ge v0, v2, :cond_788

    .line 881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v25, v2, 0x2

    .line 885
    :cond_6d6
    :goto_6d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v25

    add-int/lit8 v12, v2, -0x1

    .line 887
    add-int/lit8 v2, v37, -0x1

    if-le v12, v2, :cond_6e6

    .line 888
    add-int/lit8 v12, v37, -0x1

    .line 890
    :cond_6e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v15, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v34

    .line 891
    .restart local v34       #pt2:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v15, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v35

    .line 893
    .local v35, pt3:Landroid/graphics/Point;
    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_77e

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_77e

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_77e

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_77e

    .line 895
    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_77e

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_77e

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_77e

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_77e

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v12, v2, Landroid/graphics/Rect;->right:I

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 903
    :cond_77e
    const/16 v34, 0x0

    .line 904
    const/16 v35, 0x0

    .line 906
    const/16 v22, 0x0

    .line 907
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 882
    .end local v34           #pt2:Landroid/graphics/Point;
    .end local v35           #pt3:Landroid/graphics/Point;
    :cond_788
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-le v0, v2, :cond_6d6

    .line 883
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v25, v2, 0x2

    goto/16 :goto_6d6

    .line 909
    .end local v12           #right:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v25           #dwidth:I
    :cond_79a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8e3

    .line 911
    move/from16 v0, p1

    float-to-int v14, v0

    move/from16 v0, p2

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 912
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 914
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v31, v2, v3

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v15, v2, v31

    .line 917
    .local v15, bottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v15, v2

    add-int/lit8 v24, v2, 0x1

    .line 919
    .restart local v24       #dheight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v0, v2, :cond_8d1

    .line 920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v24, v2, 0x2

    .line 924
    :cond_817
    :goto_817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v24

    add-int/lit8 v15, v2, -0x1

    .line 926
    add-int/lit8 v2, v26, -0x1

    if-le v15, v2, :cond_827

    .line 927
    add-int/lit8 v15, v26, -0x1

    .line 929
    :cond_827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v35

    .line 930
    .restart local v35       #pt3:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v36

    .line 932
    .restart local v36       #pt4:Landroid/graphics/Point;
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_8c7

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_8c7

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_8c7

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_8c7

    .line 934
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_8c7

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_8c7

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_8c7

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_8c7

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 942
    :cond_8c7
    const/16 v35, 0x0

    .line 943
    const/16 v36, 0x0

    .line 945
    const/16 v22, 0x0

    .line 946
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 921
    .end local v35           #pt3:Landroid/graphics/Point;
    .end local v36           #pt4:Landroid/graphics/Point;
    :cond_8d1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-le v0, v2, :cond_817

    .line 922
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v24, v2, 0x2

    goto/16 :goto_817

    .line 948
    .end local v15           #bottom:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v24           #dheight:I
    :cond_8e3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b00

    .line 950
    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 951
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 953
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v30, v2, v3

    .line 954
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v31, v2, v3

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v7, v2, v30

    .line 957
    .restart local v7       #left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    add-int/lit8 v25, v2, 0x1

    .line 959
    .restart local v25       #dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-ge v0, v2, :cond_adc

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v25, v2, 0x2

    .line 964
    :cond_971
    :goto_971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, v25

    add-int/lit8 v7, v2, 0x1

    .line 966
    if-gez v7, :cond_97e

    .line 967
    const/4 v7, 0x0

    .line 969
    :cond_97e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v10, v2, v31

    .line 970
    .restart local v10       #top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v10

    add-int/lit8 v24, v2, 0x1

    .line 972
    .restart local v24       #dheight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v0, v2, :cond_aee

    .line 973
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v24, v2, 0x2

    .line 977
    :cond_99f
    :goto_99f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v24

    add-int/lit8 v10, v2, 0x1

    .line 979
    if-gez v10, :cond_9ac

    .line 980
    const/4 v10, 0x0

    .line 982
    :cond_9ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v33

    .line 983
    .restart local v33       #pt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v34

    .line 984
    .restart local v34       #pt2:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v36

    .line 986
    .restart local v36       #pt4:Landroid/graphics/Point;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_a74

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_a74

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_a74

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_a74

    .line 988
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_a74

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_a74

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_a74

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_a74

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v33

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 996
    :cond_a74
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_ad0

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_ad0

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_ad0

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_ad0

    .line 998
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_ad0

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_ad0

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_ad0

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_ad0

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v33

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1006
    :cond_ad0
    const/16 v33, 0x0

    .line 1007
    const/16 v34, 0x0

    .line 1008
    const/16 v36, 0x0

    .line 1010
    const/16 v22, 0x0

    .line 1011
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 961
    .end local v10           #top:I
    .end local v24           #dheight:I
    .end local v33           #pt1:Landroid/graphics/Point;
    .end local v34           #pt2:Landroid/graphics/Point;
    .end local v36           #pt4:Landroid/graphics/Point;
    :cond_adc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-le v0, v2, :cond_971

    .line 962
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v25, v2, 0x2

    goto/16 :goto_971

    .line 974
    .restart local v10       #top:I
    .restart local v24       #dheight:I
    :cond_aee
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-le v0, v2, :cond_99f

    .line 975
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v24, v2, 0x2

    goto/16 :goto_99f

    .line 1013
    .end local v7           #left:I
    .end local v10           #top:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v24           #dheight:I
    .end local v25           #dwidth:I
    :cond_b00
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_d1e

    .line 1015
    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 1016
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 1018
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v30, v2, v3

    .line 1019
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v31, v2, v3

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int v12, v2, v30

    .line 1022
    .restart local v12       #right:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v12, v2

    add-int/lit8 v25, v2, 0x1

    .line 1024
    .restart local v25       #dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-ge v0, v2, :cond_cfa

    .line 1025
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v25, v2, 0x2

    .line 1029
    :cond_b8f
    :goto_b8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v25

    add-int/lit8 v12, v2, -0x1

    .line 1031
    add-int/lit8 v2, v37, -0x1

    if-le v12, v2, :cond_b9f

    .line 1032
    add-int/lit8 v12, v37, -0x1

    .line 1034
    :cond_b9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v15, v2, v31

    .line 1035
    .restart local v15       #bottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v15, v2

    add-int/lit8 v24, v2, 0x1

    .line 1037
    .restart local v24       #dheight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v0, v2, :cond_d0c

    .line 1038
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v24, v2, 0x2

    .line 1042
    :cond_bc1
    :goto_bc1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v24

    add-int/lit8 v15, v2, -0x1

    .line 1044
    add-int/lit8 v2, v26, -0x1

    if-le v15, v2, :cond_bd1

    .line 1045
    add-int/lit8 v15, v26, -0x1

    .line 1047
    :cond_bd1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    move/from16 v17, v12

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v34

    .line 1048
    .restart local v34       #pt2:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    move v14, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v35

    .line 1049
    .restart local v35       #pt3:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v36

    .line 1051
    .restart local v36       #pt4:Landroid/graphics/Point;
    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_c92

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_c92

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_c92

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_c92

    .line 1053
    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_c92

    move-object/from16 v0, v34

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_c92

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_c92

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_c92

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v12, v2, Landroid/graphics/Rect;->right:I

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1061
    :cond_c92
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_cee

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_cee

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_cee

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_cee

    .line 1063
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_cee

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_cee

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_cee

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_cee

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1071
    :cond_cee
    const/16 v34, 0x0

    .line 1072
    const/16 v35, 0x0

    .line 1073
    const/16 v36, 0x0

    .line 1075
    const/16 v22, 0x0

    .line 1076
    const/16 v23, 0x0

    goto/16 :goto_196

    .line 1026
    .end local v15           #bottom:I
    .end local v24           #dheight:I
    .end local v34           #pt2:Landroid/graphics/Point;
    .end local v35           #pt3:Landroid/graphics/Point;
    .end local v36           #pt4:Landroid/graphics/Point;
    :cond_cfa
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-le v0, v2, :cond_b8f

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v25, v2, 0x2

    goto/16 :goto_b8f

    .line 1039
    .restart local v15       #bottom:I
    .restart local v24       #dheight:I
    :cond_d0c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-le v0, v2, :cond_bc1

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v24, v2, 0x2

    goto/16 :goto_bc1

    .line 1078
    .end local v12           #right:I
    .end local v15           #bottom:I
    .end local v22           #CurrPt1:Landroid/graphics/Point;
    .end local v23           #CurrPt2:Landroid/graphics/Point;
    .end local v24           #dheight:I
    .end local v25           #dwidth:I
    :cond_d1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->TouchType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_196

    .line 1080
    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v22

    .line 1081
    .restart local v22       #CurrPt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevX:F

    float-to-int v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->prevY:F

    float-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    neg-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v23

    .line 1083
    .restart local v23       #CurrPt2:Landroid/graphics/Point;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v30, v2, v3

    .line 1084
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v31, v2, v3

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v7, v2, v30

    .line 1087
    .restart local v7       #left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    add-int/lit8 v25, v2, 0x1

    .line 1089
    .restart local v25       #dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-ge v0, v2, :cond_f13

    .line 1090
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    div-int/lit8 v25, v2, 0x2

    .line 1094
    :cond_dad
    :goto_dad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, v25

    add-int/lit8 v7, v2, 0x1

    .line 1096
    if-gez v7, :cond_dba

    .line 1097
    const/4 v7, 0x0

    .line 1099
    :cond_dba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v15, v2, v31

    .line 1100
    .restart local v15       #bottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v15, v2

    add-int/lit8 v24, v2, 0x1

    .line 1102
    .restart local v24       #dheight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v0, v2, :cond_f25

    .line 1103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    div-int/lit8 v24, v2, 0x2

    .line 1107
    :cond_ddc
    :goto_ddc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v24

    add-int/lit8 v15, v2, -0x1

    .line 1109
    add-int/lit8 v2, v26, -0x1

    if-le v15, v2, :cond_dec

    .line 1110
    add-int/lit8 v15, v26, -0x1

    .line 1112
    :cond_dec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v16, p0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v33

    .line 1113
    .restart local v33       #pt1:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v35

    .line 1114
    .restart local v35       #pt3:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->CenterPT:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    move v14, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetRotationPoint(IIIII)Landroid/graphics/Point;

    move-result-object v36

    .line 1116
    .restart local v36       #pt4:Landroid/graphics/Point;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_ead

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_ead

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_ead

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_ead

    .line 1118
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_ead

    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_ead

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_ead

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_ead

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v33

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1126
    :cond_ead
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_f09

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_f09

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_f09

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v37, -0x1

    if-gt v2, v3, :cond_f09

    .line 1128
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_f09

    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_f09

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_f09

    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v26, -0x1

    if-gt v2, v3, :cond_f09

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1136
    :cond_f09
    const/16 v33, 0x0

    .line 1137
    const/16 v35, 0x0

    .line 1138
    const/16 v36, 0x0

    .line 1140
    const/16 v22, 0x0

    .line 1141
    goto/16 :goto_196

    .line 1091
    .end local v15           #bottom:I
    .end local v24           #dheight:I
    .end local v33           #pt1:Landroid/graphics/Point;
    .end local v35           #pt3:Landroid/graphics/Point;
    .end local v36           #pt4:Landroid/graphics/Point;
    :cond_f13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v25

    if-le v0, v2, :cond_dad

    .line 1092
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectWidth:I

    mul-int/lit8 v25, v2, 0x2

    goto/16 :goto_dad

    .line 1104
    .restart local v15       #bottom:I
    .restart local v24       #dheight:I
    :cond_f25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-le v0, v2, :cond_ddc

    .line 1105
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectHeight:I

    mul-int/lit8 v24, v2, 0x2

    goto/16 :goto_ddc
.end method

.method public run_blending_org(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V
    .registers 37
    .parameter "imgInfo"
    .parameter "objROI"
    .parameter "mask"

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bApply:Z

    if-nez v10, :cond_7

    .line 592
    :goto_6
    return-void

    .line 461
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v6

    .line 462
    .local v6, orgwidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v7

    .line 463
    .local v7, orgheight:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    .line 464
    .local v2, orgimg:[I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v3

    .line 466
    .local v3, orgmask:[B
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 467
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 468
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v6, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 470
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 471
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 472
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 474
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 475
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 476
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v6, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 478
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 479
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 480
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 482
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/lit8 v12, v10, 0x1

    .line 483
    .local v12, destWidth:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/lit8 v13, v10, 0x1

    .line 485
    .local v13, destHeight:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 486
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 487
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v6, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 489
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 490
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 491
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v6, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 493
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 494
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 495
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v14

    mul-float/2addr v11, v14

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 498
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 499
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    add-int/lit8 v11, v7, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v10

    const/high16 v11, 0x4040

    mul-float/2addr v10, v11

    float-to-int v0, v10

    move/from16 v30, v0

    .line 502
    .local v30, step:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    move/from16 v0, v30

    invoke-static {v3, v6, v7, v10, v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->set_object_region([BIILandroid/graphics/Rect;I)V

    .line 504
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .local v22, destROI:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 507
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 508
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 509
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt1:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt2:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt3:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestPt4:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 511
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 512
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 513
    add-int/lit8 v10, v6, -0x1

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 515
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 516
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 517
    add-int/lit8 v10, v7, -0x1

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 519
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 520
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 521
    add-int/lit8 v10, v6, -0x1

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 523
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 524
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 525
    add-int/lit8 v10, v7, -0x1

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 527
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/lit8 v8, v10, 0x1

    .line 528
    .local v8, TmpObjectWidth:I
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x1

    .line 530
    .local v9, TmpObjectHeight:I
    mul-int v10, v8, v9

    new-array v4, v10, [I

    .line 531
    .local v4, TmpObjectData:[I
    mul-int v10, v8, v9

    new-array v5, v10, [B

    .line 535
    .local v5, TmpObjectMask:[B
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Angle:I

    .line 536
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->OrgObjectROI:Landroid/graphics/Rect;

    .line 533
    invoke-static/range {v2 .. v13}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_n([I[B[I[BIIIIILandroid/graphics/Rect;II)V

    .line 538
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    if-eqz v10, :cond_392

    .line 540
    const/4 v10, 0x1

    new-array v0, v10, [I

    move-object/from16 v29, v0

    .line 541
    .local v29, rotate:[I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Lcom/sec/android/mimage/photoretouching/common/Image;->loadBitmap(Ljava/lang/String;[I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 542
    .local v31, tmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgPath:Ljava/lang/String;

    const/4 v11, 0x0

    aget v11, v29, v11

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10, v11, v14}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setImageBuff(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    .line 547
    .end local v29           #rotate:[I
    .end local v31           #tmp:Landroid/graphics/Bitmap;
    :cond_392
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v6

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v7

    .line 551
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->bSeamless:Z

    if-nez v10, :cond_3f8

    move-object v14, v4

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v6

    move/from16 v21, v7

    .line 552
    invoke-static/range {v14 .. v22}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->paste_object([I[I[B[IIIIILandroid/graphics/Rect;)V

    .line 559
    :goto_3b5
    const/16 v26, 0x0

    .local v26, i:I
    :goto_3b7
    mul-int v10, v6, v7

    move/from16 v0, v26

    if-lt v0, v10, :cond_41c

    .line 562
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 563
    .local v32, top:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 564
    .local v28, left:I
    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 565
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 566
    move-object/from16 v0, v22

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 567
    const/4 v10, 0x0

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 568
    const/16 v27, 0x0

    .local v27, j:I
    :goto_3dd
    move/from16 v0, v27

    if-lt v0, v9, :cond_422

    .line 584
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->setObjectROI(Landroid/graphics/Rect;)V

    .line 586
    const/4 v4, 0x0

    check-cast v4, [I

    .line 587
    const/4 v5, 0x0

    check-cast v5, [B

    .line 588
    const/16 v22, 0x0

    .line 590
    const/4 v2, 0x0

    check-cast v2, [I

    .line 591
    const/4 v3, 0x0

    check-cast v3, [B

    .line 592
    goto/16 :goto_6

    .line 557
    .end local v26           #i:I
    .end local v27           #j:I
    .end local v28           #left:I
    .end local v32           #top:I
    :cond_3f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_r:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_g:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Object_avg_b:I

    move/from16 v25, v0

    move-object v14, v4

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v6

    move/from16 v21, v7

    .line 555
    invoke-static/range {v14 .. v25}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->run_copypaste([I[I[B[IIIIILandroid/graphics/Rect;III)V

    goto :goto_3b5

    .line 560
    .restart local v26       #i:I
    :cond_41c
    const/4 v10, 0x0

    aput-byte v10, v3, v26

    .line 559
    add-int/lit8 v26, v26, 0x1

    goto :goto_3b7

    .line 570
    .restart local v27       #j:I
    .restart local v28       #left:I
    .restart local v32       #top:I
    :cond_422
    const/16 v26, 0x0

    :goto_424
    move/from16 v0, v26

    if-lt v0, v8, :cond_42b

    .line 568
    add-int/lit8 v27, v27, 0x1

    goto :goto_3dd

    .line 572
    :cond_42b
    mul-int v10, v27, v8

    add-int v10, v10, v26

    aget-byte v10, v5, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_475

    .line 574
    add-int v10, v27, v32

    mul-int/2addr v10, v6

    add-int v11, v26, v28

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    .line 576
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v26, v28

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 577
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->right:I

    add-int v11, v26, v28

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 578
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->top:I

    add-int v11, v27, v32

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 579
    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    add-int v11, v27, v32

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, v22

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 570
    :cond_475
    add-int/lit8 v26, v26, 0x1

    goto :goto_424
.end method
