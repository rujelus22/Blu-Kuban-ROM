.class public abstract Lcom/jme3/texture/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lcom/jme3/asset/Asset;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Texture$ShadowCompareMode;,
        Lcom/jme3/texture/Texture$WrapAxis;,
        Lcom/jme3/texture/Texture$WrapMode;,
        Lcom/jme3/texture/Texture$MagFilter;,
        Lcom/jme3/texture/Texture$MinFilter;,
        Lcom/jme3/texture/Texture$Type;
    }
.end annotation


# instance fields
.field private anisotropicFilter:I

.field private image:Lcom/jme3/texture/Image;

.field private key:Lcom/jme3/asset/TextureKey;

.field private magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

.field private minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

.field private name:Ljava/lang/String;

.field private shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    .line 297
    iput-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    .line 299
    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    .line 300
    sget-object v0, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    .line 301
    sget-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    .line 321
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/texture/Texture;
    .registers 3

    .prologue
    .line 310
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/Texture;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 311
    :catch_7
    move-exception v0

    .line 312
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->clone()Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public abstract createSimpleClone()Lcom/jme3/texture/Texture;
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .registers 3
    .parameter "rVal"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 546
    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 547
    iget-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    .line 549
    iget v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    .line 550
    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    .line 552
    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 553
    iget-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    .line 558
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 498
    if-nez p1, :cond_4

    .line 520
    :cond_3
    :goto_3
    return v1

    .line 501
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move-object v0, p1

    .line 504
    check-cast v0, Lcom/jme3/texture/Texture;

    .line 505
    .local v0, other:Lcom/jme3/texture/Texture;
    iget-object v2, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    iget-object v3, v0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eq v2, v3, :cond_25

    iget-object v2, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    iget-object v3, v0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v2, v3}, Lcom/jme3/texture/Image;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 508
    :cond_25
    iget-object v2, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    iget-object v3, v0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    if-ne v2, v3, :cond_3

    .line 511
    iget-object v2, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    iget-object v3, v0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    if-ne v2, v3, :cond_3

    .line 514
    iget-object v2, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    iget-object v3, v0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    if-ne v2, v3, :cond_3

    .line 517
    iget v2, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    iget v3, v0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    if-ne v2, v3, :cond_3

    .line 520
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getImage()Lcom/jme3/texture/Image;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    return-object v0
.end method

.method public getKey()Lcom/jme3/asset/AssetKey;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    return-object v0
.end method

.method public getMagFilter()Lcom/jme3/texture/Texture$MagFilter;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/jme3/texture/Texture$MinFilter;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    return-object v0
.end method

.method public abstract getType()Lcom/jme3/texture/Texture$Type;
.end method

.method public abstract getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 525
    const/4 v0, 0x5

    .line 526
    .local v0, hash:I
    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->hashCode()I

    move-result v1

    :goto_c
    add-int/lit16 v0, v1, 0x14f

    .line 527
    mul-int/lit8 v3, v0, 0x43

    iget-object v1, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->hashCode()I

    move-result v1

    :goto_1a
    add-int v0, v3, v1

    .line 528
    mul-int/lit8 v3, v0, 0x43

    iget-object v1, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MagFilter;->hashCode()I

    move-result v1

    :goto_28
    add-int v0, v3, v1

    .line 529
    mul-int/lit8 v1, v0, 0x43

    iget-object v3, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    if-eqz v3, :cond_36

    iget-object v2, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$ShadowCompareMode;->hashCode()I

    move-result v2

    :cond_36
    add-int v0, v1, v2

    .line 530
    mul-int/lit8 v1, v0, 0x43

    iget v2, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    add-int v0, v1, v2

    .line 531
    return v0

    :cond_3f
    move v1, v2

    .line 526
    goto :goto_c

    :cond_41
    move v1, v2

    .line 527
    goto :goto_1a

    :cond_43
    move v1, v2

    .line 528
    goto :goto_28
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 583
    const-string v0, "name"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    .line 584
    const-string v0, "key"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    .line 587
    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_6c

    .line 590
    :try_start_1b
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-interface {v0, v2}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;
    :try_end_2b
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_1b .. :try_end_2b} :catch_51

    .line 606
    :cond_2b
    :goto_2b
    const-string v0, "anisotropicFilter"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    .line 607
    const-string v0, "minificationFilter"

    const-class v2, Lcom/jme3/texture/Texture$MinFilter;

    sget-object v3, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$MinFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    .line 610
    const-string v0, "magnificationFilter"

    const-class v2, Lcom/jme3/texture/Texture$MagFilter;

    sget-object v3, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$MagFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    .line 612
    return-void

    .line 592
    :catch_51
    move-exception v0

    .line 593
    const-class v0, Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cannot locate texture {0}"

    iget-object v4, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage()Lcom/jme3/texture/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    goto :goto_2b

    .line 598
    :cond_6c
    const-string v0, "image"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    .line 599
    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-nez v0, :cond_2b

    .line 602
    const-class v0, Lcom/jme3/texture/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cannot load embedded image {0}"

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method public setAnisotropicFilter(I)V
    .registers 3
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    .line 477
    if-ge p1, v0, :cond_6

    .line 478
    iput v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    .line 481
    :goto_5
    return-void

    .line 480
    :cond_6
    iput p1, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    goto :goto_5
.end method

.method public setImage(Lcom/jme3/texture/Image;)V
    .registers 2
    .parameter "image"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    .line 396
    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 402
    check-cast p1, Lcom/jme3/asset/TextureKey;

    .end local p1
    iput-object p1, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    .line 403
    return-void
.end method

.method public setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V
    .registers 4
    .parameter "magnificationFilter"

    .prologue
    .line 358
    if-nez p1, :cond_a

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "magnificationFilter can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_a
    iput-object p1, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    .line 363
    return-void
.end method

.method public setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V
    .registers 4
    .parameter "minificationFilter"

    .prologue
    .line 337
    if-nez p1, :cond_a

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minificationFilter can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_a
    iput-object p1, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    .line 342
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V
    .registers 4
    .parameter "compareMode"

    .prologue
    .line 381
    if-nez p1, :cond_a

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "compareMode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_a
    iput-object p1, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    .line 386
    return-void
.end method

.method public abstract setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
.end method

.method public abstract setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eqz v1, :cond_2e

    .line 489
    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
