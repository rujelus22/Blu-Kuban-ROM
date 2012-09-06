.class public Lcom/google/android/music/albumwall/MusicPile;
.super Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
.source "MusicPile.java"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mMode:I

.field private mOverlayLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p1, :cond_4

    .line 47
    :cond_3
    :goto_3
    return v1

    .line 40
    :cond_4
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    .line 44
    .local v0, o:Lcom/google/android/music/albumwall/MusicPile;
    iget v2, v0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    iget v3, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    if-ne v2, v3, :cond_3

    .line 47
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    return v0
.end method

.method public getOverlayLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 12
    iput p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    .line 13
    return-void
.end method

.method public setOverlayLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "overlayLabel"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicPile;->mOverlayLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicPile;->getSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
