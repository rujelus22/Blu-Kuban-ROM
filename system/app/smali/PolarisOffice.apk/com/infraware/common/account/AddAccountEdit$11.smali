.class Lcom/infraware/common/account/AddAccountEdit$11;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$11;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$11;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit$11;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v2}, Lcom/infraware/common/account/AddAccountEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/infraware/common/account/AddAccountEdit;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/infraware/common/account/AddAccountEdit;->access$11(Lcom/infraware/common/account/AddAccountEdit;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 574
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->cancel()V

    .line 575
    return-void
.end method
