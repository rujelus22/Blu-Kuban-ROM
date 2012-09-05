.class Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
.super Ljava/lang/Object;
.source "EsService.java"


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
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 473
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    .line 474
    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    .line 475
    iput p3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    .line 476
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    if-ne p1, p0, :cond_5

    .line 499
    :cond_4
    :goto_4
    return v1

    .line 497
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 498
    check-cast v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    .line 499
    .local v0, other:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->uri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->width()I

    move-result v4

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->height()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 506
    const/16 v0, 0x11

    .line 507
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 508
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    add-int v0, v1, v2

    .line 509
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    add-int v0, v1, v2

    .line 510
    return v0
.end method

.method public height()I
    .registers 2

    .prologue
    .line 487
    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I

    return v0
.end method

.method public mediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 491
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

.method public uri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public width()I
    .registers 2

    .prologue
    .line 484
    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I

    return v0
.end method
