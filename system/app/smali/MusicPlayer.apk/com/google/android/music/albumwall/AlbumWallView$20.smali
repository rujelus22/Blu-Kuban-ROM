.class Lcom/google/android/music/albumwall/AlbumWallView$20;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$type:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 670
    return-void
.end method
