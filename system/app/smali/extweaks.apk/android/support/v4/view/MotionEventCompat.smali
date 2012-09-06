.class public Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field static final IMPL:Landroid/support/v4/view/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    .line 100
    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    .line 104
    :goto_c
    return-void

    .line 102
    :cond_d
    new-instance v0, Landroid/support/v4/view/o;

    invoke-direct {v0}, Landroid/support/v4/view/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .registers 3
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .registers 2
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/q;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
