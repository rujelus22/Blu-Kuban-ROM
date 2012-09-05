.class public Lcom/google/android/music/albumwall/PileView;
.super Lcom/google/android/opengl/glview/Stack;
.source "PileView.java"


# instance fields
.field private mIndex:I

.field private mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method public constructor <init>(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;IFFI)V
    .registers 7
    .parameter "id"
    .parameter "pile"
    .parameter "index"
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 14
    invoke-direct {p0, p1, p6}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 15
    iput-object p2, p0, Lcom/google/android/music/albumwall/PileView;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 16
    iput p3, p0, Lcom/google/android/music/albumwall/PileView;->mIndex:I

    .line 17
    invoke-virtual {p0, p4, p5}, Lcom/google/android/music/albumwall/PileView;->internalSetExtent(FF)V

    .line 18
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/music/albumwall/PileView;->mIndex:I

    return v0
.end method

.method public getMinLength(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/PileView;->length(Z)F

    move-result v0

    return v0
.end method

.method public getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/music/albumwall/PileView;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/Stack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/PileView;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
