.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1895
    const/4 v0, 0x4

    if-ne p2, v0, :cond_34

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-eqz v0, :cond_34

    .line 1896
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 1897
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1898
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 1899
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ICancel()V

    .line 1900
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->RequestViewerPrint(Ljava/lang/String;)V

    .line 1902
    :cond_34
    const/4 v0, 0x0

    return v0
.end method
