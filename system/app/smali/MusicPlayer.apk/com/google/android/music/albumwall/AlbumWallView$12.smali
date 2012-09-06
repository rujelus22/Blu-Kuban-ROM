.class Lcom/google/android/music/albumwall/AlbumWallView$12;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$expandedCount:I

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$unexpandedCount:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$unexpandedCount:I

    iput p5, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$expandedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$unexpandedCount:I

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$12;->val$expandedCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 587
    return-void
.end method
