.class public Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;
.super Ljava/lang/Object;
.source "KeyboardStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;
    }
.end annotation


# static fields
.field private static final SOFT_KEYBOARD_HIDDEN:I = 0x2

.field private static final SOFT_KEYBOARD_VISIBLE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardVisible:Z

.field private mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

.field private mSoftKeyboardTransition:Z

.field private mSoftKeyboardVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v3, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 50
    iput-boolean v3, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 52
    iput-boolean v3, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 74
    .local v0, conf:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_2c

    move v1, v2

    :goto_1f
    iput-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 75
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-nez v1, :cond_2e

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v2, :cond_2e

    :goto_29
    iput-boolean v2, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 77
    return-void

    :cond_2c
    move v1, v3

    .line 74
    goto :goto_1f

    :cond_2e
    move v2, v3

    .line 75
    goto :goto_29
.end method

.method private notifyTypeChange()V
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

    if-eqz v0, :cond_c

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;->onKeyboardTypeChange(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;)V

    .line 112
    :cond_c
    return-void
.end method

.method private notifyVisibilityChange()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;->onKeyboardVisibilityChange(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;)V

    .line 105
    :cond_c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20

    .line 163
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    .line 151
    :pswitch_8
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-eqz v1, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->notifyVisibilityChange()V

    goto :goto_7

    .line 157
    :pswitch_14
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-nez v1, :cond_7

    .line 158
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->notifyVisibilityChange()V

    goto :goto_7

    .line 149
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method public isHardKeyboardVisible()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    return v0
.end method

.method public isInKeyboardMode()Z
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->isSoftKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->isHardKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSoftKeyboardVisible()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    return v0
.end method

.method public setHardKeyboardVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-eq v0, p1, :cond_13

    .line 137
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    .line 139
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHardKeyboardVisible:Z

    if-eq v0, v1, :cond_14

    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->notifyTypeChange()V

    .line 145
    :cond_13
    :goto_13
    return-void

    .line 142
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->notifyVisibilityChange()V

    goto :goto_13
.end method

.method public setKeyboardModeListener(Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mListener:Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker$KeyboardModeListener;

    .line 119
    return-void
.end method

.method public setSoftKeyboardVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    if-eq v1, p1, :cond_10

    .line 126
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardVisible:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mSoftKeyboardTransition:Z

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    :goto_d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_10
    return-void

    .line 128
    :cond_11
    const/4 v0, 0x2

    goto :goto_d
.end method
