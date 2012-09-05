.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->progressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

.field final synthetic val$percentComplete:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iput p2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;->val$percentComplete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;->this$1:Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3$1;->val$percentComplete:I

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiProgressChanged(I)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$300(Lcom/sprint/w/installer/delivery/CatalogCardViewer;I)V

    .line 152
    return-void
.end method
