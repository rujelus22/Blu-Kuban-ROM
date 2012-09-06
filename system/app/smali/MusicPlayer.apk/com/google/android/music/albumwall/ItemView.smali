.class public Lcom/google/android/music/albumwall/ItemView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "ItemView.java"


# static fields
.field private static final mCube:Landroid/view/animation/DecelerateInterpolator;

.field private static final mQuad:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ecccccd

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/music/albumwall/ItemView;->mQuad:Landroid/view/animation/DecelerateInterpolator;

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/music/albumwall/ItemView;->mCube:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 6
    .parameter "viewId"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 26
    iput-object p4, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 27
    iput-object p5, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 28
    return-void
.end method

.method private calculateRotationForFactor(FFFFF)F
    .registers 10
    .parameter "overScrollFactor"
    .parameter "range"
    .parameter "pos"
    .parameter "nonOverscrollOffset"
    .parameter "itemRange"

    .prologue
    const/high16 v3, 0x3f00

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, ratio:F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_23

    .line 87
    mul-float v2, p5, v3

    add-float/2addr v2, p3

    sub-float v2, p2, v2

    div-float v1, v2, p2

    .line 88
    sget-object v2, Lcom/google/android/music/albumwall/ItemView;->mQuad:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 89
    sget-object v2, Lcom/google/android/music/albumwall/ItemView;->mCube:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    .line 95
    :goto_1b
    mul-float v0, p1, v1

    .line 96
    .local v0, angle:F
    neg-float v2, v0

    const/high16 v3, 0x4248

    mul-float v0, v2, v3

    .line 97
    return v0

    .line 91
    .end local v0           #angle:F
    :cond_23
    mul-float v2, p5, v3

    add-float/2addr v2, p3

    add-float/2addr v2, p4

    div-float v1, v2, p2

    .line 92
    sget-object v2, Lcom/google/android/music/albumwall/ItemView;->mQuad:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 93
    sget-object v2, Lcom/google/android/music/albumwall/ItemView;->mCube:Landroid/view/animation/DecelerateInterpolator;

    neg-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    neg-float p1, v2

    goto :goto_1b
.end method


# virtual methods
.method public drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z
    .registers 13
    .parameter "glCanvas"
    .parameter "textureChannel"

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x4080

    const/high16 v2, 0x4000

    const/4 v8, 0x0

    const/high16 v7, -0x4000

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, patch:Lcom/google/android/opengl/glview/NinePatch;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/ItemView;->testAndFlags(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 43
    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    .line 45
    :cond_16
    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/ItemView;->testAndFlags(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 46
    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    .line 48
    :cond_22
    if-eqz v0, :cond_3d

    .line 49
    const/high16 v6, 0x4000

    .line 50
    .local v6, border:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->width()F

    move-result v1

    sub-float v3, v1, v9

    .line 51
    .local v3, w:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->height()F

    move-result v1

    sub-float v4, v1, v9

    .line 52
    .local v4, h:F
    invoke-virtual {p1, v2, v2, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    move-object v1, p1

    move v2, p2

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/NinePatch;->draw(Lcom/google/android/opengl/glview/GLCanvas;IFFZ)V

    .line 54
    invoke-virtual {p1, v7, v7, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 56
    .end local v3           #w:F
    .end local v4           #h:F
    .end local v6           #border:F
    :cond_3d
    const/4 v1, 0x0

    return v1
.end method

.method public getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    return-object v0
.end method

.method protected getLoadingTextureId()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getAlbumLoadingTextureId()I

    move-result v0

    return v0
.end method

.method protected getTextureFadeInFactor()F
    .registers 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/Model;->getItemTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;J)F

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(ILjava/lang/Object;)V
    .registers 15
    .parameter "message"
    .parameter "visitor"

    .prologue
    const/4 v6, 0x0

    .line 61
    sparse-switch p1, :sswitch_data_58

    .line 81
    .end local p2
    :cond_4
    :goto_4
    return-void

    .line 63
    .restart local p2
    :sswitch_5
    check-cast p2, Lcom/google/android/music/albumwall/AlbumPoseCache;

    .end local p2
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v2

    invoke-virtual {p2, p0, v2, v3}, Lcom/google/android/music/albumwall/AlbumPoseCache;->record(Lcom/google/android/music/albumwall/ItemView;J)V

    goto :goto_4

    .restart local p2
    :sswitch_11
    move-object v9, p2

    .line 66
    check-cast v9, Lcom/google/android/opengl/glview/Transformer;

    .line 67
    .local v9, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->getOverScrollX()F

    move-result v1

    .line 68
    .local v1, overScrollXFactor:F
    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->getOverScrollY()F

    move-result v8

    .line 69
    .local v8, overScrollYFactor:F
    cmpl-float v0, v1, v6

    if-eqz v0, :cond_38

    .line 70
    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->x()F

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->nonOverScrollOffsetX()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->width()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/ItemView;->calculateRotationForFactor(FFFFF)F

    move-result v11

    .line 72
    .local v11, yAngle:F
    invoke-virtual {p0, v11}, Lcom/google/android/music/albumwall/ItemView;->setRotationY(F)V

    .line 74
    .end local v11           #yAngle:F
    :cond_38
    cmpl-float v0, v8, v6

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->y()F

    move-result v5

    invoke-virtual {v9}, Lcom/google/android/opengl/glview/Transformer;->nonOverScrollOffsetY()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->height()F

    move-result v7

    move-object v2, p0

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/ItemView;->calculateRotationForFactor(FFFFF)F

    move-result v10

    .line 77
    .local v10, xAngle:F
    neg-float v0, v10

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/ItemView;->setRotationX(F)V

    goto :goto_4

    .line 61
    nop

    :sswitch_data_58
    .sparse-switch
        0x7 -> :sswitch_11
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
