.class Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;
.super Ljava/lang/Object;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bottomMargin:F

.field final synthetic this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->bottomMargin:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    #getter for: Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->access$200(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v0

    .line 323
    .local v0, t:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v0, :cond_1b

    .line 324
    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->bottomMargin:F

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/opengl/glview/Transformer;->setMargins(FFFF)V

    .line 325
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    #getter for: Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->access$200(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 327
    :cond_1b
    return-void
.end method
