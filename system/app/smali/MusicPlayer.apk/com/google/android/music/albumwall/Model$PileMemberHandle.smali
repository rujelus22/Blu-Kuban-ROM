.class Lcom/google/android/music/albumwall/Model$PileMemberHandle;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PileMemberHandle"
.end annotation


# instance fields
.field private mExpanded:Z

.field private mIndex:I

.field private mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .registers 4
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 598
    iput-boolean p2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    .line 599
    iput p3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    .line 600
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    if-ne p0, p1, :cond_5

    .line 625
    :cond_4
    :goto_4
    return v1

    .line 614
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 615
    goto :goto_4

    .line 616
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 617
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 618
    check-cast v0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    .line 619
    .local v0, other:Lcom/google/android/music/albumwall/Model$PileMemberHandle;
    iget-boolean v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    iget-boolean v4, v0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 620
    goto :goto_4

    .line 621
    :cond_20
    iget v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    iget v4, v0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    if-eq v3, v4, :cond_28

    move v1, v2

    .line 622
    goto :goto_4

    .line 623
    :cond_28
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-object v4, v0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 624
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 603
    const/16 v0, 0x1f

    .line 604
    .local v0, prime:I
    const/4 v1, 0x1

    .line 605
    .local v1, result:I
    iget-boolean v2, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    if-eqz v2, :cond_1c

    const/16 v2, 0x4cf

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 606
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    add-int v1, v2, v3

    .line 607
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 608
    return v1

    .line 605
    :cond_1c
    const/16 v2, 0x4d5

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PileMemberHandle [mPile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/Model$PileMemberHandle;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
