.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;
.super Landroid/widget/RelativeLayout;
.source "ContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

.field mPressed:Z

.field private mPressedImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

    .line 37
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressedImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    .line 115
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 99
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 100
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->invalidate()V

    .line 105
    .end local v0           #action:I
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setOnSingleTapUpListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

    .line 29
    return-void
.end method

.method public setPressedImage(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressedImage:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void
.end method
