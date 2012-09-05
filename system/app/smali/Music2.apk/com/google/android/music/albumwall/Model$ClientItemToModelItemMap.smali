.class Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientItemToModelItemMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Lcom/google/android/music/albumwall/AlbumWallCallback$Item;",
        "Lcom/google/android/music/albumwall/Model$ModelItem;",
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
    .line 535
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 536
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 537
    return-void
.end method


# virtual methods
.method public eglContextCleared()V
    .registers 4

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 575
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->eglContextCleared()V

    goto :goto_8

    .line 577
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_18
    return-void
.end method

.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "helper"

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 553
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate()V

    goto :goto_8

    .line 555
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_18
    return-void
.end method

.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V
    .registers 6
    .parameter "helper"
    .parameter "type"

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 562
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    goto :goto_8

    .line 564
    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    :cond_18
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelItem;
    .registers 4
    .parameter "key"

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 542
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-eqz v0, :cond_f

    .line 546
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .end local p1
    #calls: Lcom/google/android/music/albumwall/Model;->handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    invoke-static {v1, p1, v0}, Lcom/google/android/music/albumwall/Model;->access$400(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V

    .line 548
    :cond_f
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$ModelItem;

    move-result-object v0

    return-object v0
.end method
