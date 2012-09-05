.class Lcom/infraware/common/account/EditAccount$13;
.super Ljava/lang/Object;
.source "EditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/EditAccount;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/EditAccount;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/EditAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount$13;->this$0:Lcom/infraware/common/account/EditAccount;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount$13;->this$0:Lcom/infraware/common/account/EditAccount;

    iget-object v2, p0, Lcom/infraware/common/account/EditAccount$13;->this$0:Lcom/infraware/common/account/EditAccount;

    invoke-virtual {v2}, Lcom/infraware/common/account/EditAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/infraware/common/account/EditAccount;->access$13(Lcom/infraware/common/account/EditAccount;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 564
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->cancel()V

    .line 565
    return-void
.end method
