.class public Lcom/google/android/apps/books/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBrightness(ILandroid/view/Window;)V
    .registers 5
    .parameter "brightness"
    .parameter "window"

    .prologue
    const/4 v2, -0x1

    .line 21
    if-eq p0, v2, :cond_9

    const/16 v1, 0xa

    if-ge p0, v1, :cond_9

    .line 22
    const/16 p0, 0xa

    .line 24
    :cond_9
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 25
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    if-eq p0, v2, :cond_19

    int-to-float v1, p0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    :goto_13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 27
    return-void

    .line 25
    :cond_19
    const/high16 v1, -0x4080

    goto :goto_13
.end method
