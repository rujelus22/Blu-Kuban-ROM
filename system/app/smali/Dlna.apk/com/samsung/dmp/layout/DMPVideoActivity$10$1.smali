.class Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$10;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity$10;)V
    .registers 2
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 980
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$10;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 981
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$10;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$10$1$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity$10$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 987
    :cond_16
    return-void
.end method
