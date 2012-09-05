.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Lcom/sprint/w/installer/DownloadService$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "packFilePath"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 173
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    new-instance v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    :cond_12
    return-void
.end method

.method public downloadFailed()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 160
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    new-instance v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_12
    return-void
.end method

.method public progressChanged(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 149
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    new-instance v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;I)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    :cond_12
    return-void
.end method
