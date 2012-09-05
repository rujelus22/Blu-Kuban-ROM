.class Lcom/samsung/dmp/layout/DMPAudioActivity$1$1;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1$1;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1$1;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 298
    return-void
.end method
