.class Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrdinalToRequestablePileMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/music/albumwall/Model$RequestablePile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/Model;I)V
    .registers 3
    .parameter
    .parameter "size"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 459
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 460
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/Model$RequestablePile;)V
    .registers 2
    .parameter "pile"

    .prologue
    .line 476
    return-void
.end method


# virtual methods
.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "helper"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 480
    .local v1, pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestablePile;->invalidate()V

    .line 481
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    goto :goto_8

    .line 483
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    :cond_1b
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestablePile;
    .registers 3
    .parameter "key"

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 465
    .local v0, pile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-eqz v0, :cond_b

    .line 469
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->handleRemoval(Lcom/google/android/music/albumwall/Model$RequestablePile;)V

    .line 471
    :cond_b
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    return-object v0
.end method
