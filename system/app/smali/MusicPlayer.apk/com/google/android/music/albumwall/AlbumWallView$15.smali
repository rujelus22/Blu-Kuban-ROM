.class Lcom/google/android/music/albumwall/AlbumWallView$15;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$type:I

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object p5, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$type:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$15;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 612
    return-void
.end method
