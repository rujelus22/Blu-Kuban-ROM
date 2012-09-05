.class Lcom/samsung/dmp/layout/DMPVideoActivity$15;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$15;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1683
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.releaseMediaplayer() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$15;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1685
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.releaseMediaplayer() - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-void
.end method
