.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
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
    .line 173
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyInstall()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$500(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 176
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-boolean v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mIsForeground:Z

    if-eqz v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$3;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 180
    :cond_18
    return-void
.end method
