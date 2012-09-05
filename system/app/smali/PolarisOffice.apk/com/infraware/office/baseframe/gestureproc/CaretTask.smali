.class Lcom/infraware/office/baseframe/gestureproc/CaretTask;
.super Ljava/lang/Object;
.source "EvCaretTask.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_EDIT_CURSOR_MODE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;
    }
.end annotation


# instance fields
.field LOG_CAT:Ljava/lang/String;

.field protected mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

.field protected mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mbCursor:Z

.field protected mbManualOnOff:Z


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 6
    .parameter "callbackListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "CaretTask"

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->LOG_CAT:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbCursor:Z

    .line 22
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbManualOnOff:Z

    .line 23
    new-instance v1, Lcom/infraware/office/util/EvMessageTimer;

    invoke-direct {v1}, Lcom/infraware/office/util/EvMessageTimer;-><init>()V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 24
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 25
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 28
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_48

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 36
    .local v0, colorMatrix:Landroid/graphics/ColorMatrix;
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 38
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 39
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z

    .line 40
    return-void

    .line 31
    :array_48
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z
    .registers 4
    .parameter "caretInfo"

    .prologue
    const/4 v0, 0x1

    .line 59
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v1}, Lcom/infraware/office/util/EvMessageTimer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_11

    .line 60
    iget v1, p1, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v1, v0, :cond_18

    .line 61
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->TimerOn()V

    .line 72
    :cond_10
    :goto_10
    return v0

    .line 66
    :cond_11
    iget v1, p1, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    if-eq v1, v0, :cond_10

    .line 69
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->TimerOff()V

    .line 72
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public CaretTaskfinalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 77
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 78
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 79
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 80
    return-void
.end method

.method public DrawCaret(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 16
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v10

    .line 86
    .local v10, caretInfo:Lcom/infraware/office/evengine/EV$CARET_INFO;
    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 87
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbCursor:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbManualOnOff:Z

    if-eqz v0, :cond_37

    .line 89
    :try_start_14
    new-instance v11, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v11, v0, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    .local v11, contentRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 91
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFontAtt:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_77

    .line 92
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 125
    .end local v9           #AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    .end local v11           #contentRect:Landroid/graphics/RectF;
    :cond_37
    :goto_37
    return-void

    .line 95
    .restart local v9       #AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    .restart local v11       #contentRect:Landroid/graphics/RectF;
    :cond_38
    iget v0, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    int-to-float v0, v0

    iget v2, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    int-to-float v2, v2

    iget v3, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v5, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v6, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v11, v0, v2, v3, v5}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 96
    iget v0, v11, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, v11, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-static {p2, v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, cursorBitmap:Landroid/graphics/Bitmap;
    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_6d} :catch_6e

    goto :goto_37

    .line 117
    .end local v1           #cursorBitmap:Landroid/graphics/Bitmap;
    .end local v9           #AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    .end local v11           #contentRect:Landroid/graphics/RectF;
    :catch_6e
    move-exception v12

    .line 118
    .local v12, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->LOG_CAT:Ljava/lang/String;

    const-string v2, "IllegalArgumentException : No caret within the content area"

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 102
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    .restart local v11       #contentRect:Landroid/graphics/RectF;
    :cond_77
    const/16 v0, 0x8

    :try_start_79
    new-array v4, v0, [F

    .line 103
    .local v4, verts:[F
    const/4 v0, 0x0

    iget v2, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    int-to-double v2, v2

    iget v5, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    int-to-double v5, v5

    const-wide v7, 0x4052c00000000000L

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v2, v5

    double-to-float v2, v2

    aput v2, v4, v0

    .line 104
    const/4 v0, 0x2

    const/4 v2, 0x0

    aget v2, v4, v2

    iget v3, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v4, v0

    .line 105
    const/4 v0, 0x4

    iget v2, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v3, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v4, v0

    .line 106
    const/4 v0, 0x6

    iget v2, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    int-to-float v2, v2

    aput v2, v4, v0

    .line 107
    const/4 v0, 0x1

    const/4 v2, 0x3

    iget v3, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    int-to-float v3, v3

    aput v3, v4, v2

    aput v3, v4, v0

    .line 108
    const/4 v0, 0x5

    const/4 v2, 0x7

    iget v3, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v5, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v4, v2

    aput v3, v4, v0

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_37

    .line 113
    iget v0, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v2, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    const/4 v3, 0x2

    aget v3, v4, v3

    const/4 v5, 0x6

    aget v5, v4, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, v10, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    invoke-static {p2, v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .restart local v1       #cursorBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    :try_end_e5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_e5} :catch_6e

    goto/16 :goto_37
.end method

.method protected TimerOff()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 48
    return-void
.end method

.method protected TimerOn()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x258

    .line 43
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mCaretTimer:Lcom/infraware/office/util/EvMessageTimer;

    new-instance v1, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;

    invoke-direct {v1, p0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask$DrawCaretTask;-><init>(Lcom/infraware/office/baseframe/gestureproc/CaretTask;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/util/EvMessageTimer;->schedule(Lcom/infraware/office/util/EvMessageTimerTask;JJ)V

    .line 44
    return-void
.end method

.method getManualOnOff()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbManualOnOff:Z

    return v0
.end method

.method setManualOnOff(Z)V
    .registers 2
    .parameter "bOnOff"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->mbManualOnOff:Z

    .line 56
    return-void
.end method
