.class public Lcom/google/android/apps/unveil/env/gl/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/Texture$1;,
        Lcom/google/android/apps/unveil/env/gl/Texture$Format;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field format:I

.field private final id:I

.field valid:Z


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x2600

    const v3, 0x8d65

    const/4 v2, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v0, v2, [I

    .line 74
    .local v0, texes:[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 75
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    .line 77
    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 81
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->valid:Z

    .line 85
    return-void
.end method

.method public constructor <init>(IILcom/google/android/apps/unveil/env/gl/Texture$Format;)V
    .registers 16
    .parameter "width"
    .parameter "height"
    .parameter "format"

    .prologue
    const/16 v11, 0x2600

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v9, v10, [I

    .line 38
    .local v9, texes:[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 39
    aget v2, v9, v1

    iput v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    .line 41
    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Texture$1;->$SwitchMap$com$google$android$apps$unveil$env$gl$Texture$Format:[I

    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/gl/Texture$Format;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_3a
    const/16 v2, 0x1909

    iput v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->format:I

    .line 44
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    :goto_48
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->format:I

    iget v6, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->format:I

    const/16 v7, 0x1401

    iget-object v8, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->buffer:Ljava/nio/ByteBuffer;

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 58
    const/16 v1, 0x2801

    invoke-static {v0, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 59
    const/16 v1, 0x2800

    invoke-static {v0, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 61
    iput-boolean v10, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->valid:Z

    .line 62
    return-void

    .line 47
    :pswitch_68
    const/16 v2, 0x190a

    iput v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->format:I

    .line 48
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_48

    .line 41
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_68
    .end packed-switch
.end method

.method public static constructOesTexture()Lcom/google/android/apps/unveil/env/gl/Texture;
    .registers 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/Texture;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/gl/Texture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bindTU(I)V
    .registers 4
    .parameter "tu"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 105
    const/16 v0, 0xde1

    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 106
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/Texture;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void

    .line 121
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    return v0
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->valid:Z

    if-eqz v1, :cond_15

    .line 110
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->valid:Z

    .line 111
    new-array v0, v3, [I

    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->id:I

    aput v1, v0, v2

    .line 112
    .local v0, texes:[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 114
    .end local v0           #texes:[I
    :cond_15
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .registers 13
    .parameter "buffer"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 99
    const/16 v0, 0xde1

    iget v6, p0, Lcom/google/android/apps/unveil/env/gl/Texture;->format:I

    const/16 v7, 0x1401

    move v2, v1

    move v3, v1

    move v4, p2

    move v5, p3

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 101
    return-void
.end method
