.class Lcom/google/android/music/albumwall/Model$ModelPilePart;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelPilePart"
.end annotation


# instance fields
.field mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

.field mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v1, Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-direct {v1, v4}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 391
    new-array v1, v3, [Lcom/google/android/music/albumwall/Model$RequestableTexture;

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 392
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v3, :cond_1f

    .line 393
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    new-instance v2, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v2, v4}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    aput-object v2, v1, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 395
    :cond_1f
    return-void
.end method


# virtual methods
.method public eglContextCleared()V
    .registers 3

    .prologue
    .line 409
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 410
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_e
    return-void
.end method

.method public final invalidate()V
    .registers 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->invalidate()V

    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 402
    :cond_f
    return-void
.end method

.method public final invalidate(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->invalidate()V

    .line 406
    return-void
.end method
