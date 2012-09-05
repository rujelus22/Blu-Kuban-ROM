.class public Lcom/android/samsungtest/camera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/camera/ShutterButton;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/samsungtest/camera/ShutterButton;->mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/android/samsungtest/camera/ShutterButton;->mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/samsungtest/camera/ShutterButton;Z)V

    .line 105
    :cond_9
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 67
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 68
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_17

    .line 69
    if-nez v0, :cond_18

    .line 89
    new-instance v1, Lcom/android/samsungtest/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/samsungtest/camera/ShutterButton$1;-><init>(Lcom/android/samsungtest/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 97
    :goto_15
    iput-boolean v0, p0, Lcom/android/samsungtest/camera/ShutterButton;->mOldPressed:Z

    .line 99
    :cond_17
    return-void

    .line 95
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_15
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 110
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/samsungtest/camera/ShutterButton;->mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_d

    .line 111
    iget-object v1, p0, Lcom/android/samsungtest/camera/ShutterButton;->mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/samsungtest/camera/ShutterButton;)V

    .line 113
    :cond_d
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/samsungtest/camera/ShutterButton;->mListener:Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;

    .line 58
    return-void
.end method
