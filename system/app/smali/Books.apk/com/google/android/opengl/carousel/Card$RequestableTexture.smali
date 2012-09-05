.class Lcom/google/android/opengl/carousel/Card$RequestableTexture;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestableTexture"
.end annotation


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
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->sTextureIds:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/carousel/Card$RequestableTexture;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    return v0
.end method


# virtual methods
.method public deleteTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_13

    .line 117
    sget-object v0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->sTextureIds:[I

    iget v1, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    aput v1, v0, v2

    .line 118
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 119
    iput v2, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    .line 121
    :cond_13
    return-void
.end method

.method public genTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_d

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have valid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_d
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 112
    sget-object v0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->sTextureIds:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    .line 113
    return-void
.end method

.method public getChangeTime()J
    .registers 3

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureChangeTime:J

    return-wide v0
.end method

.method public getTextureId()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    return v0
.end method

.method public height()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mHeight:I

    return v0
.end method

.method public isTextureIdAllocated()Z
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

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
    .line 145
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->deleteTextureId()V

    .line 146
    return-void
.end method

.method public setExtent(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mWidth:I

    .line 133
    iput p2, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mHeight:I

    .line 134
    return-void
.end method

.method public setTextureLoadTime(J)V
    .registers 3
    .parameter "textureChangeTime"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureChangeTime:J

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->mWidth:I

    return v0
.end method
