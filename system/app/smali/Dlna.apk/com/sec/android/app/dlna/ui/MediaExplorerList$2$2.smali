.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$2;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->type_item:Lcom/samsung/api/ContentItem;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method
