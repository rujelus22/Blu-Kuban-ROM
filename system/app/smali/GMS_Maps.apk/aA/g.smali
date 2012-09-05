.class public LaA/g;
.super Ljava/lang/Object;

# interfaces
.implements LaA/p;
.implements LaA/q;


# instance fields
.field private a:Landroid/view/GestureDetector$OnGestureListener;

.field private b:LaA/n;

.field private c:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    iput-object v0, p0, LaA/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 6

    iput-object p2, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p3, p0, LaA/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    new-instance v0, LaA/n;

    invoke-direct {v0, p1, p0}, LaA/n;-><init>(Landroid/content/Context;LaA/q;)V

    iput-object v0, p0, LaA/g;->b:LaA/n;

    iget-object v0, p0, LaA/g;->b:LaA/n;

    invoke-virtual {v0, p0}, LaA/n;->a(LaA/p;)V

    iget-object v0, p0, LaA/g;->b:LaA/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaA/n;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->b:LaA/n;

    invoke-virtual {v0, p1}, LaA/n;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public h(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, LaA/g;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method
