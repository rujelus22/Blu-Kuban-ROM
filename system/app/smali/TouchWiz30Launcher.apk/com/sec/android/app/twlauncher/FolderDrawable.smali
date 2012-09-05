.class public Lcom/sec/android/app/twlauncher/FolderDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FolderDrawable.java"


# instance fields
.field private mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoListSize:I

.field private mDrawFolderOnly:Z

.field private mFolderContentSize:I

.field private mIconNum:I

.field private mIconSize:F

.field private mIconXGap:F

.field private mIconYGap:F

.field private mIconYOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewOffsetX:F

.field private mPreviewOffsetY:F

.field private mTextColor:I

.field private mTextOffset:F

.field private mTextSizeLarge:F

.field private mTextSizeSmall:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V
    .registers 12
    .parameter "res"
    .parameter "ufi"
    .parameter "bitmap"
    .parameter "previewOffsetX"
    .parameter "previewOffsetY"
    .parameter "size"
    .parameter "xGap"
    .parameter "yGap"
    .parameter "yOffset"
    .parameter "textColor"

    .prologue
    .line 77
    invoke-direct {p0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mDrawFolderOnly:Z

    .line 79
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mFolderContentSize:I

    .line 80
    const v0, 0x7f0a0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconNum:I

    .line 81
    const v0, 0x7f0b006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextOffset:F

    .line 82
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextSizeSmall:F

    .line 83
    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextSizeLarge:F

    .line 85
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoList:Ljava/util/ArrayList;

    .line 86
    iput p4, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPreviewOffsetX:F

    .line 87
    iput p5, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPreviewOffsetY:F

    .line 88
    iput p6, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconSize:F

    .line 89
    iput p7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconXGap:F

    .line 90
    iput p8, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconYGap:F

    .line 91
    iput p9, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconYOffset:F

    .line 92
    iput p10, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextColor:I

    .line 94
    return-void
.end method

.method private createIntermediateBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "drawable"

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 160
    .local v4, oldBounds:Landroid/graphics/Rect;
    iget v6, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mFolderContentSize:I

    div-int/lit8 v5, v6, 0x2

    .line 161
    .local v5, width:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mFolderContentSize:I

    div-int/lit8 v3, v6, 0x2

    .line 162
    .local v3, height:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    .local v1, bounds:Landroid/graphics/Rect;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 165
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 170
    return-object v0
.end method

.method private getIconPreviewRect(IF)Landroid/graphics/Rect;
    .registers 8
    .parameter "i"
    .parameter "density"

    .prologue
    .line 152
    iget v2, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconNum:I

    rem-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconSize:F

    iget v4, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconXGap:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 153
    .local v0, x:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconNum:I

    div-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconSize:F

    iget v4, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconYGap:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconYOffset:F

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 155
    .local v1, y:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconSize:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mIconSize:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private setDrawFolderOnly(Z)V
    .registers 2
    .parameter "drawFolderOnly"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mDrawFolderOnly:Z

    .line 175
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    .line 99
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoListSize:I

    .line 102
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mDrawFolderOnly:Z

    if-eqz v7, :cond_17

    .line 103
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/FolderDrawable;->setDrawFolderOnly(Z)V

    .line 149
    :cond_16
    :goto_16
    return-void

    .line 105
    :cond_17
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoListSize:I

    if-eqz v7, :cond_16

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPreviewOffsetX:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPreviewOffsetY:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoListSize:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoListSize:I

    const/16 v8, 0x64

    if-ge v7, v8, :cond_91

    .line 117
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextSizeLarge:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    :goto_44
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextOffset:F

    mul-float/2addr v7, v10

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoListSize:I

    const/4 v8, 0x6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    .local v4, iconCnt:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .local v5, iconRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_77
    if-ge v3, v4, :cond_bb

    .line 129
    invoke-direct {p0, v3, v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;->getIconPreviewRect(IF)Landroid/graphics/Rect;

    move-result-object v5

    .line 131
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 132
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_99

    .line 133
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 119
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #i:I
    .end local v4           #iconCnt:I
    .end local v5           #iconRect:Landroid/graphics/Rect;
    :cond_91
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/FolderDrawable;->mTextSizeSmall:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_44

    .line 135
    .restart local v0       #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v3       #i:I
    .restart local v4       #iconCnt:I
    .restart local v5       #iconRect:Landroid/graphics/Rect;
    :cond_99
    iget-object v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Lcom/sec/android/app/twlauncher/FolderDrawable;

    if-eqz v7, :cond_a6

    .line 138
    iget-object v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v7, Lcom/sec/android/app/twlauncher/FolderDrawable;

    invoke-direct {v7, v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;->setDrawFolderOnly(Z)V

    .line 140
    :cond_a6
    iget-object v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/FolderDrawable;->createIntermediateBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8e

    .line 148
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_bb
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16
.end method
