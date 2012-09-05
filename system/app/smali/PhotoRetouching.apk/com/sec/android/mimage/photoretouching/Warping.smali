.class public Lcom/sec/android/mimage/photoretouching/Warping;
.super Ljava/lang/Object;
.source "Warping.java"


# instance fields
.field private DestROI:Landroid/graphics/Rect;

.field private OrgRegion:I

.field private OrgSrcROI:Landroid/graphics/Rect;

.field private center:Landroid/graphics/Point;

.field private destRegion:I

.field private dst_h:I

.field private dst_w:I

.field private mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field private org_h:I

.field private org_w:I

.field private pad_h:I

.field private pad_v:I

.field private r_dst_x:I

.field private r_dst_y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    .line 32
    return-void
.end method


# virtual methods
.method public Destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    .line 37
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    .line 38
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    .line 39
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 40
    return-void
.end method

.method public Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V
    .registers 7
    .parameter "r"
    .parameter "imginfo"
    .parameter "mask"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 46
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 48
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgRegion:I

    .line 50
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 51
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 53
    const/16 v0, 0x200

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_w:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_h:I

    .line 56
    return-void
.end method

.method public getDestRoi()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrgROI()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadHor()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->pad_h:I

    return v0
.end method

.method public getPadVer()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->pad_v:I

    return v0
.end method

.method public restore_warp_region([I[III)V
    .registers 26
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 190
    const/16 v18, 0x0

    const/16 v19, 0x0

    mul-int v20, p3, p4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 193
    .local v10, radX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 195
    .local v11, radY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->org_w:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->org_h:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .local v6, i:I
    :goto_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_8e

    .line 233
    return-void

    .line 199
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .local v7, j:I
    :goto_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_ab

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 200
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v8, v7, v18

    .line 201
    .local v8, m:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v9, v6, v18

    .line 203
    .local v9, n:I
    mul-int v18, v8, v8

    shl-int/lit8 v18, v18, 0xc

    mul-int v19, v10, v10

    div-int v18, v18, v19

    mul-int v19, v9, v9

    shl-int/lit8 v19, v19, 0xc

    mul-int v20, v11, v11

    div-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    rsub-int v5, v0, 0x1000

    .line 205
    .local v5, dist:I
    if-lez v5, :cond_16f

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_173

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x32

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    rsub-int v12, v0, 0x400

    .line 214
    .local v12, ratioX:I
    :goto_ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_19d

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x32

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    rsub-int v13, v0, 0x400

    .line 222
    .local v13, ratioY:I
    :goto_11f
    mul-int v18, v12, v8

    shr-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v16, v18, v19

    .line 223
    .local v16, tmpX:I
    mul-int v18, v13, v9

    shr-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 225
    .local v17, tmpY:I
    const/16 v18, 0x0

    add-int/lit8 v19, p3, -0x1

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 226
    .local v14, srcX:I
    const/16 v18, 0x0

    add-int/lit8 v19, p4, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 228
    .local v15, srcY:I
    mul-int v18, v6, p3

    add-int v18, v18, v7

    mul-int v19, v15, p3

    add-int v19, v19, v14

    aget v19, p1, v19

    aput v19, p2, v18

    .line 199
    .end local v12           #ratioX:I
    .end local v13           #ratioY:I
    .end local v14           #srcX:I
    .end local v15           #srcY:I
    .end local v16           #tmpX:I
    .end local v17           #tmpY:I
    :cond_16f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_98

    .line 209
    :cond_173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_185

    .line 210
    const/16 v12, 0x400

    .restart local v12       #ratioX:I
    goto/16 :goto_ff

    .line 212
    .end local v12           #ratioX:I
    :cond_185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, 0x200

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    add-int/lit16 v12, v0, 0x400

    .restart local v12       #ratioX:I
    goto/16 :goto_ff

    .line 216
    :cond_19d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1af

    .line 217
    const/16 v13, 0x400

    .restart local v13       #ratioY:I
    goto/16 :goto_11f

    .line 219
    .end local v13           #ratioY:I
    :cond_1af
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, 0x200

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    add-int/lit16 v13, v0, 0x400

    .restart local v13       #ratioY:I
    goto/16 :goto_11f
.end method

.method public setDestRoi(Landroid/graphics/Rect;)Z
    .registers 6
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 60
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_6

    .line 74
    :cond_5
    :goto_5
    return v0

    .line 61
    :cond_6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 62
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_5

    .line 63
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 65
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->destRegion:I

    .line 66
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    .line 67
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    .line 69
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->destRegion:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgRegion:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_5

    .line 70
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->destRegion:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgRegion:I

    mul-int/lit8 v2, v2, 0x4

    if-gt v1, v2, :cond_5

    .line 72
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setDestRoi(Landroid/graphics/Rect;I)Z
    .registers 8
    .parameter "r"
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 78
    if-ge p2, v4, :cond_4f

    .line 79
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_9

    .line 103
    :cond_8
    :goto_8
    return v0

    .line 80
    :cond_9
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 86
    :cond_13
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->destRegion:I

    .line 87
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    .line 88
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    .line 90
    if-ge p2, v4, :cond_5e

    .line 91
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_w:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_8

    .line 92
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_w:I

    mul-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_8

    .line 101
    :cond_48
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Warping;->DestROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    const/4 v0, 0x1

    goto :goto_8

    .line 82
    :cond_4f
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_8

    .line 83
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    if-lt v1, v2, :cond_13

    goto :goto_8

    .line 94
    :cond_5e
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_h:I

    mul-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_8

    .line 95
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->org_h:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_48

    goto :goto_8
.end method

.method public setPad(II)V
    .registers 3
    .parameter "p_h"
    .parameter "p_v"

    .prologue
    .line 117
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Warping;->pad_h:I

    .line 118
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Warping;->pad_v:I

    .line 119
    return-void
.end method

.method public warp_region([I[IIII)V
    .registers 27
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "type"

    .prologue
    .line 132
    const/16 v18, 0x0

    const/16 v19, 0x0

    mul-int v20, p3, p4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 135
    .local v10, radX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 137
    .local v11, radY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int/lit8 v20, p3, -0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int/lit8 v20, p4, -0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 142
    const/16 v18, 0x3

    move/from16 v0, p5

    move/from16 v1, v18

    if-ge v0, v1, :cond_f8

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_w:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->org_w:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    .line 148
    :goto_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .local v6, i:I
    :goto_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_10f

    .line 183
    return-void

    .line 145
    .end local v6           #i:I
    :cond_f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->dst_h:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->org_h:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    goto :goto_dd

    .line 149
    .restart local v6       #i:I
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .local v7, j:I
    :goto_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->OrgSrcROI:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_12c

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_e7

    .line 150
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v8, v7, v18

    .line 151
    .local v8, m:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v9, v6, v18

    .line 153
    .local v9, n:I
    mul-int v18, v8, v8

    shl-int/lit8 v18, v18, 0xc

    mul-int v19, v10, v10

    div-int v18, v18, v19

    mul-int v19, v9, v9

    shl-int/lit8 v19, v19, 0xc

    mul-int v20, v11, v11

    div-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    rsub-int v5, v0, 0x1000

    .line 155
    .local v5, dist:I
    if-lez v5, :cond_1f0

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1f4

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x32

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    rsub-int v12, v0, 0x400

    .line 164
    .local v12, ratioX:I
    :goto_180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_21e

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x32

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    rsub-int v13, v0, 0x400

    .line 172
    .local v13, ratioY:I
    :goto_1a0
    mul-int v18, v12, v8

    shr-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v16, v18, v19

    .line 173
    .local v16, tmpX:I
    mul-int v18, v13, v9

    shr-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->center:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 175
    .local v17, tmpY:I
    const/16 v18, 0x0

    add-int/lit8 v19, p3, -0x1

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 176
    .local v14, srcX:I
    const/16 v18, 0x0

    add-int/lit8 v19, p4, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 178
    .local v15, srcY:I
    mul-int v18, v6, p3

    add-int v18, v18, v7

    mul-int v19, v15, p3

    add-int v19, v19, v14

    aget v19, p1, v19

    aput v19, p2, v18

    .line 149
    .end local v12           #ratioX:I
    .end local v13           #ratioY:I
    .end local v14           #srcX:I
    .end local v15           #srcY:I
    .end local v16           #tmpX:I
    .end local v17           #tmpY:I
    :cond_1f0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_119

    .line 159
    :cond_1f4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_206

    .line 160
    const/16 v12, 0x400

    .restart local v12       #ratioX:I
    goto/16 :goto_180

    .line 162
    .end local v12           #ratioX:I
    :cond_206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, 0x200

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    add-int/lit16 v12, v0, 0x400

    .restart local v12       #ratioX:I
    goto/16 :goto_180

    .line 166
    :cond_21e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_230

    .line 167
    const/16 v13, 0x400

    .restart local v13       #ratioY:I
    goto/16 :goto_1a0

    .line 169
    .end local v13           #ratioY:I
    :cond_230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, 0x200

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    mul-int v18, v18, v5

    shr-int/lit8 v18, v18, 0xc

    move/from16 v0, v18

    add-int/lit16 v13, v0, 0x400

    .restart local v13       #ratioY:I
    goto/16 :goto_1a0
.end method

.method public warp_region_save([IIILandroid/graphics/Rect;)V
    .registers 28
    .parameter "in"
    .parameter "width"
    .parameter "height"
    .parameter "bdry"

    .prologue
    .line 320
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 325
    .local v5, center:Landroid/graphics/Point;
    mul-int v20, p2, p3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntAlloc(I)[I

    move-result-object v17

    .line 327
    .local v17, temp:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    mul-int v22, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 330
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v5, Landroid/graphics/Point;->y:I

    .line 331
    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v11, v20, v21

    .line 332
    .local v11, radX:I
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 334
    .local v12, radY:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 335
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int/lit8 v21, p2, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 336
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 337
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v21, p3, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 339
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, i:I
    :goto_aa
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_cc

    .line 375
    const/16 v20, 0x0

    const/16 v21, 0x0

    mul-int v22, p2, p3

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntRelease([I)I

    .line 378
    const/4 v5, 0x0

    .line 380
    return-void

    .line 340
    :cond_cc
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .local v8, j:I
    :goto_d0
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_dd

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    .line 341
    :cond_dd
    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v9, v8, v20

    .line 342
    .local v9, m:I
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v10, v7, v20

    .line 344
    .local v10, n:I
    mul-int v20, v9, v9

    shl-int/lit8 v20, v20, 0xc

    mul-int v21, v11, v11

    div-int v20, v20, v21

    mul-int v21, v10, v10

    shl-int/lit8 v21, v21, 0xc

    mul-int v22, v12, v12

    div-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    rsub-int v6, v0, 0x1000

    .line 346
    .local v6, dist:I
    if-lez v6, :cond_181

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_185

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, -0x32

    mul-int v20, v20, v6

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    rsub-int v13, v0, 0x400

    .line 355
    .local v13, ratioX:I
    :goto_121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1ae

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, -0x32

    mul-int v20, v20, v6

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    rsub-int v14, v0, 0x400

    .line 363
    .local v14, ratioY:I
    :goto_141
    mul-int v20, v13, v9

    shr-int/lit8 v20, v20, 0xa

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 364
    .local v18, tmpX:I
    mul-int v20, v14, v10

    shr-int/lit8 v20, v20, 0xa

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 366
    .local v19, tmpY:I
    const/16 v20, 0x0

    add-int/lit8 v21, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 367
    .local v15, srcX:I
    const/16 v20, 0x0

    add-int/lit8 v21, p3, -0x1

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 369
    .local v16, srcY:I
    mul-int v20, v7, p2

    add-int v20, v20, v8

    mul-int v21, v16, p2

    add-int v21, v21, v15

    aget v21, p1, v21

    aput v21, v17, v20

    .line 340
    .end local v13           #ratioX:I
    .end local v14           #ratioY:I
    .end local v15           #srcX:I
    .end local v16           #srcY:I
    .end local v18           #tmpX:I
    .end local v19           #tmpY:I
    :cond_181
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d0

    .line 350
    :cond_185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_196

    .line 351
    const/16 v13, 0x400

    .restart local v13       #ratioX:I
    goto :goto_121

    .line 353
    .end local v13           #ratioX:I
    :cond_196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x200

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    mul-int v20, v20, v6

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    add-int/lit16 v13, v0, 0x400

    .restart local v13       #ratioX:I
    goto/16 :goto_121

    .line 357
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1bf

    .line 358
    const/16 v14, 0x400

    .restart local v14       #ratioY:I
    goto :goto_141

    .line 360
    .end local v14           #ratioY:I
    :cond_1bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x200

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    mul-int v20, v20, v6

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    add-int/lit16 v14, v0, 0x400

    .restart local v14       #ratioY:I
    goto/16 :goto_141
.end method

.method public warp_region_save_partial([IIILandroid/graphics/Rect;)V
    .registers 28
    .parameter "in"
    .parameter "width"
    .parameter "height"
    .parameter "bdry"

    .prologue
    .line 237
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 243
    .local v4, center:Landroid/graphics/Point;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v3, v20, v21

    .line 244
    .local v3, b_width:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v2, v20, v21

    .line 247
    .local v2, b_height:I
    mul-int v20, v3, v2

    :try_start_23
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntAlloc(I)[I

    move-result-object v17

    .line 250
    .local v17, temp:[I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Point;->x:I

    .line 251
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Point;->y:I

    .line 252
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v11, v20, v21

    .line 253
    .local v11, radX:I
    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 255
    .local v12, radY:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 256
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int/lit8 v21, p2, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 257
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 258
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v21, p3, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 260
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, i:I
    :goto_b3
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_d0

    .line 299
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    :goto_c1
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_20d

    .line 306
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntRelease([I)I

    .line 309
    const/4 v4, 0x0

    .line 316
    .end local v7           #i:I
    .end local v11           #radX:I
    .end local v12           #radY:I
    .end local v17           #temp:[I
    :goto_cf
    return-void

    .line 261
    .restart local v7       #i:I
    .restart local v11       #radX:I
    .restart local v12       #radY:I
    .restart local v17       #temp:[I
    :cond_d0
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .local v8, j:I
    :goto_d4
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_e1

    .line 260
    add-int/lit8 v7, v7, 0x1

    goto :goto_b3

    .line 262
    :cond_e1
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v9, v8, v20

    .line 263
    .local v9, m:I
    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v10, v7, v20

    .line 265
    .local v10, n:I
    mul-int v20, v9, v9

    shl-int/lit8 v20, v20, 0xc

    mul-int v21, v11, v11

    div-int v20, v20, v21

    mul-int v21, v10, v10

    shl-int/lit8 v21, v21, 0xc

    mul-int v22, v12, v12

    div-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    rsub-int v5, v0, 0x1000

    .line 267
    .local v5, dist:I
    if-lez v5, :cond_1ed

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_199

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, -0x32

    mul-int v20, v20, v5

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    rsub-int v13, v0, 0x400

    .line 276
    .local v13, ratioX:I
    :goto_125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1c3

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, -0x32

    mul-int v20, v20, v5

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    rsub-int v14, v0, 0x400

    .line 284
    .local v14, ratioY:I
    :goto_145
    mul-int v20, v13, v9

    shr-int/lit8 v20, v20, 0xa

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 285
    .local v18, tmpX:I
    mul-int v20, v14, v10

    shr-int/lit8 v20, v20, 0xa

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 287
    .local v19, tmpY:I
    const/16 v20, 0x0

    add-int/lit8 v21, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 288
    .local v15, srcX:I
    const/16 v20, 0x0

    add-int/lit8 v21, p3, -0x1

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 291
    .local v16, srcY:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v20, v7, v20

    mul-int v20, v20, v3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, v8, v21

    add-int v20, v20, v21

    mul-int v21, v16, p2

    add-int v21, v21, v15

    aget v21, p1, v21

    aput v21, v17, v20

    .line 261
    .end local v13           #ratioX:I
    .end local v14           #ratioY:I
    .end local v15           #srcX:I
    .end local v16           #srcY:I
    .end local v18           #tmpX:I
    .end local v19           #tmpY:I
    :goto_195
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d4

    .line 271
    :cond_199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ab

    .line 272
    const/16 v13, 0x400

    .restart local v13       #ratioX:I
    goto/16 :goto_125

    .line 274
    .end local v13           #ratioX:I
    :cond_1ab
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_x:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x200

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    mul-int v20, v20, v5

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    add-int/lit16 v13, v0, 0x400

    .restart local v13       #ratioX:I
    goto/16 :goto_125

    .line 278
    :cond_1c3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    const/16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d5

    .line 279
    const/16 v14, 0x400

    .restart local v14       #ratioY:I
    goto/16 :goto_145

    .line 281
    .end local v14           #ratioY:I
    :cond_1d5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Warping;->r_dst_y:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x200

    move/from16 v20, v0

    shr-int/lit8 v20, v20, 0x2

    mul-int v20, v20, v5

    shr-int/lit8 v20, v20, 0xc

    move/from16 v0, v20

    add-int/lit16 v14, v0, 0x400

    .restart local v14       #ratioY:I
    goto/16 :goto_145

    .line 293
    .end local v13           #ratioX:I
    .end local v14           #ratioY:I
    :cond_1ed
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v20, v7, v20

    mul-int v20, v20, v3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, v8, v21

    add-int v20, v20, v21

    mul-int v21, v7, p2

    add-int v21, v21, v8

    aget v21, p1, v21

    aput v21, v17, v20

    goto :goto_195

    .line 311
    .end local v5           #dist:I
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v10           #n:I
    .end local v11           #radX:I
    .end local v12           #radY:I
    .end local v17           #temp:[I
    :catch_20a
    move-exception v6

    .line 312
    .local v6, e:Ljava/lang/Exception;
    goto/16 :goto_cf

    .line 300
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #i:I
    .restart local v11       #radX:I
    .restart local v12       #radY:I
    .restart local v17       #temp:[I
    :cond_20d
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .restart local v8       #j:I
    :goto_211
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_21f

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c1

    .line 301
    :cond_21f
    mul-int v20, v7, p2

    add-int v20, v20, v8

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, v7, v21

    mul-int v21, v21, v3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    add-int v21, v21, v22

    aget v21, v17, v21

    aput v21, p1, v20
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23b} :catch_20a

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_211
.end method
