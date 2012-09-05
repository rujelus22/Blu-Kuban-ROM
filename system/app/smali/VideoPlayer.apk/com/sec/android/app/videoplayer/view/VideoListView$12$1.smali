.class Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$12;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView$12;)V
    .registers 2
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$12;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->setAbortOperation(Z)V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$12$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$12;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$12;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1095
    return-void
.end method
