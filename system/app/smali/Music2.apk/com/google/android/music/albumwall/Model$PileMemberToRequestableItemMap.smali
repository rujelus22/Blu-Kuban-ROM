.class Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;
.super Lcom/google/android/music/albumwall/LRUCache;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PileMemberToRequestableItemMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/music/albumwall/LRUCache",
        "<",
        "Lcom/google/android/music/albumwall/Model$PileMemberHandle;",
        "Lcom/google/android/music/albumwall/Model$RequestableItem;",
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
    .line 631
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->this$0:Lcom/google/android/music/albumwall/Model;

    .line 632
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/LRUCache;-><init>(I)V

    .line 633
    return-void
.end method

.method private handleRemove(Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;)V
    .registers 3
    .parameter "key"
    .parameter "item"

    .prologue
    .line 649
    return-void
.end method


# virtual methods
.method public invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "helper"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 653
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->invalidate()V

    .line 656
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_8

    .line 658
    .end local v0           #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    :cond_1b
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestableItem;
    .registers 3
    .parameter "key"

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/google/android/music/albumwall/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 638
    .local v0, item:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-eqz v0, :cond_d

    .line 642
    check-cast p1, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    .end local p1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->handleRemove(Lcom/google/android/music/albumwall/Model$PileMemberHandle;Lcom/google/android/music/albumwall/Model$RequestableItem;)V

    .line 644
    :cond_d
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->remove(Ljava/lang/Object;)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v0

    return-object v0
.end method
