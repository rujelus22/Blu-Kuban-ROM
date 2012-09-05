.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 357
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->clearNotification()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$800(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 360
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->finish()V

    .line 361
    return-void
.end method
