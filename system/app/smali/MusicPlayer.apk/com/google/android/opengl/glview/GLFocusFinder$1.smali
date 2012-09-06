.class final Lcom/google/android/opengl/glview/GLFocusFinder$1;
.super Ljava/lang/ThreadLocal;
.source "GLFocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLFocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/android/opengl/glview/GLFocusFinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/google/android/opengl/glview/GLFocusFinder;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/opengl/glview/GLFocusFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLFocusFinder;-><init>(Lcom/google/android/opengl/glview/GLFocusFinder$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLFocusFinder$1;->initialValue()Lcom/google/android/opengl/glview/GLFocusFinder;

    move-result-object v0

    return-object v0
.end method
