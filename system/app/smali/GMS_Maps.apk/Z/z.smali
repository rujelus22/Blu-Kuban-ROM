.class public abstract Lz/z;
.super Lz/m;
.source "SourceFile"


# instance fields
.field protected g:Lz/y;

.field protected final h:Ljava/lang/Class;


# virtual methods
.method public a(Lz/j;Lz/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 104
    if-nez p2, :cond_d

    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 107
    const-string v0, "ShaderState"

    const-string v1, "glUseProgram"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_d
    return-void
.end method

.method public a(Lz/j;Lz/i;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lz/m;->a(Lz/j;Lz/i;)Z

    move-result v0

    .line 75
    iget-object v1, p0, Lz/z;->g:Lz/y;

    if-nez v1, :cond_14

    .line 76
    invoke-virtual {p1}, Lz/j;->d()Lz/x;

    move-result-object v1

    iget-object v2, p0, Lz/z;->h:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lz/x;->a(Ljava/lang/Class;)Lz/y;

    move-result-object v1

    iput-object v1, p0, Lz/z;->g:Lz/y;

    .line 80
    :cond_14
    if-eqz v0, :cond_1b

    .line 81
    iget-object v1, p0, Lz/z;->g:Lz/y;

    invoke-virtual {v1, p1, p2}, Lz/y;->a(Lz/j;Lz/i;)Z

    .line 84
    :cond_1b
    return v0
.end method
