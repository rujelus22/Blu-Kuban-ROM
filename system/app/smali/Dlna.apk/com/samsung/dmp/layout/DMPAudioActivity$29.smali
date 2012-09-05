.class Lcom/samsung/dmp/layout/DMPAudioActivity$29;
.super Landroid/content/BroadcastReceiver;
.source "DMPAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1838
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, action:Ljava/lang/String;
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPalmTouchReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1842
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1843
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsPalmAvailable:Z
    invoke-static {v1, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4002(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1844
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handlePlayOrPause()V

    .line 1855
    :cond_3b
    :goto_3b
    return-void

    .line 1846
    :cond_3c
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsPalmAvailable:Z
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4002(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto :goto_3b

    .line 1848
    :cond_43
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1849
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsPalmAvailable:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_59

    .line 1850
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handlePlayOrPause()V

    goto :goto_3b

    .line 1852
    :cond_59
    const-string v1, "DLNA"

    const-string v2, "mIsPalmAvailable == false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
