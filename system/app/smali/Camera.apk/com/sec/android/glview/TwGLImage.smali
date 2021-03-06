.class public Lcom/sec/android/glview/TwGLImage;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLImage.java"


# instance fields
.field private mDimmed:Z

.field protected mImage:Lcom/sec/android/glview/TwGLTexture;

.field private mPressed:Z

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .registers 14
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 201
    if-eqz p6, :cond_1b

    .line 202
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 205
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_23

    .line 206
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 207
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .registers 14
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 144
    if-eqz p6, :cond_1b

    .line 145
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 148
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_23

    .line 149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 150
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V
    .registers 15
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "stretch"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 83
    if-eqz p7, :cond_1d

    .line 84
    if-eqz p6, :cond_26

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 91
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_25

    .line 92
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 93
    :cond_25
    return-void

    .line 87
    :cond_26
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_1d
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .registers 14
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 258
    if-eqz p6, :cond_1b

    .line 259
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 262
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_23

    .line 263
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 264
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 62
    if-eqz p4, :cond_16

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 65
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 66
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 67
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 180
    if-eqz p4, :cond_16

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 184
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 186
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 123
    if-eqz p4, :cond_16

    .line 124
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 127
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 128
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 129
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .registers 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 237
    if-eqz p4, :cond_16

    .line 238
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 241
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 243
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "glContext"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 161
    if-eqz p2, :cond_16

    .line 162
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 165
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 166
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 167
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .registers 5
    .parameter "glContext"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 104
    if-eqz p2, :cond_16

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 108
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 110
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .registers 5
    .parameter "glContext"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 46
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 218
    if-eqz p2, :cond_16

    .line 219
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 222
    :cond_16
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1e

    .line 223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 224
    :cond_1e
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 295
    :cond_c
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 296
    return-void
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 3
    .parameter "gl"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .registers 4

    .prologue
    .line 390
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 392
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_26

    .line 393
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_16

    .line 394
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 396
    :cond_16
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_26

    .line 397
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 400
    :cond_26
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 401
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_11

    .line 325
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 327
    :cond_11
    return-void
.end method

.method protected onLayoutUpdate()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdate()V

    .line 337
    :cond_9
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 3
    .parameter "gl"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 308
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public onReset()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 415
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->reset()V

    .line 416
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 344
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    if-eqz v2, :cond_7

    .line 362
    :cond_6
    :goto_6
    return v1

    .line 347
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_10

    .line 348
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    goto :goto_6

    .line 350
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_39

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    if-eqz v2, :cond_39

    .line 351
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 352
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_6

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 354
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 355
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_6

    .line 358
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_43

    .line 359
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    goto :goto_6

    .line 362
    :cond_43
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_6
.end method

.method public setDim(Z)V
    .registers 2
    .parameter "dim"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 274
    return-void
.end method

.method public setFlip(Z)V
    .registers 3
    .parameter "flip"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    .line 270
    :cond_9
    return-void
.end method

.method public setResourceOffset(FF)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getWidth()F

    move-result v1

    .line 367
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTexture;->getHeight()F

    move-result v0

    .line 369
    .local v0, imageHeight:F
    cmpl-float v2, p1, v1

    if-gtz v2, :cond_14

    cmpl-float v2, p2, v0

    if-lez v2, :cond_16

    .line 370
    :cond_14
    const/4 v2, 0x0

    .line 380
    :goto_15
    return v2

    .line 373
    :cond_16
    iput p1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 374
    iput p2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_43

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_43

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_43

    .line 378
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTexture;->moveLayoutAbsolute(FF)V

    .line 380
    :cond_43
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public setSampleSize(I)V
    .registers 3
    .parameter "sampleSize"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_11

    .line 278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    if-eqz v0, :cond_12

    .line 279
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLByteArrayTexture;->setSampleSize(I)V

    .line 284
    :cond_11
    :goto_11
    return-void

    .line 280
    :cond_12
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLFileTexture;

    if-eqz v0, :cond_11

    .line 281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLFileTexture;->setSampleSize(I)V

    goto :goto_11
.end method

.method public setSize(FF)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 405
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_c

    .line 408
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLTexture;->setSize(FF)V

    .line 410
    :cond_c
    return-void
.end method
