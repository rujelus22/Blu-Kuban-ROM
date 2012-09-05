.class Lcom/google/android/music/albumwall/AlbumWallView$10;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$copy:Landroid/graphics/Rect;

.field final synthetic val$direction:I

.field final synthetic val$gainFocus:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-boolean p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$gainFocus:Z

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$direction:I

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$copy:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$gainFocus:Z

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$direction:I

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$copy:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 577
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/albumwall/AlbumWallView;->sendBoolean(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->access$200(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    .line 578
    return-void
.end method
