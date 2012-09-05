.class public Lcom/sec/android/app/selftestmode/camera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V

    .line 209
    :cond_9
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 135
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_17

    .line 137
    if-nez v0, :cond_18

    .line 177
    new-instance v1, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton$1;-><init>(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 193
    :goto_15
    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mOldPressed:Z

    .line 197
    :cond_17
    return-void

    .line 189
    :cond_18
    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_15
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 219
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_d

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/sec/android/app/selftestmode/camera/ShutterButton;)V

    .line 225
    :cond_d
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->mListener:Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;

    .line 115
    return-void
.end method
