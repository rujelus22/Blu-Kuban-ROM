.class Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/google/android/apps/plus/views/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/GLTextureView;Z)V
    .registers 11
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 977
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    .line 978
    const/4 v3, 0x6

    if-eqz p2, :cond_11

    const/16 v6, 0x10

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/views/GLTextureView$ComponentSizeChooser;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;IIIIII)V

    .line 979
    return-void

    :cond_11
    move v6, v5

    .line 978
    goto :goto_9
.end method
