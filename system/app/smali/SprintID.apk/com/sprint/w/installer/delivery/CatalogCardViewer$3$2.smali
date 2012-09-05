.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->downloadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiDone()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$400(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 163
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$2;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->showDialog(I)V

    .line 165
    return-void
.end method
