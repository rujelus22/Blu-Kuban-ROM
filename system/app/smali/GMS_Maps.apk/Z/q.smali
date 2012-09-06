.class public Lz/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lz/q;->a:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    .line 38
    iput v1, p0, Lz/q;->c:I

    .line 43
    iput v1, p0, Lz/q;->d:I

    .line 80
    iput-object p1, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lz/q;->c:I

    .line 82
    iget-object v0, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lz/q;->d:I

    .line 83
    return-void
.end method


# virtual methods
.method a(Lz/j;Lz/i;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1907

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 106
    iget-boolean v3, p2, Lz/i;->e:Z

    if-eqz v3, :cond_12

    .line 107
    iget-object v3, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_18

    .line 108
    iget-object v2, p0, Lz/q;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 121
    :cond_12
    :goto_12
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/q;->a:Z

    .line 122
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_18
    iget v3, p0, Lz/q;->c:I

    iget v4, p0, Lz/q;->d:I

    const v7, 0x8363

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 113
    const-string v0, "ImageData"

    const-string v1, "glTexImage2D failed"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
