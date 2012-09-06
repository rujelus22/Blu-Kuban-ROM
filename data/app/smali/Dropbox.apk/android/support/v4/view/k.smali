.class public final Landroid/support/v4/view/k;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Landroid/support/v4/view/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    .line 100
    new-instance v0, Landroid/support/v4/view/m;

    invoke-direct {v0}, Landroid/support/v4/view/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    .line 104
    :goto_c
    return-void

    .line 102
    :cond_d
    new-instance v0, Landroid/support/v4/view/l;

    invoke-direct {v0}, Landroid/support/v4/view/l;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    goto :goto_c
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
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/n;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/n;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/n;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
