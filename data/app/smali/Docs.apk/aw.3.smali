.class public Law;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field static final a:Laz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    .line 100
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    sput-object v0, Law;->a:Laz;

    .line 104
    :goto_c
    return-void

    .line 102
    :cond_d
    new-instance v0, Lax;

    invoke-direct {v0}, Lax;-><init>()V

    sput-object v0, Law;->a:Laz;

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

.method public static a(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Law;->a:Laz;

    invoke-interface {v0, p0, p1}, Laz;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;)I
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

.method public static a(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    sget-object v0, Law;->a:Laz;

    invoke-interface {v0, p0, p1}, Laz;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Law;->a:Laz;

    invoke-interface {v0, p0, p1}, Laz;->b(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Law;->a:Laz;

    invoke-interface {v0, p0, p1}, Laz;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method
