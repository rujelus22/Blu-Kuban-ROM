.class public Lcom/sprint/w/installer/util/MotionEventUtils;
.super Ljava/lang/Object;
.source "MotionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/util/MotionEventUtils$WrappedStaticMotionEvent;
    }
.end annotation


# static fields
.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static sMultiTouchApiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 35
    :try_start_1
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_14

    .line 42
    .local v0, nsme:Ljava/lang/NoSuchMethodException;
    :goto_13
    return-void

    .line 39
    .end local v0           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_14
    move-exception v0

    .line 40
    .restart local v0       #nsme:Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 69
    sget-boolean v0, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_9

    .line 70
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/MotionEventUtils$WrappedStaticMotionEvent;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 72
    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter "ev"
    .parameter "pointerIndex"

    .prologue
    .line 61
    sget-boolean v0, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_9

    .line 62
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/MotionEventUtils$WrappedStaticMotionEvent;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 64
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter "ev"
    .parameter "pointerIndex"

    .prologue
    .line 45
    sget-boolean v0, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_9

    .line 46
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/MotionEventUtils$WrappedStaticMotionEvent;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 48
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_8
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter "ev"
    .parameter "pointerIndex"

    .prologue
    .line 53
    sget-boolean v0, Lcom/sprint/w/installer/util/MotionEventUtils;->sMultiTouchApiAvailable:Z

    if-eqz v0, :cond_9

    .line 54
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/MotionEventUtils$WrappedStaticMotionEvent;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 56
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_8
.end method
