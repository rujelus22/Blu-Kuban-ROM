.class public Lcom/google/android/music/albumwall/PileLabel;
.super Lcom/google/android/music/albumwall/Label;
.source "PileLabel.java"


# instance fields
.field private mExpanded:Z

.field private mIndex:I

.field private mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .registers 8
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Label;-><init>(IFFLcom/google/android/music/albumwall/Model;)V

    .line 15
    iput-object p5, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 16
    iput-boolean p6, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    .line 17
    iput p7, p0, Lcom/google/android/music/albumwall/PileLabel;->mIndex:I

    .line 18
    return-void
.end method


# virtual methods
.method protected ensureVertexData()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 39
    iget-object v4, p0, Lcom/google/android/music/albumwall/PileLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v5, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v6, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/music/albumwall/Model;->getPileTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F

    move-result v2

    .line 40
    .local v2, tw:F
    iget-object v4, p0, Lcom/google/android/music/albumwall/PileLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v5, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v6, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/music/albumwall/Model;->getPileTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F

    move-result v1

    .line 41
    .local v1, th:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/PileLabel;->width()F

    move-result v3

    .line 42
    .local v3, w:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/PileLabel;->height()F

    move-result v0

    .line 43
    .local v0, h:F
    cmpl-float v4, v2, v3

    if-nez v4, :cond_25

    cmpl-float v4, v1, v0

    if-eqz v4, :cond_2b

    .line 44
    :cond_25
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/albumwall/PileLabel;->internalSetExtent(FF)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/google/android/music/albumwall/PileLabel;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 47
    :cond_2b
    invoke-super {p0}, Lcom/google/android/music/albumwall/Label;->ensureVertexData()V

    .line 48
    return-void
.end method

.method public getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method protected getTextureFadeInFactor()F
    .registers 7

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/albumwall/PileLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->getPileTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZJ)F

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .registers 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/music/albumwall/PileLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/Model;->getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/music/albumwall/Label;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/PileLabel;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/PileLabel;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/PileLabel;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
