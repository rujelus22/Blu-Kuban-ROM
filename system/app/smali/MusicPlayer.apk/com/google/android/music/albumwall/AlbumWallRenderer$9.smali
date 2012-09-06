.class Lcom/google/android/music/albumwall/AlbumWallRenderer$9;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$pt:Lcom/google/android/opengl/glview/Point;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->val$pt:Lcom/google/android/opengl/glview/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->val$pt:Lcom/google/android/opengl/glview/Point;

    iget v3, v3, Lcom/google/android/opengl/glview/Point;->x:F

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;->val$pt:Lcom/google/android/opengl/glview/Point;

    iget v4, v4, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onPilePartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V

    .line 675
    return-void
.end method
