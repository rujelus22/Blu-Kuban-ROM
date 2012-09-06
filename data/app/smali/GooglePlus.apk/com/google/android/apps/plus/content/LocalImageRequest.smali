.class public Lcom/google/android/apps/plus/content/LocalImageRequest;
.super Lcom/google/android/apps/plus/content/ImageRequest;
.source "LocalImageRequest.java"


# instance fields
.field private mHashCode:I

.field private final mHeight:I

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;II)V
    .registers 6
    .parameter "ref"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/ImageRequest;-><init>()V

    .line 21
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v0

    if-nez v0, :cond_13

    .line 22
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaRef must have a local URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    .line 26
    iput p2, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    .line 27
    iput p3, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p1, p0, :cond_5

    .line 88
    :cond_4
    :goto_4
    return v1

    .line 83
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/content/LocalImageRequest;

    if-nez v3, :cond_b

    move v1, v2

    .line 84
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/google/android/apps/plus/content/LocalImageRequest;

    .line 88
    .local v0, other:Lcom/google/android/apps/plus/content/LocalImageRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    iget v4, v0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    iget v4, v0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    if-eq v3, v4, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 64
    iget v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHashCode:I

    if-nez v1, :cond_1c

    .line 65
    const/16 v0, 0x11

    .line 66
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    add-int v0, v1, v2

    .line 68
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    add-int v0, v1, v2

    .line 69
    iput v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHashCode:I

    .line 71
    .end local v0           #result:I
    :cond_1c
    iget v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHashCode:I

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalImageRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/LocalImageRequest;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
