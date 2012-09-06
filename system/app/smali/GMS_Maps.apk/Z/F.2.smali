.class public Lz/F;
.super Lz/w;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected final f:Lz/j;


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lz/F;->f:Lz/j;

    invoke-virtual {v0}, Lz/j;->a()V

    .line 32
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p2, p3}, Lz/F;->a(II)V

    .line 37
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lz/F;->f:Lz/j;

    invoke-virtual {v0, p1, p0}, Lz/j;->a(Ljavax/microedition/khronos/opengles/GL10;Lz/F;)V

    .line 42
    return-void
.end method
