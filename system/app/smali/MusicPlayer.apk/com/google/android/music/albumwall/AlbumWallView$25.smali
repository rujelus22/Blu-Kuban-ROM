.class Lcom/google/android/music/albumwall/AlbumWallView$25;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$25;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$25;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$25;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$25;->val$event:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->sendAccessibilityEvent(I)V

    .line 768
    return-void
.end method
