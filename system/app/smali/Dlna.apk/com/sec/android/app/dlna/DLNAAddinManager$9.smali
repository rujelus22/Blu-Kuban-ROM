.class Lcom/sec/android/app/dlna/DLNAAddinManager$9;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->seekItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$9;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iput-object p2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$9;->val$target:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$9;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v2

    const-string v3, "Seek"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 834
    .local v0, action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_29

    .line 835
    new-instance v2, Lcom/samsung/api/DMCAPIException;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_16

    .line 848
    .end local v0           #action:Lcom/samsung/upnp/Action;
    :catch_16
    move-exception v1

    .line 849
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.seekItem() - Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$9;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 853
    .end local v1           #e:Ljava/lang/Exception;
    :cond_28
    return-void

    .line 837
    .restart local v0       #action:Lcom/samsung/upnp/Action;
    :cond_29
    :try_start_29
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v2, "Unit"

    const-string v3, "REL_TIME"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v2, "Target"

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$9;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v2

    if-nez v2, :cond_28

    .line 842
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v2

    const/16 v3, 0x19a

    if-ne v2, v3, :cond_60

    .line 843
    new-instance v2, Lcom/samsung/api/DMCAPIException;

    const/16 v3, 0x9

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v2

    .line 845
    :cond_60
    new-instance v2, Lcom/samsung/api/DMCAPIException;

    const/16 v3, 0x1f5

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v2
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_70} :catch_16
.end method
