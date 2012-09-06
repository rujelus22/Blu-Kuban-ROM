.class final Lcom/google/android/opengl/glview/GLView$1;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLView$EventTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I
    .registers 7
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 639
    const/4 v0, 0x2

    return v0
.end method
