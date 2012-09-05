.class Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;
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
    .line 337
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 342
    :try_start_b
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;->this$1:Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    .line 346
    :goto_16
    return-void

    .line 343
    :catch_17
    move-exception v0

    .line 344
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method
