.class public final Lcom/cooliris/media/BoundaryImage;
.super Lcom/cooliris/media/Layer;
.source "BoundaryImage.java"


# instance fields
.field private mEdge:I

.field mEdgeTexture:Lcom/cooliris/media/Texture;

.field private mGlow:I

.field mGlowTexture:Lcom/cooliris/media/Texture;

.field private mOffsetX:F

.field private mOffsetY:F

.field private final mTransparent:I

.field mView:Lcom/cooliris/media/RenderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 28
    iput v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdge:I

    .line 29
    iput v1, p0, Lcom/cooliris/media/BoundaryImage;->mGlow:I

    .line 30
    iput v0, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetX:F

    .line 31
    iput v0, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetY:F

    .line 36
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f02007f

    iput v0, p0, Lcom/cooliris/media/BoundaryImage;->mTransparent:I

    .line 41
    return-void
.end method


# virtual methods
.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 5
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 50
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p1, p0, Lcom/cooliris/media/BoundaryImage;->mView:Lcom/cooliris/media/RenderView;

    .line 54
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mView:Lcom/cooliris/media/RenderView;

    iget v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdge:I

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    .line 55
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mView:Lcom/cooliris/media/RenderView;

    iget v1, p0, Lcom/cooliris/media/BoundaryImage;->mGlow:I

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    .line 56
    return-void
.end method

.method public getGlowHeight()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iget v0, v0, Lcom/cooliris/media/Texture;->mHeight:I

    return v0
.end method

.method public getGlowWidth()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iget v0, v0, Lcom/cooliris/media/Texture;->mWidth:I

    return v0
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 8
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 61
    iget v1, p0, Lcom/cooliris/media/BoundaryImage;->mTransparent:I

    invoke-virtual {p1, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    .line 62
    .local v0, transparent:Lcom/cooliris/media/Texture;
    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    if-nez v1, :cond_c

    .line 63
    iput-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    .line 65
    :cond_c
    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    if-nez v1, :cond_12

    .line 66
    iput-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    .line 68
    :cond_12
    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    iget v2, p0, Lcom/cooliris/media/Layer;->mX:F

    iget v3, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/cooliris/media/Layer;->mY:F

    iget v4, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 69
    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iget v2, p0, Lcom/cooliris/media/Layer;->mX:F

    iget v3, p0, Lcom/cooliris/media/Layer;->mY:F

    invoke-virtual {p1, v1, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 70
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/cooliris/media/BoundaryImage;->mEdge:I

    iget v1, p0, Lcom/cooliris/media/BoundaryImage;->mGlow:I

    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/BoundaryImage;->setImages(II)V

    .line 74
    return-void
.end method

.method public setEdgeOffset(F)V
    .registers 4
    .parameter "zoomValue"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iget v0, v0, Lcom/cooliris/media/Texture;->mWidth:I

    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    iget v1, v1, Lcom/cooliris/media/Texture;->mWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetX:F

    .line 89
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iget v0, v0, Lcom/cooliris/media/Texture;->mHeight:I

    iget-object v1, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    iget v1, v1, Lcom/cooliris/media/Texture;->mHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/BoundaryImage;->mOffsetY:F

    .line 90
    return-void
.end method

.method public setImageSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    if-eqz p1, :cond_a

    .line 78
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    iput p1, v0, Lcom/cooliris/media/Texture;->mWidth:I

    .line 79
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iput p1, v0, Lcom/cooliris/media/Texture;->mWidth:I

    .line 81
    :cond_a
    if-eqz p2, :cond_14

    .line 82
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mEdgeTexture:Lcom/cooliris/media/Texture;

    iput p2, v0, Lcom/cooliris/media/Texture;->mHeight:I

    .line 83
    iget-object v0, p0, Lcom/cooliris/media/BoundaryImage;->mGlowTexture:Lcom/cooliris/media/Texture;

    iput p2, v0, Lcom/cooliris/media/Texture;->mHeight:I

    .line 85
    :cond_14
    return-void
.end method

.method public setImages(II)V
    .registers 3
    .parameter "edge"
    .parameter "glow"

    .prologue
    .line 44
    iput p1, p0, Lcom/cooliris/media/BoundaryImage;->mEdge:I

    .line 45
    iput p2, p0, Lcom/cooliris/media/BoundaryImage;->mGlow:I

    .line 46
    return-void
.end method
