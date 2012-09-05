.class public Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;
.super Ljava/lang/Object;
.source "MusicPlayerBaseOnKeyListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v0, 0x1

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_37

    .line 15
    const/16 v2, 0x17

    if-eq p2, v2, :cond_17

    const/16 v2, 0x42

    if-ne p2, v2, :cond_37

    .line 16
    :cond_17
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v9}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 20
    .local v8, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 22
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .end local v8           #motionEvent:Landroid/view/MotionEvent;
    .end local v9           #r:Landroid/graphics/Rect;
    :cond_37
    return v4
.end method
