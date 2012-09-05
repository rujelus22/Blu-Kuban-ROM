.class Lcom/sec/android/app/twlauncher/GLTextSurface$1;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "GLTextSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLTextSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLTextSurface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLTextSurface;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLTextSurface$1;->this$0:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    return-void
.end method


# virtual methods
.method public onContextLost()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->onContextLost()V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface$1;->this$0:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->postInvalidate()V

    .line 48
    return-void
.end method
