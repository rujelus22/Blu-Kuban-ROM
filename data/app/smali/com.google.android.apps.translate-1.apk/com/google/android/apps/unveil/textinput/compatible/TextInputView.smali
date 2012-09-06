.class public Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;
.super Lcom/google/android/apps/unveil/textinput/TextInputView;
.source "TextInputView.java"


# instance fields
.field cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/textinput/TextInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected createView(Landroid/content/Context;)Landroid/view/View;
    .registers 4
    .parameter "context"

    .prologue
    .line 32
    sget v0, Lcom/google/android/apps/unveil/textinput/R$layout;->compatible_text_input_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->onFinishInflate()V

    .line 39
    sget v0, Lcom/google/android/apps/unveil/textinput/R$id;->camera_wrapping_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    .line 40
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    sget v0, Lcom/google/android/apps/unveil/textinput/R$id;->camera_manager:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setCameraManager(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setRotation(I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->BOTTOM:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setAlignment(Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;)V

    .line 44
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->cameraWrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getCameraToDisplayRotation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setRotation(I)V

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/unveil/textinput/TextInputView;->onLayout(ZIIII)V

    .line 53
    return-void
.end method

.method public setImeControlsHeight(I)V
    .registers 5
    .parameter "pixels"

    .prologue
    .line 56
    sget v2, Lcom/google/android/apps/unveil/textinput/R$id;->ime_controls:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, imeControls:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 58
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/compatible/TextInputView;->requestLayout()V

    .line 60
    return-void
.end method
