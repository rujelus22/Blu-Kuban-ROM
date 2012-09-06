.class Lcom/google/android/music/albumwall/Model$ModelItem;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelItem"
.end annotation


# instance fields
.field public mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-array v1, v4, [Lcom/google/android/music/albumwall/Model$RequestableTexture;

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v4, :cond_18

    .line 359
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    new-instance v2, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    aput-object v2, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 361
    :cond_18
    return-void
.end method


# virtual methods
.method public eglContextCleared()V
    .registers 3

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_e

    .line 375
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_e
    return-void
.end method

.method public final invalidate()V
    .registers 3

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_a
    return-void
.end method

.method public final invalidate(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->invalidate()V

    .line 371
    return-void
.end method
