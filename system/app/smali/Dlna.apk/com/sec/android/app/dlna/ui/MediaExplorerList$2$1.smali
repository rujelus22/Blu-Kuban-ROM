.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;
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

.field final synthetic val$temp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->val$temp:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->val$temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v2, v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mCurPage:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$700(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2$1;->this$1:Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;

    iget-object v2, v2, Lcom/sec/android/app/dlna/ui/MediaExplorerList$2;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mTotalItemCnt:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v2

    div-int/lit16 v2, v2, 0x1f4

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method
