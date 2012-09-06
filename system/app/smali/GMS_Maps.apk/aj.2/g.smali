.class public Laj/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj/p;
.implements Laj/q;


# instance fields
.field private a:Landroid/view/GestureDetector$OnGestureListener;

.field private b:Laj/n;

.field private c:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 58
    iput-object v0, p0, Laj/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 59
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p2, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 33
    iput-object p3, p0, Laj/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 34
    new-instance v0, Laj/n;

    invoke-direct {v0, p1, p0}, Laj/n;-><init>(Landroid/content/Context;Laj/q;)V

    iput-object v0, p0, Laj/g;->b:Laj/n;

    .line 35
    iget-object v0, p0, Laj/g;->b:Laj/n;

    invoke-virtual {v0, p0}, Laj/n;->a(Laj/p;)V

    .line 36
    iget-object v0, p0, Laj/g;->b:Laj/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laj/n;->a(Z)V

    .line 37
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Laj/g;->b:Laj/n;

    invoke-virtual {v0, p1}, Laj/n;->a(Z)V

    .line 51
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Laj/g;->b:Laj/n;

    invoke-virtual {v0, p1}, Laj/n;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Laj/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Laj/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Laj/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 90
    return-void
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Laj/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 105
    return-void
.end method
