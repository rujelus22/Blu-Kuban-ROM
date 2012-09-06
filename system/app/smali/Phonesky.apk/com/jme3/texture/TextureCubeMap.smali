.class public Lcom/jme3/texture/TextureCubeMap;
.super Lcom/jme3/texture/Texture;
.source "TextureCubeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/TextureCubeMap$1;
    }
.end annotation


# instance fields
.field private wrapR:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapS:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapT:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 58
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 59
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 60
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 72
    return-void
.end method


# virtual methods
.method public createSimpleClone()Lcom/jme3/texture/Texture;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0}, Lcom/jme3/texture/TextureCubeMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jme3/texture/TextureCubeMap;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .registers 4
    .parameter "rVal"

    .prologue
    .line 85
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 86
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 87
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 88
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 167
    instance-of v2, p1, Lcom/jme3/texture/TextureCubeMap;

    if-nez v2, :cond_6

    .line 177
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/jme3/texture/TextureCubeMap;

    .line 171
    .local v0, that:Lcom/jme3/texture/TextureCubeMap;
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 173
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 175
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 177
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public getType()Lcom/jme3/texture/Texture$Type;
    .registers 2

    .prologue
    .line 162
    sget-object v0, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
    .registers 5
    .parameter "axis"

    .prologue
    .line 149
    sget-object v0, Lcom/jme3/texture/TextureCubeMap$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid WrapAxis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_24
    iget-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 155
    :goto_26
    return-object v0

    .line 153
    :pswitch_27
    iget-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_26

    .line 155
    :pswitch_2a
    iget-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_26

    .line 149
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Lcom/jme3/texture/Texture;->hashCode()I

    move-result v0

    .line 183
    .local v0, hash:I
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->hashCode()I

    move-result v1

    :goto_11
    add-int v0, v3, v1

    .line 184
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->hashCode()I

    move-result v1

    :goto_1f
    add-int v0, v3, v1

    .line 185
    mul-int/lit8 v1, v0, 0x35

    iget-object v3, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v3, :cond_2d

    iget-object v2, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$WrapMode;->hashCode()I

    move-result v2

    :cond_2d
    add-int v0, v1, v2

    .line 186
    return v0

    :cond_30
    move v1, v2

    .line 183
    goto :goto_11

    :cond_32
    move v1, v2

    .line 184
    goto :goto_1f
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->read(Lcom/jme3/export/JmeImporter;)V

    .line 201
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 202
    const-string v0, "wrapS"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 203
    const-string v0, "wrapT"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 204
    const-string v0, "wrapR"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 205
    return-void
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
    .registers 5
    .parameter "axis"
    .parameter "mode"

    .prologue
    .line 103
    if-nez p2, :cond_a

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_a
    if-nez p1, :cond_14

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "axis can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_14
    sget-object v0, Lcom/jme3/texture/TextureCubeMap$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 119
    :goto_1f
    return-void

    .line 110
    :pswitch_20
    iput-object p2, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_1f

    .line 113
    :pswitch_23
    iput-object p2, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_1f

    .line 116
    :pswitch_26
    iput-object p2, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_1f

    .line 108
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 130
    if-nez p1, :cond_a

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_a
    iput-object p1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 134
    iput-object p1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 135
    iput-object p1, p0, Lcom/jme3/texture/TextureCubeMap;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 136
    return-void
.end method
