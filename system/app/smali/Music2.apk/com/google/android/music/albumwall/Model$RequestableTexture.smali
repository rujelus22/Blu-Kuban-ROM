.class Lcom/google/android/music/albumwall/Model$RequestableTexture;
.super Lcom/google/android/music/albumwall/Model$Requestable;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestableTexture"
.end annotation


# static fields
.field private static sTextureIds:[I


# instance fields
.field private mCurrentlyVisible:Z

.field private mHeight:I

.field private mTextureChangeTime:J

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>()V

    return-void
.end method

.method static synthetic access$1202(Lcom/google/android/music/albumwall/Model$RequestableTexture;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    return v0
.end method


# virtual methods
.method public deleteTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 261
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_13

    .line 267
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    iget v1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    aput v1, v0, v2

    .line 268
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 269
    iput v2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 271
    :cond_13
    return-void
.end method

.method public eglContextCleared()V
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 301
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 308
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 309
    return-void
.end method

.method public genTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 250
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_d

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have valid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_d
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 254
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 258
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    return v0
.end method

.method public getTextureId()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    return v0
.end method

.method public getTextureLoadTime()J
    .registers 3

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    return v0
.end method

.method public isTextureIdAllocated()Z
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public release()V
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 315
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isTextureIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 316
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 318
    :cond_12
    return-void
.end method

.method public setExtent(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 287
    iput p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    .line 288
    iput p2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    .line 289
    return-void
.end method

.method public setTextureLoadTime(J)V
    .registers 6
    .parameter "textureChangeTime"

    .prologue
    .line 321
    move-wide v0, p1

    .line 322
    .local v0, changeTime:J
    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z

    if-nez v2, :cond_7

    .line 323
    const-wide/16 v0, 0x1

    .line 325
    :cond_7
    iput-wide v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    .line 326
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
