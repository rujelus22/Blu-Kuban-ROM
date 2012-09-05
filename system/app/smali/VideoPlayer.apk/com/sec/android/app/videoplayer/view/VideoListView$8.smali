.class Lcom/sec/android/app/videoplayer/view/VideoListView$8;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->selectProcess()V
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
    .line 1018
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDeleteBtnClick()V

    .line 1021
    return-void
.end method
