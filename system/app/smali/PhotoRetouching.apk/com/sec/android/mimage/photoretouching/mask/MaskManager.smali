.class public Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
.super Ljava/lang/Object;
.source "MaskManager.java"


# static fields
.field public static final BRUSH_ADD_MASK:I = 0x2

.field public static final BRUSH_DEL_MASK:I = 0x3

.field public static final SMART_ADD_MASK:I = 0x0

.field public static final SMART_DEL_MASK:I = 0x1


# instance fields
.field public brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

.field private buff:[B

.field private drawroi:Landroid/graphics/Rect;

.field private height:I

.field private imagebuff:[I

.field private objroi:Landroid/graphics/Rect;

.field private sBuff:[B

.field private sHeight:I

.field private sWidth:I

.field private scale:D

.field segmode:I

.field size:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    .line 35
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    .line 36
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    .line 37
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    .line 38
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    .line 40
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    .line 43
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->destroy_objectsel()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/mask/Brush;)V
    .registers 2
    .parameter "_brush"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 50
    return-void
.end method


# virtual methods
.method public SetWidthHeight(II)Z
    .registers 6
    .parameter "_width"
    .parameter "_height"

    .prologue
    const/4 v0, 0x1

    .line 90
    if-lez p1, :cond_5

    if-gtz p2, :cond_7

    .line 91
    :cond_5
    const/4 v0, 0x0

    .line 99
    :goto_6
    return v0

    .line 93
    :cond_7
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    .line 94
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    .line 96
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->init_objectsel(II)I

    .line 97
    const/16 v1, 0x3c

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_brush_size(II)V

    goto :goto_6
.end method

.method public begin([II)V
    .registers 7
    .parameter "_imagebuff"
    .parameter "_size"

    .prologue
    const v3, 0x1869f

    const/4 v2, 0x0

    const/16 v1, 0x1e

    .line 132
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    .line 135
    :cond_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    if-eqz v0, :cond_1e

    .line 136
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 153
    :cond_1e
    :goto_1e
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->size:I

    .line 154
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->imagebuff:[I

    .line 156
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->size:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->size:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_brush_size(II)V

    .line 158
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_fill_ROI(II)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 161
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 164
    return-void

    .line 138
    :pswitch_43
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->smartModeOn()Z

    move-result v0

    if-eqz v0, :cond_56

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    if-le v0, v1, :cond_56

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    if-le v0, v1, :cond_56

    .line 139
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    goto :goto_1e

    .line 141
    :cond_56
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    goto :goto_1e

    .line 145
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->smartModeOn()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    if-le v0, v1, :cond_6e

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    if-le v0, v1, :cond_6e

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    goto :goto_1e

    .line 148
    :cond_6e
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    goto :goto_1e

    .line 136
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_43
        :pswitch_5a
    .end packed-switch
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reset_objectsel([BII)V

    .line 64
    return-void
.end method

.method public end(II)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    .line 181
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 183
    :cond_a
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 184
    .local v4, currPt:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->imagebuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    .line 185
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    .line 186
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    .line 187
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    .line 184
    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->modify_objectsel([I[BIILandroid/graphics/Point;ILandroid/graphics/Rect;I)V

    .line 200
    .end local v4           #currPt:Landroid/graphics/Point;
    :cond_1e
    :goto_1e
    return-void

    .line 189
    :cond_1f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    if-eq v0, v7, :cond_28

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 191
    :cond_28
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->update_objectROI([BII)V

    goto :goto_1e
.end method

.method public getBuff()[B
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    return-object v0
.end method

.method public getDrawroi()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    return v0
.end method

.method public getObjroi()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSBuff(Z)[B
    .registers 10
    .parameter "update"

    .prologue
    .line 208
    if-eqz p1, :cond_7

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sHeight:I

    if-lt v0, v4, :cond_a

    .line 222
    .end local v0           #i:I
    :cond_7
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sBuff:[B

    return-object v4

    .line 211
    .restart local v0       #i:I
    :cond_a
    int-to-float v4, v0

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->scale:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 213
    .local v3, ypos:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_11
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sWidth:I

    if-lt v1, v4, :cond_18

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 214
    :cond_18
    int-to-float v4, v1

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->scale:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 216
    .local v2, xpos:I
    if-ltz v2, :cond_3a

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    if-ge v2, v4, :cond_3a

    if-ltz v3, :cond_3a

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    if-ge v3, v4, :cond_3a

    .line 217
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sBuff:[B

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 213
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    return v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    .line 127
    :cond_16
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 129
    return-void
.end method

.method public isOnMask(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_c

    .line 234
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public release()V
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->destroy_objectsel()V

    .line 60
    return-void
.end method

.method public set(II)Z
    .registers 7
    .parameter "_width"
    .parameter "_height"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    if-lez p1, :cond_6

    if-gtz p2, :cond_7

    .line 85
    :cond_6
    :goto_6
    return v0

    .line 71
    :cond_7
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    .line 72
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    .line 74
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    .line 76
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    if-eqz v2, :cond_6

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    .line 82
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->init_objectsel(II)I

    .line 83
    const/16 v0, 0x3c

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_brush_size(II)V

    move v0, v1

    .line 85
    goto :goto_6
.end method

.method public setObjectROI(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "roi"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_objectROI(Landroid/graphics/Rect;)V

    .line 56
    return-void
.end method

.method public setSMask(IIF)Z
    .registers 6
    .parameter "swidth"
    .parameter "sheight"
    .parameter "scale"

    .prologue
    .line 105
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->scale:D

    .line 106
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sWidth:I

    .line 107
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sHeight:I

    .line 109
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sBuff:[B

    if-eqz v0, :cond_e

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sBuff:[B

    .line 113
    :cond_e
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->sBuff:[B

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public update(III)Z
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "brush_width"

    .prologue
    .line 168
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 169
    .local v4, currPt:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->imagebuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->buff:[B

    .line 170
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->width:I

    .line 171
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->height:I

    .line 172
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->segmode:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->drawroi:Landroid/graphics/Rect;

    const/4 v7, 0x0

    .line 169
    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->modify_objectsel([I[BIILandroid/graphics/Point;ILandroid/graphics/Rect;I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->objroi:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
