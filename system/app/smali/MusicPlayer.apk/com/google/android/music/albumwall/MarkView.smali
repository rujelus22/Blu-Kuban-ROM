.class public Lcom/google/android/music/albumwall/MarkView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "MarkView.java"


# instance fields
.field private mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 6
    .parameter "viewId"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 23
    iput-object p4, p0, Lcom/google/android/music/albumwall/MarkView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 24
    iput-object p5, p0, Lcom/google/android/music/albumwall/MarkView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 25
    return-void
.end method


# virtual methods
.method public getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/albumwall/MarkView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    return-object v0
.end method

.method protected getLoadingTextureId()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/albumwall/MarkView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getLabelLoadingTextureId()I

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .registers 4

    .prologue
    .line 38
    iget-object v1, p0, Lcom/google/android/music/albumwall/MarkView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MarkView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/Model;->getLabelMarkTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    .line 39
    .local v0, textureId:I
    return v0
.end method
