.class public final Lcom/cooliris/media/GridDrawables;
.super Ljava/lang/Object;
.source "GridDrawables.java"


# static fields
.field private static final TEXTURE_CAMERA_SMALL:I

.field private static final TEXTURE_CHECKMARK_OFF:I

.field private static final TEXTURE_CHECKMARK_ON:I

.field private static final TEXTURE_FRAME:I

.field private static final TEXTURE_FRAME_FOCUS:I

.field private static final TEXTURE_FRAME_PRESSED:I

.field private static final TEXTURE_GRID_FRAME:I

.field private static final TEXTURE_LOCATION:I

.field private static final TEXTURE_PICASA_SMALL:I

.field private static final TEXTURE_PLACEHOLDER:I

.field public static final TEXTURE_SPINNER:[I

.field private static final TEXTURE_TRANSPARENT:I

.field private static final TEXTURE_VIDEO:I

.field public static sFrame:Lcom/cooliris/media/GridQuadFrame;

.field public static final sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

.field public static sGrid:Lcom/cooliris/media/GridQuad;

.field public static sLocationGrid:Lcom/cooliris/media/GridQuad;

.field public static sSelectedGrid:Lcom/cooliris/media/GridQuad;

.field public static sSourceIconGrid:Lcom/cooliris/media/GridQuad;

.field public static final sStringTextureTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cooliris/media/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field public static sTextGrid:Lcom/cooliris/media/GridQuad;

.field public static sVideoGrid:Lcom/cooliris/media/GridQuad;


# instance fields
.field public mTextureCameraSmall:Lcom/cooliris/media/Texture;

.field public mTextureCheckmarkOff:Lcom/cooliris/media/Texture;

.field public mTextureCheckmarkOn:Lcom/cooliris/media/Texture;

.field public mTextureFrame:Lcom/cooliris/media/Texture;

.field public mTextureFrameFocus:Lcom/cooliris/media/Texture;

.field public mTextureFramePressed:Lcom/cooliris/media/Texture;

.field public mTextureGridFrame:Lcom/cooliris/media/Texture;

.field public mTextureLocation:Lcom/cooliris/media/Texture;

.field public mTexturePicasaSmall:Lcom/cooliris/media/Texture;

.field public mTexturePlaceholder:Lcom/cooliris/media/Texture;

.field public mTextureSpinner:[Lcom/cooliris/media/Texture;

.field public mTextureTransparent:Lcom/cooliris/media/Texture;

.field public mTextureVideo:Lcom/cooliris/media/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 47
    new-array v1, v3, [Lcom/cooliris/media/GridQuad;

    sput-object v1, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    .line 50
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02007b

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME:I

    .line 52
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020014

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_GRID_FRAME:I

    .line 54
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02007c

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME_FOCUS:I

    .line 56
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02007d

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME_PRESSED:I

    .line 58
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020008

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_LOCATION:I

    .line 60
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020080

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_VIDEO:I

    .line 62
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020013

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_CHECKMARK_ON:I

    .line 64
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020012

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_CHECKMARK_OFF:I

    .line 66
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020042

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_CAMERA_SMALL:I

    .line 68
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02004e

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_PICASA_SMALL:I

    .line 70
    const/16 v1, 0x8

    new-array v1, v1, [I

    sput-object v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_SPINNER:[I

    .line 72
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02007f

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_TRANSPARENT:I

    .line 74
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020015

    sput v1, Lcom/cooliris/media/GridDrawables;->TEXTURE_PLACEHOLDER:I

    .line 103
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/cooliris/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    .line 108
    sget-object v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_SPINNER:[I

    .line 109
    .local v0, textureSpinner:[I
    const/4 v1, 0x0

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020037

    aput v2, v0, v1

    .line 110
    const/4 v1, 0x1

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020038

    aput v2, v0, v1

    .line 111
    const/4 v1, 0x2

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020039

    aput v2, v0, v1

    .line 112
    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f02003a

    aput v1, v0, v3

    .line 113
    const/4 v1, 0x4

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003b

    aput v2, v0, v1

    .line 114
    const/4 v1, 0x5

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003c

    aput v2, v0, v1

    .line 115
    const/4 v1, 0x6

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003d

    aput v2, v0, v1

    .line 116
    const/4 v1, 0x7

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003e

    aput v2, v0, v1

    .line 117
    return-void
.end method

.method public constructor <init>(II)V
    .registers 24
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v4, 0x8

    new-array v4, v4, [Lcom/cooliris/media/Texture;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    .line 120
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sGrid:Lcom/cooliris/media/GridQuad;

    if-nez v4, :cond_11a

    .line 121
    const/high16 v3, 0x3f80

    .line 122
    .local v3, height:F
    move/from16 v0, p1

    int-to-float v4, v0

    mul-float/2addr v4, v3

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 123
    .local v2, width:F
    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v16, v4, v5

    .line 124
    .local v16, aspectRatio:F
    const/high16 v4, 0x3f80

    div-float v7, v4, v16

    .line 127
    .local v7, oneByAspect:F
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sGrid:Lcom/cooliris/media/GridQuad;

    .line 130
    sget-object v11, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    aput-object v4, v11, v13

    .line 132
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cooliris/media/GridQuad;->setDynamic(Z)V

    .line 133
    sget-object v11, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    aput-object v4, v11, v13

    .line 135
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cooliris/media/GridQuad;->setDynamic(Z)V

    .line 136
    sget-object v11, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v13, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    aput-object v4, v11, v13

    .line 138
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/cooliris/media/GridQuad;->setDynamic(Z)V

    .line 141
    sget-boolean v4, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    if-eqz v4, :cond_7d

    .line 142
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->createGridQuad()V

    .line 148
    :cond_7d
    const/high16 v4, 0x4200

    sget v5, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v8, v4, v5

    .line 149
    .local v8, sizeOfSelectedIcon:F
    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v8, v4

    .line 150
    const/high16 v4, 0x4250

    sget v5, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v18, v4, v5

    .line 151
    .local v18, sizeOfLocationIcon:F
    move/from16 v0, p2

    int-to-float v4, v0

    div-float v18, v18, v4

    .line 152
    const/high16 v4, 0x4298

    sget v5, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v19, v4, v5

    .line 153
    .local v19, sizeOfSourceIcon:F
    move/from16 v0, p2

    int-to-float v4, v0

    div-float v19, v19, v4

    .line 154
    const/high16 v10, -0x4100

    const/high16 v11, 0x3e80

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    move v9, v8

    invoke-static/range {v8 .. v14}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sSelectedGrid:Lcom/cooliris/media/GridQuad;

    .line 156
    const v10, -0x425c28f6

    const v11, -0x4247ae14

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    move v9, v8

    invoke-static/range {v8 .. v14}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    .line 158
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    move/from16 v9, v18

    move/from16 v10, v18

    invoke-static/range {v9 .. v15}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sLocationGrid:Lcom/cooliris/media/GridQuad;

    .line 160
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    move/from16 v9, v19

    move/from16 v10, v19

    invoke-static/range {v9 .. v15}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sSourceIconGrid:Lcom/cooliris/media/GridQuad;

    .line 164
    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v5, 0x3fc0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11b

    const/high16 v17, 0x4300

    .line 165
    .local v17, seedTextWidth:F
    :goto_eb
    move/from16 v0, p1

    int-to-float v4, v0

    div-float v4, v17, v4

    mul-float v9, v4, v2

    .line 166
    .local v9, textWidth:F
    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v5, 0x3fc0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11e

    const/high16 v20, 0x4200

    .line 167
    .local v20, textHeightPow2:F
    :goto_fc
    move/from16 v0, p2

    int-to-float v4, v0

    div-float v4, v20, v4

    mul-float v10, v4, v3

    .line 168
    .local v10, textHeight:F
    const/4 v12, 0x0

    .line 169
    .local v12, textOffsetY:F
    const/4 v11, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sTextGrid:Lcom/cooliris/media/GridQuad;

    .line 173
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Lcom/cooliris/media/GridQuadFrame;->createFrame(FFII)Lcom/cooliris/media/GridQuadFrame;

    move-result-object v4

    sput-object v4, Lcom/cooliris/media/GridDrawables;->sFrame:Lcom/cooliris/media/GridQuadFrame;

    .line 175
    .end local v2           #width:F
    .end local v3           #height:F
    .end local v7           #oneByAspect:F
    .end local v8           #sizeOfSelectedIcon:F
    .end local v9           #textWidth:F
    .end local v10           #textHeight:F
    .end local v12           #textOffsetY:F
    .end local v16           #aspectRatio:F
    .end local v17           #seedTextWidth:F
    .end local v18           #sizeOfLocationIcon:F
    .end local v19           #sizeOfSourceIcon:F
    .end local v20           #textHeightPow2:F
    :cond_11a
    return-void

    .line 164
    .restart local v2       #width:F
    .restart local v3       #height:F
    .restart local v7       #oneByAspect:F
    .restart local v8       #sizeOfSelectedIcon:F
    .restart local v16       #aspectRatio:F
    .restart local v18       #sizeOfLocationIcon:F
    .restart local v19       #sizeOfSourceIcon:F
    :cond_11b
    const/high16 v17, 0x4380

    goto :goto_eb

    .line 166
    .restart local v9       #textWidth:F
    .restart local v17       #seedTextWidth:F
    :cond_11e
    const/high16 v20, 0x4280

    goto :goto_fc
.end method


# virtual methods
.method public getIconForSet(Lcom/cooliris/media/MediaSet;Z)I
    .registers 12
    .parameter "set"
    .parameter "scaled"

    .prologue
    const-wide/16 v7, -0x1

    const v2, 0x7f020046

    const v4, 0x7f020042

    const v3, 0x7f020047

    .line 248
    if-eqz p2, :cond_39

    .line 249
    if-nez p1, :cond_12

    .line 250
    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    .line 287
    :goto_11
    return v2

    .line 252
    :cond_12
    iget-wide v3, p1, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1e

    .line 253
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02004d

    goto :goto_11

    .line 254
    :cond_1e
    iget-wide v3, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_30

    iget-wide v3, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v5, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    .line 256
    :cond_30
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020041

    goto :goto_11

    .line 258
    :cond_36
    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    goto :goto_11

    .line 261
    :cond_39
    if-nez p1, :cond_3f

    .line 262
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    move v2, v3

    goto :goto_11

    .line 264
    :cond_3f
    iget-wide v5, p1, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_4b

    .line 265
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02004e

    goto :goto_11

    .line 266
    :cond_4b
    iget-wide v5, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v2, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_58

    .line 267
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    move v2, v4

    goto :goto_11

    .line 268
    :cond_58
    iget-wide v5, p1, Lcom/cooliris/media/MediaSet;->mId:J

    sget v2, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_6f

    .line 269
    sget-boolean v2, Lcom/cooliris/media/Utils;->mDisplayExternalSdIcon:Z

    if-eqz v2, :cond_6b

    .line 270
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020040

    goto :goto_11

    .line 272
    :cond_6b
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    move v2, v4

    goto :goto_11

    .line 275
    :cond_6f
    sget-boolean v2, Lcom/cooliris/media/Utils;->mDisplayExternalSdIcon:Z

    if-eqz v2, :cond_a0

    .line 276
    invoke-virtual {p1}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 277
    .local v1, mItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaItem;

    iget-object v0, v2, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 278
    .local v0, mFirstItemFilePath:Ljava/lang/String;
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9b

    if-eqz v0, :cond_9b

    invoke-static {}, Lcom/cooliris/media/Gallery;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 282
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f020045

    goto/16 :goto_11

    .line 284
    :cond_9b
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    move v2, v3

    goto/16 :goto_11

    .line 287
    .end local v0           #mFirstItemFilePath:Ljava/lang/String;
    .end local v1           #mItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_a0
    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    move v2, v3

    goto/16 :goto_11
.end method

.method public onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 8
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 180
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 183
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 184
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 185
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 186
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 187
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 188
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 191
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    if-eqz v0, :cond_3e

    .line 192
    invoke-static {p2}, Lcom/quramsoft/xiv/XIVRegionManager;->releaseGridQuad(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 197
    :cond_3e
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sSelectedGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 198
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 199
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sLocationGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 200
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sSourceIconGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 201
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sSelectedGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 202
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 203
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sLocationGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 204
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sSourceIconGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 207
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sTextGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 208
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sTextGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 211
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFrame:Lcom/cooliris/media/GridQuadFrame;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuadFrame;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 212
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sFrame:Lcom/cooliris/media/GridQuadFrame;

    invoke-virtual {v0, p2}, Lcom/cooliris/media/GridQuadFrame;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 215
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFrame:Lcom/cooliris/media/Texture;

    .line 219
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_GRID_FRAME:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureGridFrame:Lcom/cooliris/media/Texture;

    .line 220
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME_FOCUS:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFrameFocus:Lcom/cooliris/media/Texture;

    .line 221
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_FRAME_PRESSED:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFramePressed:Lcom/cooliris/media/Texture;

    .line 222
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_LOCATION:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureLocation:Lcom/cooliris/media/Texture;

    .line 223
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_VIDEO:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureVideo:Lcom/cooliris/media/Texture;

    .line 224
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_CHECKMARK_ON:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureCheckmarkOn:Lcom/cooliris/media/Texture;

    .line 225
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_CHECKMARK_OFF:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureCheckmarkOff:Lcom/cooliris/media/Texture;

    .line 226
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_CAMERA_SMALL:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureCameraSmall:Lcom/cooliris/media/Texture;

    .line 227
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_PICASA_SMALL:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTexturePicasaSmall:Lcom/cooliris/media/Texture;

    .line 228
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_TRANSPARENT:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureTransparent:Lcom/cooliris/media/Texture;

    .line 229
    sget v0, Lcom/cooliris/media/GridDrawables;->TEXTURE_PLACEHOLDER:I

    invoke-virtual {p1, v0, v2}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTexturePlaceholder:Lcom/cooliris/media/Texture;

    .line 230
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFrame:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 231
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureGridFrame:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 232
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFrameFocus:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 233
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureFramePressed:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 235
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020037

    invoke-virtual {p1, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v2

    .line 236
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020038

    invoke-virtual {p1, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v3

    .line 237
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020039

    invoke-virtual {p1, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v1

    aput-object v1, v0, v4

    .line 238
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    const/4 v1, 0x3

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003a

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    const/4 v1, 0x4

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003b

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 240
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    const/4 v1, 0x5

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003c

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    const/4 v1, 0x6

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003d

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 242
    iget-object v0, p0, Lcom/cooliris/media/GridDrawables;->mTextureSpinner:[Lcom/cooliris/media/Texture;

    const/4 v1, 0x7

    sget-object v2, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v2, 0x7f02003e

    invoke-virtual {p1, v2}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    return-void
.end method
