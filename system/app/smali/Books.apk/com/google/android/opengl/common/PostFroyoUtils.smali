.class public Lcom/google/android/opengl/common/PostFroyoUtils;
.super Ljava/lang/Object;
.source "PostFroyoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/common/PostFroyoUtils$InputDeviceComp;,
        Lcom/google/android/opengl/common/PostFroyoUtils$AccessibilityEventComp;,
        Lcom/google/android/opengl/common/PostFroyoUtils$MotionEventComp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static runningOnIcsOrLater()Z
    .registers 2

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
