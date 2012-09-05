.class Lcom/sec/android/app/videoplayer/view/VideoListView$11;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->onDeleteBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->deleteFile()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1056
    return-void
.end method
