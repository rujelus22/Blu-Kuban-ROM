.class Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/EsService$ImageKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalImageKey"
.end annotation


# instance fields
.field private mHeight:I

.field private final mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;II)V
    .registers 5
    .parameter "mediaRef"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 455
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    .line 456
    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    .line 457
    iput p3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    .line 458
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 447
    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    if-ne p1, p0, :cond_5

    .line 482
    :cond_4
    :goto_4
    return v1

    .line 480
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 481
    check-cast v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    .line 482
    .local v0, other:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    iget v4, v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    iget v4, v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    if-eq v3, v4, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 489
    const/16 v0, 0x11

    .line 490
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 491
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    add-int v0, v1, v2

    .line 492
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    add-int v0, v1, v2

    .line 493
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
