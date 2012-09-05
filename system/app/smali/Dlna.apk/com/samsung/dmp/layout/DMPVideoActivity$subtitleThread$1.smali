.class Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)V
    .registers 2
    .parameter

    .prologue
    .line 2926
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2929
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7100(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Lcom/samsung/dmp/layout/SAMIReader;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 2930
    const-wide/16 v0, 0x0

    .line 2933
    .local v0, CurrentPosition:J
    :try_start_14
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_92

    move-result v3

    int-to-long v0, v3

    .line 2939
    :goto_21
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSAMIReader:Lcom/samsung/dmp/layout/SAMIReader;
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7100(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Lcom/samsung/dmp/layout/SAMIReader;

    move-result-object v4

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/samsung/dmp/layout/SAMIReader;->GetNextSubtitle(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7202(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7200(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7200(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_78

    .line 2944
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7200(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2945
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$7300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_78

    .line 2946
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$7200(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    .line 2950
    .end local v0           #CurrentPosition:J
    :cond_78
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-boolean v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    if-nez v3, :cond_91

    .line 2951
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iget-object v3, v3, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread$1;->this$1:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2952
    :cond_91
    return-void

    .line 2935
    .restart local v0       #CurrentPosition:J
    :catch_92
    move-exception v2

    .line 2936
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
