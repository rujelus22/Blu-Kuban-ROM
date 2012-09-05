.class Lcom/sprint/w/installer/delivery/CatalogViewer$1;
.super Ljava/lang/Object;
.source "CatalogViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/CatalogViewer;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mSyncUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogViewer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_7
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 84
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/Catalog;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$300(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/Catalog;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogViewer;->updateListView()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$400(Lcom/sprint/w/installer/delivery/CatalogViewer;)V

    .line 87
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$500(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    :cond_40
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v0
.end method
