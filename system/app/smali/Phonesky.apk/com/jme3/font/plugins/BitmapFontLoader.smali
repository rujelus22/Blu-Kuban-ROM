.class public Lcom/jme3/font/plugins/BitmapFontLoader;
.super Ljava/lang/Object;
.source "BitmapFontLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private load(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/io/InputStream;)Lcom/jme3/font/BitmapFont;
    .registers 26
    .parameter "assetManager"
    .parameter "folder"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v20, Lcom/jme3/asset/AssetKey;

    const-string v21, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct/range {v20 .. v21}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jme3/material/MaterialDef;

    .line 54
    .local v16, spriteMat:Lcom/jme3/material/MaterialDef;
    new-instance v4, Lcom/jme3/font/BitmapCharacterSet;

    invoke-direct {v4}, Lcom/jme3/font/BitmapCharacterSet;-><init>()V

    .line 55
    .local v4, charSet:Lcom/jme3/font/BitmapCharacterSet;
    const/4 v12, 0x0

    .line 56
    .local v12, matPages:[Lcom/jme3/material/Material;
    new-instance v6, Lcom/jme3/font/BitmapFont;

    invoke-direct {v6}, Lcom/jme3/font/BitmapFont;-><init>()V

    .line 58
    .local v6, font:Lcom/jme3/font/BitmapFont;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v13, reader:Ljava/io/BufferedReader;
    const-string v14, "[\\s=]+"

    .line 61
    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/jme3/font/BitmapFont;->setCharSet(Lcom/jme3/font/BitmapCharacterSet;)V

    .line 62
    :cond_31
    :goto_31
    invoke-virtual {v13}, Ljava/io/BufferedReader;->ready()Z

    move-result v20

    if-eqz v20, :cond_340

    .line 63
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, line:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 65
    .local v19, tokens:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v19, v20

    const-string v21, "info"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6f

    .line 67
    const/4 v7, 0x1

    .local v7, i:I
    :goto_4c
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_31

    .line 68
    aget-object v20, v19, v7

    const-string v21, "size"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6c

    .line 69
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jme3/font/BitmapCharacterSet;->setRenderedSize(I)V

    .line 67
    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 72
    .end local v7           #i:I
    :cond_6f
    const/16 v20, 0x0

    aget-object v20, v19, v20

    const-string v21, "common"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10d

    .line 74
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_7c
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_31

    .line 75
    aget-object v18, v19, v7

    .line 76
    .local v18, token:Ljava/lang/String;
    const-string v20, "lineHeight"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a3

    .line 77
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jme3/font/BitmapCharacterSet;->setLineHeight(I)V

    .line 74
    :cond_a0
    :goto_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 78
    :cond_a3
    const-string v20, "base"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_bd

    .line 79
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jme3/font/BitmapCharacterSet;->setBase(I)V

    goto :goto_a0

    .line 80
    :cond_bd
    const-string v20, "scaleW"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d7

    .line 81
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jme3/font/BitmapCharacterSet;->setWidth(I)V

    goto :goto_a0

    .line 82
    :cond_d7
    const-string v20, "scaleH"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f1

    .line 83
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/jme3/font/BitmapCharacterSet;->setHeight(I)V

    goto :goto_a0

    .line 84
    :cond_f1
    const-string v20, "pages"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a0

    .line 86
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    new-array v12, v0, [Lcom/jme3/material/Material;

    .line 87
    invoke-virtual {v6, v12}, Lcom/jme3/font/BitmapFont;->setPages([Lcom/jme3/material/Material;)V

    goto :goto_a0

    .line 90
    .end local v7           #i:I
    .end local v18           #token:Ljava/lang/String;
    :cond_10d
    const/16 v20, 0x0

    aget-object v20, v19, v20

    const-string v21, "page"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d7

    .line 91
    const/4 v8, -0x1

    .line 92
    .local v8, index:I
    const/16 v17, 0x0

    .line 94
    .local v17, tex:Lcom/jme3/texture/Texture;
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_11d
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_1ab

    .line 95
    aget-object v18, v19, v7

    .line 96
    .restart local v18       #token:Ljava/lang/String;
    const-string v20, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13f

    .line 97
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 94
    :cond_13c
    :goto_13c
    add-int/lit8 v7, v7, 0x1

    goto :goto_11d

    .line 98
    :cond_13f
    const-string v20, "file"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13c

    .line 99
    add-int/lit8 v20, v7, 0x1

    aget-object v5, v19, v20

    .line 100
    .local v5, file:Ljava/lang/String;
    const-string v20, "\""

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_169

    .line 101
    const/16 v20, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 103
    :cond_169
    new-instance v9, Lcom/jme3/asset/TextureKey;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 104
    .local v9, key:Lcom/jme3/asset/TextureKey;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 105
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v17

    .line 106
    sget-object v20, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 107
    sget-object v20, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_13c

    .line 111
    .end local v5           #file:Ljava/lang/String;
    .end local v9           #key:Lcom/jme3/asset/TextureKey;
    .end local v18           #token:Ljava/lang/String;
    :cond_1ab
    if-ltz v8, :cond_31

    if-eqz v17, :cond_31

    .line 112
    new-instance v11, Lcom/jme3/material/Material;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    .line 113
    .local v11, mat:Lcom/jme3/material/Material;
    const-string v20, "ColorMap"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 114
    const-string v20, "VertexColor"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {v11}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v20

    sget-object v21, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual/range {v20 .. v21}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 116
    aput-object v11, v12, v8

    goto/16 :goto_31

    .line 118
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v11           #mat:Lcom/jme3/material/Material;
    .end local v17           #tex:Lcom/jme3/texture/Texture;
    :cond_1d7
    const/16 v20, 0x0

    aget-object v20, v19, v20

    const-string v21, "char"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e3

    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, ch:Lcom/jme3/font/BitmapCharacter;
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_1e5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_31

    .line 122
    aget-object v18, v19, v7

    .line 123
    .restart local v18       #token:Ljava/lang/String;
    const-string v20, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20f

    .line 124
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 125
    .restart local v8       #index:I
    new-instance v3, Lcom/jme3/font/BitmapCharacter;

    .end local v3           #ch:Lcom/jme3/font/BitmapCharacter;
    invoke-direct {v3}, Lcom/jme3/font/BitmapCharacter;-><init>()V

    .line 126
    .restart local v3       #ch:Lcom/jme3/font/BitmapCharacter;
    invoke-virtual {v4, v8, v3}, Lcom/jme3/font/BitmapCharacterSet;->addCharacter(ILcom/jme3/font/BitmapCharacter;)V

    .line 121
    .end local v8           #index:I
    :cond_20c
    :goto_20c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e5

    .line 127
    :cond_20f
    const-string v20, "x"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_229

    .line 128
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setX(I)V

    goto :goto_20c

    .line 129
    :cond_229
    const-string v20, "y"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_243

    .line 130
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setY(I)V

    goto :goto_20c

    .line 131
    :cond_243
    const-string v20, "width"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25d

    .line 132
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setWidth(I)V

    goto :goto_20c

    .line 133
    :cond_25d
    const-string v20, "height"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_277

    .line 134
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setHeight(I)V

    goto :goto_20c

    .line 135
    :cond_277
    const-string v20, "xoffset"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_292

    .line 136
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setXOffset(I)V

    goto/16 :goto_20c

    .line 137
    :cond_292
    const-string v20, "yoffset"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2ad

    .line 138
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setYOffset(I)V

    goto/16 :goto_20c

    .line 139
    :cond_2ad
    const-string v20, "xadvance"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c8

    .line 140
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setXAdvance(I)V

    goto/16 :goto_20c

    .line 141
    :cond_2c8
    const-string v20, "page"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20c

    .line 142
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/jme3/font/BitmapCharacter;->setPage(I)V

    goto/16 :goto_20c

    .line 145
    .end local v3           #ch:Lcom/jme3/font/BitmapCharacter;
    .end local v7           #i:I
    .end local v18           #token:Ljava/lang/String;
    :cond_2e3
    const/16 v20, 0x0

    aget-object v20, v19, v20

    const-string v21, "kerning"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_31

    .line 147
    const/4 v8, 0x0

    .line 148
    .restart local v8       #index:I
    const/4 v15, 0x0

    .line 149
    .local v15, second:I
    const/4 v2, 0x0

    .line 151
    .local v2, amount:I
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_2f3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_337

    .line 152
    aget-object v20, v19, v7

    const-string v21, "first"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_311

    .line 153
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 151
    :cond_30e
    :goto_30e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f3

    .line 154
    :cond_311
    aget-object v20, v19, v7

    const-string v21, "second"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_324

    .line 155
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_30e

    .line 156
    :cond_324
    aget-object v20, v19, v7

    const-string v21, "amount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_30e

    .line 157
    add-int/lit8 v20, v7, 0x1

    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_30e

    .line 161
    :cond_337
    invoke-virtual {v4, v8}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object v3

    .line 162
    .restart local v3       #ch:Lcom/jme3/font/BitmapCharacter;
    invoke-virtual {v3, v15, v2}, Lcom/jme3/font/BitmapCharacter;->addKerning(II)V

    goto/16 :goto_31

    .line 165
    .end local v2           #amount:I
    .end local v3           #ch:Lcom/jme3/font/BitmapCharacter;
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v10           #line:Ljava/lang/String;
    .end local v15           #second:I
    .end local v19           #tokens:[Ljava/lang/String;
    :cond_340
    return-object v6
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .registers 6
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/jme3/font/plugins/BitmapFontLoader;->load(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/io/InputStream;)Lcom/jme3/font/BitmapFont;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    move-result-object v0

    .line 175
    .local v0, font:Lcom/jme3/font/BitmapFont;
    if-eqz v1, :cond_1a

    .line 176
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1a
    return-object v0

    .line 175
    .end local v0           #font:Lcom/jme3/font/BitmapFont;
    :catchall_1b
    move-exception v2

    if-eqz v1, :cond_21

    .line 176
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_21
    throw v2
.end method
