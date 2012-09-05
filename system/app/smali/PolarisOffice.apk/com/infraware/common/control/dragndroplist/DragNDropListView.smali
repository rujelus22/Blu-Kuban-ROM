.class public Lcom/infraware/common/control/dragndroplist/DragNDropListView;
.super Landroid/widget/ListView;
.source "DragNDropListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/control/dragndroplist/DragNDropListView$DragNDropEventType;
    }
.end annotation


# static fields
.field private static FASTSPEED:I

.field private static SLOWSPEED:I


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field isRtol:Z

.field mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

.field private mDragMode:Z

.field private mDragPointOffset:I

.field mDragView:Landroid/widget/ImageView;

.field mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

.field private mEndPosition:I

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mLowerBound:I

.field mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

.field private mStartPosition:I

.field private mUpperBound:I

.field private prevY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x20

    sput v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->FASTSPEED:I

    .line 37
    const/16 v0, 0x8

    sput v0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->SLOWSPEED:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "DragNDropListView"

    iput-object v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->LOG_CAT:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    .line 30
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    .line 31
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mEndPosition:I

    .line 32
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    .line 33
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mUpperBound:I

    .line 34
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mLowerBound:I

    .line 35
    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->prevY:I

    .line 45
    iput-boolean v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->isRtol:Z

    .line 49
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setRtolFlag()V

    .line 50
    return-void
.end method

.method private adjustScrollBounds(I)V
    .registers 4
    .parameter "y"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getHeight()I

    move-result v0

    .line 192
    .local v0, nHeight:I
    div-int/lit8 v1, v0, 0x3

    if-lt p1, v1, :cond_c

    .line 193
    div-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mUpperBound:I

    .line 195
    :cond_c
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_18

    .line 196
    mul-int/lit8 v1, v0, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mLowerBound:I

    .line 199
    :cond_18
    return-void
.end method

.method private drag(II)V
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    .line 145
    iget-object v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    if-nez v7, :cond_6

    .line 186
    :cond_5
    :goto_5
    return-void

    .line 147
    :cond_6
    iget-object v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 148
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 149
    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    sub-int v7, p2, v7

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 150
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 151
    .local v1, mWindowManager:Landroid/view/WindowManager;
    iget-object v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v1, v7, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    if-eqz v7, :cond_5

    .line 155
    iget-object v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    const/4 v8, 0x0

    invoke-interface {v7, p1, p2, v8}, Lcom/infraware/common/control/dragndroplist/DragListener;->onDrag(IILandroid/widget/ListView;)V

    .line 158
    const/4 v5, 0x0

    .line 159
    .local v5, speed:I
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getHeight()I

    move-result v2

    .line 160
    .local v2, nHeight:I
    invoke-direct {p0, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->adjustScrollBounds(I)V

    .line 161
    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mLowerBound:I

    if-lt p2, v7, :cond_b5

    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->prevY:I

    if-le p2, v7, :cond_b5

    .line 162
    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mLowerBound:I

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    if-le p2, v7, :cond_b2

    sget v5, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->SLOWSPEED:I

    .line 168
    :cond_4a
    :goto_4a
    if-eqz v5, :cond_ae

    .line 169
    div-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v9, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->pointToPosition(II)I

    move-result v4

    .line 170
    .local v4, ref:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_62

    .line 171
    div-int/lit8 v7, v2, 0x2

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x40

    invoke-virtual {p0, v9, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->pointToPosition(II)I

    move-result v4

    .line 174
    :cond_62
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 175
    .local v6, v:Landroid/view/View;
    const-string v7, "DragNDropListView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DRAG! - ref:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v6, :cond_ae

    .line 178
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    .line 179
    .local v3, pos:I
    const-string v7, "DragNDropListView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DRAG! - pos:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pos-speed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sub-int v7, v3, v5

    invoke-virtual {p0, v4, v7}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->setSelectionFromTop(II)V

    .line 181
    invoke-virtual {p0, v6}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getPositionForView(Landroid/view/View;)I

    .line 184
    .end local v3           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_ae
    iput p2, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->prevY:I

    goto/16 :goto_5

    .line 162
    :cond_b2
    sget v5, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->FASTSPEED:I

    goto :goto_4a

    .line 164
    :cond_b5
    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mUpperBound:I

    if-gt p2, v7, :cond_4a

    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->prevY:I

    if-ge p2, v7, :cond_4a

    .line 165
    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge p2, v7, :cond_c7

    sget v7, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->FASTSPEED:I

    neg-int v5, v7

    :goto_c6
    goto :goto_4a

    :cond_c7
    sget v7, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->SLOWSPEED:I

    neg-int v5, v7

    goto :goto_c6
.end method

.method private startDrag(III)V
    .registers 15
    .parameter "nItemCurIndex"
    .parameter "itemIndex"
    .parameter "y"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 202
    invoke-direct {p0, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->stopDrag(I)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 204
    .local v2, item:Landroid/view/View;
    if-nez v2, :cond_d

    .line 233
    :goto_c
    return-void

    .line 205
    :cond_d
    invoke-virtual {v2, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 206
    iget-object v6, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    if-eqz v6, :cond_1b

    .line 207
    iget-object v6, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    iget-boolean v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    invoke-interface {v6, v2, p1, p2, v7}, Lcom/infraware/common/control/dragndroplist/DragListener;->onStartDrag(Landroid/view/View;IIZ)V

    .line 209
    :cond_1b
    invoke-virtual {v2, v10}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 212
    .local v4, mWindowParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x33

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 213
    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 214
    iget v6, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    sub-int v6, p3, v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 217
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 218
    const/16 v6, 0x398

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 223
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 224
    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 226
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 227
    .local v1, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 228
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 230
    const-string v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 231
    .local v3, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v3, v5, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iput-object v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    goto :goto_c
.end method

.method private stopDrag(I)V
    .registers 6
    .parameter "itemIndex"

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_31

    .line 237
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    if-eqz v1, :cond_12

    .line 238
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    invoke-virtual {p0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/infraware/common/control/dragndroplist/DragListener;->onStopDrag(Landroid/view/View;)V

    .line 239
    :cond_12
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 241
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iput-object v3, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    .line 245
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_31
    return-void
.end method


# virtual methods
.method public StopDrag()V
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    if-eqz v0, :cond_11

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    .line 93
    iget v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->stopDrag(I)V

    .line 96
    :cond_11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 257
    const-string v0, "DragNDropListView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnScrollChanged"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 259
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 101
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 102
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 106
    .local v3, y:I
    if-nez v0, :cond_22

    .line 107
    iget-boolean v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->isRtol:Z

    if-nez v5, :cond_2b

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    if-le v2, v5, :cond_2b

    .line 108
    iput-boolean v4, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    .line 113
    :cond_22
    :goto_22
    iget-boolean v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    if-nez v5, :cond_3c

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 140
    :cond_2a
    :goto_2a
    return v4

    .line 109
    :cond_2b
    iget-boolean v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->isRtol:Z

    if-eqz v5, :cond_22

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x5

    if-ge v2, v5, :cond_22

    .line 110
    iput-boolean v4, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    goto :goto_22

    .line 116
    :cond_3c
    packed-switch v0, :pswitch_data_9e

    .line 133
    :pswitch_3f
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragMode:Z

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->touchUpPointToPosition(II)I

    move-result v5

    iput v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mEndPosition:I

    .line 135
    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->stopDrag(I)V

    .line 136
    iget-object v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    if-eqz v5, :cond_2a

    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    if-eq v5, v7, :cond_2a

    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mEndPosition:I

    if-eq v5, v7, :cond_2a

    .line 137
    iget-object v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    iget v6, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    iget v7, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mEndPosition:I

    invoke-interface {v5, v6, v7}, Lcom/infraware/common/control/dragndroplist/DropListener;->onDrop(II)V

    goto :goto_2a

    .line 118
    :pswitch_68
    invoke-virtual {p0, v2, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->pointToPosition(II)I

    move-result v5

    iput v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    .line 119
    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    if-eq v5, v7, :cond_2a

    .line 120
    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v1, v5, v6

    .line 121
    .local v1, mItemPosition:I
    invoke-virtual {p0, v1}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    .line 122
    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragPointOffset:I

    .line 123
    iget v5, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mStartPosition:I

    invoke-direct {p0, v5, v1, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->startDrag(III)V

    .line 124
    invoke-direct {p0, v2, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->drag(II)V

    goto :goto_2a

    .line 128
    .end local v1           #mItemPosition:I
    :pswitch_9a
    invoke-direct {p0, v2, v3}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->drag(II)V

    goto :goto_2a

    .line 116
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_68
        :pswitch_3f
        :pswitch_9a
    .end packed-switch
.end method

.method public setDragListener(Lcom/infraware/common/control/dragndroplist/DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDragListener:Lcom/infraware/common/control/dragndroplist/DragListener;

    .line 67
    return-void
.end method

.method public setDropListener(Lcom/infraware/common/control/dragndroplist/DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mDropListener:Lcom/infraware/common/control/dragndroplist/DropListener;

    .line 59
    return-void
.end method

.method public setRemoveListener(Lcom/infraware/polarisoffice/common/RemoveListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->mRemoveListener:Lcom/infraware/polarisoffice/common/RemoveListener;

    .line 63
    return-void
.end method

.method public setRtolFlag()V
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->isRtol:Z

    .line 55
    return-void
.end method

.method public touchUpPointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->pointToPosition(II)I

    move-result v3

    .line 71
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    .line 73
    :try_start_7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v1, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getLastVisiblePosition()I

    move-result v2

    .line 75
    .local v2, lastVisiblePos:I
    invoke-virtual {p0, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 77
    invoke-virtual {p0}, Lcom/infraware/common/control/dragndroplist/DragNDropListView;->getBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 78
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_20} :catch_25

    move-result v4

    if-eqz v4, :cond_24

    .line 79
    move v3, v2

    .line 87
    .end local v0           #child:Landroid/view/View;
    .end local v1           #frame:Landroid/graphics/Rect;
    .end local v2           #lastVisiblePos:I
    :cond_24
    :goto_24
    return v3

    .line 81
    :catch_25
    move-exception v4

    goto :goto_24
.end method
