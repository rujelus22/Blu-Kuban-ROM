.class final Landroid/support/v4/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/u;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
