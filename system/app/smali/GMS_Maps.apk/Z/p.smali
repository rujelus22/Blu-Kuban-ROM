.class public Lz/p;
.super Lz/F;
.source "SourceFile"


# virtual methods
.method a()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lz/p;->f:Lz/j;

    invoke-virtual {v0}, Lz/j;->a()V

    .line 39
    iget-object v0, p0, Lz/p;->f:Lz/j;

    invoke-virtual {v0}, Lz/j;->e()V

    .line 40
    return-void
.end method
