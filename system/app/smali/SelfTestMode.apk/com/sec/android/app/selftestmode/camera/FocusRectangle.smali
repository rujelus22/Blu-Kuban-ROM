.class Lcom/sec/android/app/selftestmode/camera/FocusRectangle;
.super Landroid/view/View;
.source "Camera.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 3151
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3153
    return-void
.end method

.method private setDrawable(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3161
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3193
    return-void
.end method

.method public showFail()V
    .registers 2

    .prologue
    .line 3183
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->setDrawable(I)V

    .line 3185
    return-void
.end method

.method public showStart()V
    .registers 2

    .prologue
    .line 3167
    const v0, 0x7f020006

    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->setDrawable(I)V

    .line 3169
    return-void
.end method

.method public showSuccess()V
    .registers 2

    .prologue
    .line 3175
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->setDrawable(I)V

    .line 3177
    return-void
.end method
