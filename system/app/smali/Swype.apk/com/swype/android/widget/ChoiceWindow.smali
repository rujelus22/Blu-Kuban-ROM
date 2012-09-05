.class public Lcom/swype/android/widget/ChoiceWindow;
.super Lcom/swype/android/widget/SwypeView;
.source "ChoiceWindow.java"


# instance fields
.field private bgColor:I

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private height:I

.field private myRect:Landroid/graphics/Rect;

.field protected path:Landroid/graphics/Path;

.field private textBoundsRect:Landroid/graphics/Rect;

.field private width:I

.field private winType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    .line 80
    return-void
.end method


# virtual methods
.method public getOffScreenBitmapSize()Lcom/swype/android/widget/ViewSize;
    .registers 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 145
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/swype/android/widget/ChoiceWindow;->core:Lcom/swype/android/jni/SwypeCore;

    const-string v2, "wcw_height"

    invoke-virtual {v1, v2}, Lcom/swype/android/jni/SwypeCore;->getParamAsInt(Ljava/lang/String;)I

    move-result v1

    .line 149
    if-nez v1, :cond_20

    .line 150
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 152
    :cond_20
    new-instance v2, Lcom/swype/android/widget/ViewSize;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    return-object v2
.end method

.method public getTextBounds(Ljava/lang/String;II)Landroid/graphics/Rect;
    .registers 11
    .parameter "text"
    .parameter "style"
    .parameter "horizontalAlign"

    .prologue
    const/4 v4, 0x0

    .line 348
    iget v2, p0, Lcom/swype/android/widget/ChoiceWindow;->defaultTextSize:F

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/swype/android/widget/ChoiceWindow;->setTextStyle(IFLjava/lang/String;II)V

    .line 353
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 354
    const/4 v0, 0x2

    if-ne p2, v0, :cond_67

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_67

    .line 358
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 359
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textPaint:Landroid/graphics/Paint;

    const-string v1, "W"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 362
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4b

    .line 363
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 364
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 366
    :cond_4b
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_67

    .line 367
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 368
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 371
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_67
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSize()Lcom/swype/android/widget/ViewSize;
    .registers 4

    .prologue
    .line 127
    new-instance v0, Lcom/swype/android/widget/ViewSize;

    iget v1, p0, Lcom/swype/android/widget/ChoiceWindow;->width:I

    iget v2, p0, Lcom/swype/android/widget/ChoiceWindow;->height:I

    invoke-direct {v0, v1, v2}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    return-object v0
.end method

.method public getWindowType()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    return v0
.end method

.method public init(IILcom/swype/android/jni/SwypeCore;)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "core"

    .prologue
    .line 96
    iput p1, p0, Lcom/swype/android/widget/ChoiceWindow;->width:I

    .line 97
    iput p2, p0, Lcom/swype/android/widget/ChoiceWindow;->height:I

    .line 98
    iput-object p3, p0, Lcom/swype/android/widget/ChoiceWindow;->core:Lcom/swype/android/jni/SwypeCore;

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->setChoiceWindowBg(I)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->init(I)V

    .line 101
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->setFontSize(I)V

    .line 102
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->setFontSizeBig(I)V

    .line 103
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    .line 108
    return-void
.end method

.method protected onBufferInitDraw()V
    .registers 4

    .prologue
    .line 208
    iget v0, p0, Lcom/swype/android/widget/ChoiceWindow;->bgColor:I

    shr-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_f

    .line 210
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    :goto_e
    return-void

    .line 213
    :cond_f
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/swype/android/widget/ChoiceWindow;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_e
.end method

.method protected onBufferRedraw()V
    .registers 16

    .prologue
    .line 222
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0, v11}, Lcom/swype/android/widget/PaintBuffer;->getAllFrames(Ljava/util/Collection;)V

    .line 226
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 227
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 228
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 231
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer$Frame;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_24

    .line 232
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->onBufferInitDraw()V

    .line 235
    :cond_24
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer$Frame;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_28
    :goto_28
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintCommand;

    .line 237
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v1

    .line 238
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    if-eq v1, v2, :cond_e

    .line 239
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWICON:Lcom/swype/android/widget/PaintCommandType;

    if-ne v1, v2, :cond_74

    .line 242
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_28

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v2

    .line 245
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v0

    .line 246
    iget-object v3, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 248
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_28

    .line 251
    :cond_74
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAPTILEDX:Lcom/swype/android/widget/PaintCommandType;

    if-ne v1, v2, :cond_cc

    .line 252
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_28

    .line 254
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v2

    .line 255
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v3

    .line 256
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v0

    .line 257
    iget-object v4, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    const/4 v2, 0x0

    :goto_a7
    if-ge v2, v0, :cond_28

    .line 260
    iget-object v3, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 261
    iget-object v3, p0, Lcom/swype/android/widget/ChoiceWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v3, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 263
    iget-object v3, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 267
    :cond_cc
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    if-ne v1, v2, :cond_14a

    .line 269
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_144

    const/4 v1, 0x1

    move v3, v1

    .line 272
    :goto_da
    iget-object v1, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v7

    .line 277
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    .line 278
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v8

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/swype/android/widget/ChoiceWindow;->textBoundsRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 288
    const/4 v0, 0x1

    if-ne v8, v0, :cond_147

    .line 289
    const/4 v0, 0x0

    move v10, v0

    .line 295
    :goto_131
    const/4 v0, 0x1

    .line 296
    iget v2, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1aa

    .line 297
    const/4 v0, 0x3

    move v9, v0

    .line 299
    :goto_139
    iget-object v2, p0, Lcom/swype/android/widget/ChoiceWindow;->myRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/swype/android/widget/ChoiceWindow;->defaultTextSize:F

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/swype/android/widget/ChoiceWindow;->drawText(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V

    goto/16 :goto_28

    .line 269
    :cond_144
    const/4 v1, 0x0

    move v3, v1

    goto :goto_da

    .line 292
    :cond_147
    const/4 v0, 0x2

    move v10, v0

    goto :goto_131

    .line 310
    :cond_14a
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType;

    if-ne v1, v2, :cond_28

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v1

    .line 312
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v2

    .line 313
    const/4 v3, 0x2

    .line 315
    iget-object v4, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 316
    const/4 v4, 0x0

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_162
    if-ge v3, v2, :cond_185

    .line 317
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v4

    .line 318
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v5

    .line 319
    if-nez v3, :cond_17d

    .line 320
    iget-object v7, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 316
    :goto_179
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_162

    .line 323
    :cond_17d
    iget-object v7, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_179

    .line 326
    :cond_185
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 328
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/swype/android/widget/ChoiceWindow;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/swype/android/widget/ChoiceWindow;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 334
    :cond_1a4
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0, v11}, Lcom/swype/android/widget/PaintBuffer;->checkinFrames(Ljava/util/Collection;)V

    .line 335
    return-void

    :cond_1aa
    move v9, v0

    goto :goto_139
.end method

.method public onChoiceWindowDrawBitmap(Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWICON:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 176
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p2, v1, v2

    aput p3, v1, v3

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 179
    return-void
.end method

.method public onChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAPTILEDX:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 186
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x3

    new-array v1, v1, [I

    aput p2, v1, v2

    aput p3, v1, v3

    const/4 v2, 0x2

    aput p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 189
    return-void
.end method

.method public onChoiceWindowDrawPolygon(I[S)V
    .registers 8
    .parameter "color"
    .parameter "points"

    .prologue
    const/4 v4, 0x2

    .line 197
    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/ChoiceWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 198
    .local v0, command:Lcom/swype/android/widget/PaintCommand;
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->ensureCapacity(I)V

    .line 199
    new-array v1, v4, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    array-length v3, p2

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 200
    invoke-virtual {v0, v4, p2}, Lcom/swype/android/widget/PaintCommand;->setIntParams(I[S)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 202
    return-void
.end method

.method public onChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 166
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 167
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    const/4 v3, 0x1

    :goto_1f
    aput v3, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    const/4 v2, 0x4

    aput p6, v1, v2

    const/4 v2, 0x5

    aput p7, v1, v2

    const/4 v2, 0x6

    aput p8, v1, v2

    const/4 v2, 0x7

    aput p9, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/ChoiceWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 169
    return-void

    .line 167
    :cond_3d
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V
    .registers 15
    .parameter "evtType"
    .parameter "x"
    .parameter "y"
    .parameter "pathId"
    .parameter "timestamp"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/swype/android/widget/ChoiceWindow;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/swype/android/jni/SwypeCore;->sendMouseEvent(ILcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 340
    return-void
.end method

.method public paintBufferUpdated(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "rect"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->invalidate()V

    .line 158
    return-void
.end method

.method public resize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iput p1, p0, Lcom/swype/android/widget/ChoiceWindow;->width:I

    .line 117
    iput p2, p0, Lcom/swype/android/widget/ChoiceWindow;->height:I

    .line 118
    invoke-virtual {p0}, Lcom/swype/android/widget/ChoiceWindow;->requestLayout()V

    .line 119
    return-void
.end method

.method public setChoiceWindowBg(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 135
    iput p1, p0, Lcom/swype/android/widget/ChoiceWindow;->bgColor:I

    .line 136
    return-void
.end method

.method public setWindowType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 87
    iput p1, p0, Lcom/swype/android/widget/ChoiceWindow;->winType:I

    .line 88
    return-void
.end method
