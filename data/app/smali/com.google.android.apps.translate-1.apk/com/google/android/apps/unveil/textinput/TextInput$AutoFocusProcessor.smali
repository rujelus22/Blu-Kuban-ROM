.class Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;
.super Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFocusProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 3
    .parameter
    .parameter "cameraManager"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    .line 954
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 955
    return-void
.end method


# virtual methods
.method protected onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 3
    .parameter "frame"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1100(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported()Z

    move-result v0

    if-nez v0, :cond_d

    .line 972
    :cond_c
    :goto_c
    return-void

    .line 963
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1100(Lcom/google/android/apps/unveil/textinput/TextInput;)Lcom/google/android/apps/unveil/sensors/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isContinuousFocusSupported()Z

    move-result v0

    if-nez v0, :cond_c

    .line 967
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$AutoFocusProcessor;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInput;->autoFocus:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$1200(Lcom/google/android/apps/unveil/textinput/TextInput;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 971
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_c
.end method
