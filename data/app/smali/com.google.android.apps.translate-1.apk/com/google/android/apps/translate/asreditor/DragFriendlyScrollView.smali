.class public Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;
.super Landroid/widget/ScrollView;
.source "DragFriendlyScrollView.java"


# static fields
.field private static final MAX_SCROLL_ANGLE:F = 0.34906584f

.field private static final MAX_SELECT_ANGLE:F = 1.0471976f

.field private static final MIN_MOVE_DISTANCE:F = 4900.0f

.field private static final MIN_SCROLL_SPEED:F = 21025.0f

.field private static final SCROLL_MODE_NON_SCROLLING:I = 0x2

.field private static final SCROLL_MODE_SCROLLING:I = 0x1

.field private static final SCROLL_MODE_UNDETECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DragFriendlyScrollView"


# instance fields
.field private mDragStartX:F

.field private mDragStartY:F

.field private mEventStartTime:J

.field private mScrollMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private updateScrollMode(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter "ev"

    .prologue
    const v11, 0x45992000

    .line 96
    iget v7, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v7, :cond_8

    .line 122
    :cond_7
    :goto_7
    return-void

    .line 101
    :cond_8
    iget v7, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mDragStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 102
    .local v3, dx:F
    iget v7, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mDragStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 103
    .local v4, dy:F
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float v2, v7, v8

    .line 105
    .local v2, distSquared:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mEventStartTime:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float v6, v7, v8

    .line 106
    .local v6, time:F
    div-float v5, v2, v6

    .line 107
    .local v5, speedSquared:F
    div-float v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 108
    .local v1, angleFromVertical:F
    const v7, 0x3fc90fdb

    sub-float v0, v7, v1

    .line 110
    .local v0, angleFromHorizontal:F
    const v7, 0x3eb2b8c2

    cmpg-float v7, v1, v7

    if-gez v7, :cond_5c

    cmpl-float v7, v2, v11

    if-lez v7, :cond_5c

    const v7, 0x46a44200

    cmpl-float v7, v5, v7

    if-lez v7, :cond_5c

    .line 114
    const-string v7, "DragFriendlyScrollView"

    const-string v8, "touch move  - scrolling"

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v7, 0x1

    iput v7, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_7

    .line 116
    :cond_5c
    const v7, 0x3f860a92

    cmpg-float v7, v0, v7

    if-gez v7, :cond_7

    cmpl-float v7, v2, v11

    if-lez v7, :cond_7

    .line 119
    const-string v7, "DragFriendlyScrollView"

    const-string v8, "touch move  - selecting"

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v7, 0x2

    iput v7, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_7
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 61
    .local v0, superResult:Z
    const-string v2, "DragFriendlyScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " super "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_47

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mDragStartX:F

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mDragStartY:F

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mEventStartTime:J

    .line 67
    iput v1, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    move v0, v1

    .line 92
    .end local v0           #superResult:Z
    :goto_46
    return v0

    .line 74
    .restart local v0       #superResult:Z
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->updateScrollMode(Landroid/view/MotionEvent;)V

    .line 77
    iget v2, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v2, :cond_6b

    .line 78
    iget v2, p0, Lcom/google/android/apps/translate/asreditor/DragFriendlyScrollView;->mScrollMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    .line 83
    const-string v1, "DragFriendlyScrollView"

    const-string v2, "onInterceptTouchEvent scroll mode"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 86
    :cond_62
    const-string v2, "DragFriendlyScrollView"

    const-string v3, "onInterceptTouchEvent select mode"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 87
    goto :goto_46

    :cond_6b
    move v0, v1

    .line 92
    goto :goto_46
.end method
