.class Lcom/samsung/dmp/layout/DMPAudioActivity$31;
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
    .line 1884
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1886
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1887
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_91

    .line 1889
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1890
    .local v1, prevVolume:I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1892
    .local v0, nextVolume:I
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". mIsHeadsetPlugged is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/16 v2, 0xc

    if-gt v1, v2, :cond_7d

    const/16 v2, 0xd

    if-lt v0, v2, :cond_7d

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1894
    const-string v2, "DLNA"

    const-string v3, "show audio shock"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioShockToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1896
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioShockToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1899
    :cond_7d
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_92

    .line 1900
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02009e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1906
    .end local v0           #nextVolume:I
    .end local v1           #prevVolume:I
    :cond_91
    :goto_91
    return-void

    .line 1902
    .restart local v0       #nextVolume:I
    .restart local v1       #prevVolume:I
    :cond_92
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$4200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_91
.end method
