.class Lcom/google/android/music/albumwall/AlbumWallRenderer$13;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$forceSetting:Z

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-boolean p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->val$visible:Z

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->val$forceSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1283
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedForVisibility(Z)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    .line 1285
    .local v0, currentlyVisible:Z
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->val$visible:Z

    if-ne v1, v0, :cond_1d

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->val$forceSetting:Z

    if-eqz v1, :cond_33

    .line 1286
    :cond_1d
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-boolean v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->val$visible:Z

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedForVisibility(Z)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 1287
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #calls: Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V
    invoke-static {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$1200(Lcom/google/android/music/albumwall/AlbumWallRenderer;)V

    .line 1289
    :cond_33
    return-void

    .line 1283
    .end local v0           #currentlyVisible:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_15
.end method
