.class Lcom/android/samsungtest/camera/FocusRectangle;
.super Landroid/view/View;
.source "Camera.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2136
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2137
    return-void
.end method

.method private setDrawable(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2141
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2157
    return-void
.end method

.method public showFail()V
    .registers 2

    .prologue
    .line 2152
    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/FocusRectangle;->setDrawable(I)V

    .line 2153
    return-void
.end method

.method public showStart()V
    .registers 2

    .prologue
    .line 2144
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/FocusRectangle;->setDrawable(I)V

    .line 2145
    return-void
.end method

.method public showSuccess()V
    .registers 2

    .prologue
    .line 2148
    const v0, 0x7f020003

    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/FocusRectangle;->setDrawable(I)V

    .line 2149
    return-void
.end method
