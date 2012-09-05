.class Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientPileToModelPileMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;",
        "Lcom/google/android/music/albumwall/Model$ModelPile;",
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
    .line 488
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 489
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 490
    return-void
.end method


# virtual methods
.method public eglContextCleared()V
    .registers 4

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 525
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$ModelPile;->eglContextCleared()V

    goto :goto_8

    .line 527
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_18
    return-void
.end method

.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "helper"

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 506
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$ModelPile;->invalidate()V

    goto :goto_8

    .line 508
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_18
    return-void
.end method

.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V
    .registers 6
    .parameter "helper"
    .parameter "type"

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 512
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->invalidate(I)V

    goto :goto_8

    .line 514
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_18
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelPile;
    .registers 4
    .parameter "key"

    .prologue
    .line 494
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 495
    .local v0, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v0, :cond_f

    .line 499
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->this$0:Lcom/google/android/music/albumwall/Model;

    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .end local p1
    #calls: Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    invoke-static {v1, p1, v0}, Lcom/google/android/music/albumwall/Model;->access$300(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V

    .line 501
    :cond_f
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v0

    return-object v0
.end method
