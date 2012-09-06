.class Lcom/google/android/music/albumwall/Model$10;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/Model;->handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/Model;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$10;->this$0:Lcom/google/android/music/albumwall/Model;

    iput-object p2, p0, Lcom/google/android/music/albumwall/Model$10;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput p3, p0, Lcom/google/android/music/albumwall/Model$10;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$10;->this$0:Lcom/google/android/music/albumwall/Model;

    #getter for: Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model;->access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$10;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget v2, p0, Lcom/google/android/music/albumwall/Model$10;->val$type:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onUnregisterForItemTextureChangeNotification(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 1633
    return-void
.end method
