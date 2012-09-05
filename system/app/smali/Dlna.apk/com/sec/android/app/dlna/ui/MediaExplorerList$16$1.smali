.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$16$1;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;)V
    .registers 2
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$16;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 1749
    return-void
.end method
