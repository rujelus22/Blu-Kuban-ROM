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

.field private mRegisteredForChangeNotification:Z

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

    .line 262
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_13

    .line 268
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    iget v1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    aput v1, v0, v2

    .line 269
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 270
    iput v2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 272
    :cond_13
    return-void
.end method

.method public eglContextCleared()V
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 317
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 318
    return-void
.end method

.method public genTextureId()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 251
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    if-eqz v0, :cond_d

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have valid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_d
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 255
    sget-object v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->sTextureIds:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    .line 259
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    return v0
.end method

.method public getTextureId()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I

    return v0
.end method

.method public getTextureLoadTime()J
    .registers 3

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    return v0
.end method

.method public isRegisteredForChangeNotification()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mRegisteredForChangeNotification:Z

    return v0
.end method

.method public isTextureIdAllocated()Z
    .registers 2

    .prologue
    .line 284
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
    .line 321
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 322
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->clear()V

    .line 324
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isTextureIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 325
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 327
    :cond_12
    return-void
.end method

.method public setExtent(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    iput p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mWidth:I

    .line 297
    iput p2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mHeight:I

    .line 298
    return-void
.end method

.method public setRegisteredForChangeNotification(Z)V
    .registers 2
    .parameter "registered"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mRegisteredForChangeNotification:Z

    .line 293
    return-void
.end method

.method public setTextureLoadTime(J)V
    .registers 6
    .parameter "textureChangeTime"

    .prologue
    .line 330
    move-wide v0, p1

    .line 331
    .local v0, changeTime:J
    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z

    if-nez v2, :cond_7

    .line 332
    const-wide/16 v0, 0x1

    .line 334
    :cond_7
    iput-wide v0, p0, Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureChangeTime:J

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
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
