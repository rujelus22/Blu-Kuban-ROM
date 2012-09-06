.class public interface abstract Lcom/google/android/music/albumwall/AlbumWallCallback;
.super Ljava/lang/Object;
.source "AlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;,
        Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    }
.end annotation


# virtual methods
.method public abstract onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end method

.method public abstract onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V
.end method

.method public abstract onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end method

.method public abstract onItemPartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end method

.method public abstract onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
.end method

.method public abstract onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V
.end method

.method public abstract onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V
.end method

.method public abstract onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
.end method

.method public abstract onPilePartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
.end method

.method public abstract onRecycleItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onRecyclePileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
.end method

.method public abstract onRegisterForItemTextureChangeNotification(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
.end method

.method public abstract onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V
.end method

.method public abstract onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V
.end method

.method public abstract onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
.end method

.method public abstract onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V
.end method

.method public abstract onRequestPileCount(Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
.end method

.method public abstract onRequestPileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
.end method

.method public abstract onUnregisterForItemTextureChangeNotification(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
.end method
