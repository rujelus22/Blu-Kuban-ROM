.class Lcom/google/android/music/albumwall/AlbumWallView$7;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->routeEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$arg1:F

.field final synthetic val$arg2:F

.field final synthetic val$copy1:Landroid/view/MotionEvent;

.field final synthetic val$copy2:Landroid/view/MotionEvent;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$tag:I

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy1:Landroid/view/MotionEvent;

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy2:Landroid/view/MotionEvent;

    iput p5, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$arg1:F

    iput p6, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$arg2:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$tag:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy1:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy2:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$arg1:F

    iget v5, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$arg2:F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    .line 375
    .local v6, result:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy1:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1d

    .line 376
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 378
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy2:Landroid/view/MotionEvent;

    if-eqz v0, :cond_26

    .line 379
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->val$copy2:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    :cond_26
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #calls: Lcom/google/android/music/albumwall/AlbumWallView;->sendBoolean(Z)V
    invoke-static {v0, v6}, Lcom/google/android/music/albumwall/AlbumWallView;->access$200(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    .line 382
    return-void
.end method
