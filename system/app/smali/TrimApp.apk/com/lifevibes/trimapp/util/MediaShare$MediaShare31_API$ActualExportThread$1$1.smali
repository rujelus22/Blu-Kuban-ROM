.class Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1$1;
.super Ljava/lang/Object;
.source "MediaShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;)V
    .registers 2
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1$1;->this$3:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1$1;->this$3:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;

    iget-object v0, v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread$1;->this$2:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;

    iget-object v0, v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API$ActualExportThread;->this$1:Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->releaseTrimming()Z

    .line 617
    return-void
.end method
