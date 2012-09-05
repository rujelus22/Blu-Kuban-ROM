.class Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;
.super Ljava/lang/Object;
.source "MediaShare.java"

# interfaces
.implements Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V
    .registers 8
    .parameter "ve"
    .parameter "outFileName"
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 610
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mExportStarted:Z
    invoke-static {v1, v3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->access$302(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;Z)Z

    .line 611
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCanceled:Z
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->access$400(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 612
    new-instance v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1$1;

    invoke-direct {v0, p0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1$1;-><init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;)V

    .line 619
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    iget-object v1, v1, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mExpertCancelHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$500(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    .end local v0           #runnable:Ljava/lang/Runnable;
    :cond_1e
    :goto_1e
    return-void

    .line 623
    :cond_1f
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    iget-object v1, v1, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    #getter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->mListener:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;
    invoke-static {v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->access$100(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;->onProgress(II)V

    .line 624
    const/16 v1, 0x64

    if-lt p3, v1, :cond_1e

    .line 625
    iget-object v1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    #setter for: Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->mCompleted:Z
    invoke-static {v1, v3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->access$602(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;Z)Z

    goto :goto_1e
.end method
