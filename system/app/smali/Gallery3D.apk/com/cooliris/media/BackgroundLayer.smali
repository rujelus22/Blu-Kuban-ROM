.class public Lcom/cooliris/media/BackgroundLayer;
.super Lcom/cooliris/media/Layer;
.source "BackgroundLayer.java"


# instance fields
.field private mBackground:Lcom/cooliris/media/CrossFadingTexture;

.field private mBackgroundBlitWidth:I

.field private mBackgroundOverlap:I

.field private final mCacheAdaptiveTexture:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cooliris/media/Texture;",
            "Lcom/cooliris/media/AdaptiveBackgroundTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDefalutBackgroud:Lcom/cooliris/media/Texture;

.field private mFallbackBackground:Lcom/cooliris/media/Texture;

.field private final mGridLayer:Lcom/cooliris/media/GridLayer;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 4
    .parameter "layer"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    .line 43
    iput-object v1, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    .line 45
    iput-object v1, p0, Lcom/cooliris/media/BackgroundLayer;->mDefalutBackgroud:Lcom/cooliris/media/Texture;

    .line 56
    iput-object p1, p0, Lcom/cooliris/media/BackgroundLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 57
    return-void
.end method

.method private getAdaptive(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;)Lcom/cooliris/media/Texture;
    .registers 8
    .parameter "view"
    .parameter "item"

    .prologue
    .line 92
    if-nez p2, :cond_5

    .line 93
    iget-object v2, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    .line 112
    :cond_4
    :goto_4
    return-object v2

    .line 95
    :cond_5
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v1

    .line 96
    .local v1, itemThumbnail:Lcom/cooliris/media/Texture;
    if-eqz p2, :cond_18

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 97
    :cond_18
    iget-object v2, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    goto :goto_4

    .line 99
    :cond_1b
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    .line 100
    .local v0, adaptives:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/cooliris/media/Texture;Lcom/cooliris/media/AdaptiveBackgroundTexture;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/AdaptiveBackgroundTexture;

    .line 101
    .local v2, retVal:Lcom/cooliris/media/AdaptiveBackgroundTexture;
    if-nez v2, :cond_4

    .line 102
    new-instance v2, Lcom/cooliris/media/AdaptiveBackgroundTexture;

    .end local v2           #retVal:Lcom/cooliris/media/AdaptiveBackgroundTexture;
    const/16 v3, 0x100

    const/16 v4, 0x80

    invoke-direct {v2, v1, v3, v4}, Lcom/cooliris/media/AdaptiveBackgroundTexture;-><init>(Lcom/cooliris/media/Texture;II)V

    .line 104
    .restart local v2       #retVal:Lcom/cooliris/media/AdaptiveBackgroundTexture;
    iget v3, p0, Lcom/cooliris/media/BackgroundLayer;->mCount:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_41

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Lcom/cooliris/media/BackgroundLayer;->mCount:I

    .line 106
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    const-string v3, "AdaptiveBackground"

    const-string v4, "Clearing unused adaptive backgrounds."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_41
    iget v3, p0, Lcom/cooliris/media/BackgroundLayer;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cooliris/media/BackgroundLayer;->mCount:I

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/cooliris/media/BackgroundLayer;->clearCache()V

    .line 177
    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackground:Lcom/cooliris/media/CrossFadingTexture;

    .line 178
    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    .line 179
    return-void
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mCacheAdaptiveTexture:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 183
    return-void
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 61
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method protected onSizeChanged()V
    .registers 3

    .prologue
    .line 171
    iget v0, p0, Lcom/cooliris/media/Layer;->mWidth:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    .line 172
    iget v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundOverlap:I

    .line 173
    return-void
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 19
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/BackgroundLayer;->mBackground:Lcom/cooliris/media/CrossFadingTexture;

    .line 133
    .local v9, anchorTexture:Lcom/cooliris/media/CrossFadingTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/BackgroundLayer;->mBackground:Lcom/cooliris/media/CrossFadingTexture;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    if-nez v2, :cond_11

    .line 167
    :cond_10
    :goto_10
    return-void

    .line 135
    :cond_11
    const/16 v2, 0x302

    const/16 v3, 0x303

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 136
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/high16 v4, 0x4604

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/cooliris/media/CrossFadingTexture;->bind(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v11

    .line 138
    .local v11, bind:Z
    if-nez v11, :cond_ad

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 149
    :cond_38
    :goto_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/BackgroundLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getScrollPosition()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    float-to-int v12, v2

    .line 150
    .local v12, cameraPosition:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundOverlap:I

    sub-int v10, v2, v3

    .line 151
    .local v10, backgroundSpacing:I
    neg-int v2, v12

    rem-int v8, v2, v10

    .line 152
    .local v8, anchorEdge:I
    const/4 v14, 0x0

    .line 154
    .local v14, rightEdge:I
    int-to-float v3, v14

    const/4 v4, 0x0

    const v5, 0x3f7ff972

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/Layer;->mHeight:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 156
    int-to-float v3, v8

    const/4 v4, 0x0

    const v5, 0x3f7fb7e9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/Layer;->mHeight:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 158
    sub-int v13, v8, v10

    .line 159
    .local v13, leftEdge:I
    int-to-float v3, v13

    const/4 v4, 0x0

    const v5, 0x3f7f34d6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/BackgroundLayer;->mBackgroundBlitWidth:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/Layer;->mHeight:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 161
    if-eqz v11, :cond_96

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/cooliris/media/CrossFadingTexture;->unbind(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 165
    :cond_96
    const/4 v2, 0x1

    const/16 v3, 0x303

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 166
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    goto/16 :goto_10

    .line 141
    .end local v8           #anchorEdge:I
    .end local v10           #backgroundSpacing:I
    .end local v12           #cameraPosition:I
    .end local v13           #leftEdge:I
    .end local v14           #rightEdge:I
    :cond_ad
    invoke-virtual {v9}, Lcom/cooliris/media/CrossFadingTexture;->getTexture()Lcom/cooliris/media/Texture;

    move-result-object v15

    .line 142
    .local v15, texture:Lcom/cooliris/media/Texture;
    if-eqz v15, :cond_38

    invoke-virtual {v15}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 143
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    goto/16 :goto_38
.end method

.method public renderOpaque(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6
    .parameter "view"
    .parameter "gl"

    .prologue
    const v2, 0x7f02000b

    const/4 v1, 0x0

    .line 118
    const/16 v0, 0x4000

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 119
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    if-nez v0, :cond_1a

    .line 120
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    invoke-virtual {p1, v2, v1}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    .line 121
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 124
    :cond_1a
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mDefalutBackgroud:Lcom/cooliris/media/Texture;

    if-nez v0, :cond_2b

    .line 125
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    invoke-virtual {p1, v2, v1}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mDefalutBackgroud:Lcom/cooliris/media/Texture;

    .line 126
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mDefalutBackgroud:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 128
    :cond_2b
    return-void
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 8
    .parameter "view"
    .parameter "frameInterval"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/cooliris/media/BackgroundLayer;->mFallbackBackground:Lcom/cooliris/media/Texture;

    .line 69
    .local v2, fallback:Lcom/cooliris/media/Texture;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_c

    .line 70
    :cond_a
    const/4 v3, 0x0

    .line 88
    :goto_b
    return v3

    .line 71
    :cond_c
    iget-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackground:Lcom/cooliris/media/CrossFadingTexture;

    .line 72
    .local v0, background:Lcom/cooliris/media/CrossFadingTexture;
    if-nez v0, :cond_17

    .line 73
    new-instance v0, Lcom/cooliris/media/CrossFadingTexture;

    .end local v0           #background:Lcom/cooliris/media/CrossFadingTexture;
    invoke-direct {v0, v2}, Lcom/cooliris/media/CrossFadingTexture;-><init>(Lcom/cooliris/media/Texture;)V

    .line 74
    .restart local v0       #background:Lcom/cooliris/media/CrossFadingTexture;
    iput-object v0, p0, Lcom/cooliris/media/BackgroundLayer;->mBackground:Lcom/cooliris/media/CrossFadingTexture;

    .line 76
    :cond_17
    invoke-virtual {v0, p2}, Lcom/cooliris/media/CrossFadingTexture;->update(F)Z

    move-result v3

    .line 82
    .local v3, retVal:Z
    iget-object v4, p0, Lcom/cooliris/media/BackgroundLayer;->mGridLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getRepresentativeDisplayItem()Lcom/cooliris/media/DisplayItem;

    move-result-object v1

    .line 83
    .local v1, displayItem:Lcom/cooliris/media/DisplayItem;
    if-eqz v1, :cond_2b

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/cooliris/media/BackgroundLayer;->getAdaptive(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;)Lcom/cooliris/media/Texture;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cooliris/media/CrossFadingTexture;->setTexture(Lcom/cooliris/media/Texture;)V

    goto :goto_b

    .line 86
    :cond_2b
    iget-object v4, p0, Lcom/cooliris/media/BackgroundLayer;->mDefalutBackgroud:Lcom/cooliris/media/Texture;

    invoke-virtual {v0, v4}, Lcom/cooliris/media/CrossFadingTexture;->setTexture(Lcom/cooliris/media/Texture;)V

    goto :goto_b
.end method
