.class final Lcom/sec/android/app/twlauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 41
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 52
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 53
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 154
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v11

    .line 155
    :try_start_3
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_18

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 157
    .local v7, resources:Landroid/content/res/Resources;
    const v10, 0x7f0b0016

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 160
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_18
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 161
    .local v9, width:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 163
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 164
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 166
    .local v0, bitmapHeight:I
    if-lez v9, :cond_b1

    if-lez v4, :cond_b1

    .line 167
    if-lt v9, v1, :cond_2c

    if-ge v4, v0, :cond_80

    .line 168
    :cond_2c
    int-to-float v10, v1

    int-to-float v12, v0

    div-float v6, v10, v12

    .line 170
    .local v6, ratio:F
    if-le v1, v0, :cond_77

    .line 171
    int-to-float v10, v9

    div-float/2addr v10, v6

    float-to-int v4, v10

    .line 176
    :cond_35
    :goto_35
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v9, v10, :cond_7d

    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v4, v10, :cond_7d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 178
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_41
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 179
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 180
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 181
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 183
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 184
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    sget v13, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v10, v12, v13, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v12, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v10, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    monitor-exit v11

    .line 203
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_76
    return-object v8

    .line 172
    .restart local v6       #ratio:F
    :cond_77
    if-le v0, v1, :cond_35

    .line 173
    int-to-float v10, v4

    mul-float/2addr v10, v6

    float-to-int v9, v10

    goto :goto_35

    .line 176
    :cond_7d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_41

    .line 188
    .end local v6           #ratio:F
    :cond_80
    if-lt v1, v9, :cond_84

    if-ge v0, v4, :cond_b1

    .line 189
    :cond_84
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    .restart local v2       #c:Landroid/graphics/Bitmap$Config;
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 191
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 192
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 193
    .restart local v5       #paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 195
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 196
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v3, p0, v10, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    monitor-exit v11

    goto :goto_76

    .line 201
    .end local v0           #bitmapHeight:I
    .end local v1           #bitmapWidth:I
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #height:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    :catchall_ae
    move-exception v10

    monitor-exit v11
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_ae

    throw v10

    .restart local v0       #bitmapHeight:I
    .restart local v1       #bitmapWidth:I
    .restart local v4       #height:I
    .restart local v9       #width:I
    :cond_b1
    :try_start_b1
    monitor-exit v11
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_ae

    move-object v8, p0

    .line 203
    goto :goto_76
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 25
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 69
    sget-object v21, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v21

    .line 70
    :try_start_3
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_23

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 72
    .local v15, resources:Landroid/content/res/Resources;
    const v20, 0x7f0b0016

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sput v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 75
    .end local v15           #resources:Landroid/content/res/Resources;
    :cond_23
    sget v17, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 76
    .local v17, width:I
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 78
    .local v9, height:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_cc

    .line 79
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 80
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 81
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 90
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_3c
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 91
    .local v12, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 93
    .local v11, iconHeight:I
    if-lez v17, :cond_ca

    if-lez v9, :cond_ca

    .line 94
    move/from16 v0, v17

    if-lt v0, v12, :cond_4e

    if-ge v9, v11, :cond_107

    .line 95
    :cond_4e
    int-to-float v0, v12

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v14, v20, v22

    .line 97
    .local v14, ratio:F
    if-le v12, v11, :cond_f5

    .line 98
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v9, v0

    .line 103
    :cond_62
    :goto_62
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v20

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_103

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_70
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v22, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 106
    .local v16, thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 107
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int v20, v20, v17

    div-int/lit8 v18, v20, 0x2

    .line 115
    .local v18, x:I
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int v20, v20, v9

    div-int/lit8 v19, v20, 0x2

    .line 116
    .local v19, y:I
    add-int v20, v18, v17

    add-int v22, v19, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p0
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p0, v10

    .line 135
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #ratio:F
    .end local v16           #thumb:Landroid/graphics/Bitmap;
    .end local v18           #x:I
    .end local v19           #y:I
    .restart local p0
    :cond_ca
    :goto_ca
    monitor-exit v21

    .line 137
    return-object p0

    .line 82
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    :cond_cc
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_3c

    .line 84
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 85
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 86
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    if-nez v20, :cond_3c

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_3c

    .line 135
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #height:I
    .end local v17           #width:I
    :catchall_f2
    move-exception v20

    monitor-exit v21
    :try_end_f4
    .catchall {:try_start_3 .. :try_end_f4} :catchall_f2

    throw v20

    .line 99
    .restart local v9       #height:I
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    .restart local v17       #width:I
    :cond_f5
    if-le v11, v12, :cond_62

    .line 100
    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_62

    .line 103
    :cond_103
    :try_start_103
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_70

    .line 121
    .end local v14           #ratio:F
    :cond_107
    move/from16 v0, v17

    if-ge v12, v0, :cond_ca

    if-ge v11, v9, :cond_ca

    .line 122
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v22, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 124
    .restart local v16       #thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 125
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    sub-int v20, v17, v12

    div-int/lit8 v18, v20, 0x2

    .line 128
    .restart local v18       #x:I
    sub-int v20, v9, v11

    div-int/lit8 v19, v20, 0x2

    .line 129
    .restart local v19       #y:I
    add-int v20, v18, v12

    add-int v22, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_163
    .catchall {:try_start_103 .. :try_end_163} :catchall_f2

    .end local p0
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p0, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    goto/16 :goto_ca
.end method

.method static zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V
    .registers 9
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "requestLayout"

    .prologue
    .line 308
    if-ne p1, p2, :cond_3

    .line 335
    :cond_2
    :goto_2
    return-void

    .line 311
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 312
    .local v0, childCount:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, vf:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 322
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_f
    sub-int v4, v0, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1f

    .line 323
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 324
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 332
    .end local v2           #v:Landroid/view/View;
    :cond_1f
    if-eqz p3, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2
.end method
