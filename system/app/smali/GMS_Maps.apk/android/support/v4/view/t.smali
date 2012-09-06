.class Landroid/support/v4/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/v;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    if-nez p2, :cond_4

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public b(Landroid/view/MotionEvent;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    if-nez p2, :cond_4

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p2, :cond_7

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    if-nez p2, :cond_7

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0

    .line 68
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
