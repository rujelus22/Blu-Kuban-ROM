.class public Lcom/sec/android/app/clockpackage/alarm/CustomListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "CustomListView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mPaint:Landroid/graphics/Paint;

    .line 26
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x4000

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 57
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 64
    .local v5, width:F
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getCanvasShift()F

    move-result v3

    .line 67
    .local v3, shift:F
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3b

    .line 68
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v5, v6

    div-float v1, v6, v8

    .line 69
    .local v1, left:F
    const/4 v4, 0x0

    .line 70
    .local v4, top:F
    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f

    .line 71
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    div-float v4, v6, v8

    .line 77
    :cond_32
    :goto_32
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mBackground:Landroid/graphics/Bitmap;

    add-float v7, v4, v3

    iget-object v8, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    .end local v1           #left:F
    .end local v4           #top:F
    :cond_3b
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void

    .line 73
    .restart local v1       #left:F
    .restart local v4       #top:F
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->getChildCount()I

    move-result v2

    .line 74
    .local v2, nChildCount:I
    if-lez v2, :cond_32

    .line 75
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v4, v6

    goto :goto_32
.end method

.method public onWindowFocusChanged(Z)V
    .registers 11
    .parameter "hasWindowFocus"

    .prologue
    const/high16 v5, -0x4080

    .line 41
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    .line 43
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->DEBUG:Z

    if-eqz v2, :cond_21

    .line 44
    const-string v2, "CustomListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_21
    if-nez p1, :cond_32

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 50
    .local v8, ev:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .end local v0           #now:J
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_32
    return-void
.end method

.method public setOrientation(I)V
    .registers 5
    .parameter "orient"

    .prologue
    .line 33
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 34
    const-string v0, "CustomListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1c
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->mOrientation:I

    .line 37
    return-void
.end method
