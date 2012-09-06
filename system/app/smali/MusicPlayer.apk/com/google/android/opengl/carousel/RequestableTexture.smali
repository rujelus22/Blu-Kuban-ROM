.class Lcom/google/android/opengl/carousel/RequestableTexture;
.super Ljava/lang/Object;
.source "RequestableTexture.java"


# static fields
.field private static sTextureIds:[I


# instance fields
.field private mHeight:I

.field private mTextureChangeTime:J

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/opengl/carousel/RequestableTexture;->sTextureIds:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_13

    .line 40
    sget-object v0, Lcom/google/android/opengl/carousel/RequestableTexture;->sTextureIds:[I

    iget v1, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    aput v1, v0, v2

    .line 41
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/opengl/carousel/RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 42
    iput v2, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    .line 44
    :cond_13
    return-void
.end method

.method public genTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 27
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_d

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have valid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_d
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/opengl/carousel/RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 31
    sget-object v0, Lcom/google/android/opengl/carousel/RequestableTexture;->sTextureIds:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    .line 32
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    if-nez v0, :cond_25

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not generate texture id. Typically means the EGL Context is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_25
    return-void
.end method

.method public getChangeTime()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureChangeTime:J

    return-wide v0
.end method

.method public getTextureId()I
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    if-nez v0, :cond_c

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid texture id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    return v0
.end method

.method public height()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mHeight:I

    return v0
.end method

.method public isTextureIdAllocated()Z
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public release()V
    .registers 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/RequestableTexture;->deleteTextureId()V

    .line 72
    return-void
.end method

.method public setExtent(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    iput p1, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mWidth:I

    .line 59
    iput p2, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mHeight:I

    .line 60
    return-void
.end method

.method public setTextureLoadTime(J)V
    .registers 3
    .parameter "textureChangeTime"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureChangeTime:J

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/opengl/carousel/RequestableTexture;->mWidth:I

    return v0
.end method
