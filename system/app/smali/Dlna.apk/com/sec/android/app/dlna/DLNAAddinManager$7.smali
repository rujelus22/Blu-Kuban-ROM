.class Lcom/sec/android/app/dlna/DLNAAddinManager$7;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->pauseItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$7;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 780
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$7;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v2

    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v1

    .line 783
    .local v1, pause:Lcom/samsung/upnp/Action;
    if-eqz v1, :cond_22

    .line 784
    const-string v2, "InstanceID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 785
    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->postControlAction()Z

    .line 786
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$7;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    .line 795
    .end local v1           #pause:Lcom/samsung/upnp/Action;
    :goto_21
    return-void

    .line 788
    .restart local v1       #pause:Lcom/samsung/upnp/Action;
    :cond_22
    const-string v2, "DLNA_Addin"

    const-string v3, "pause == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_21

    .line 790
    .end local v1           #pause:Lcom/samsung/upnp/Action;
    :catch_2a
    move-exception v0

    .line 791
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.pauseItem() - Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$7;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->notifyGuiEvent(I)V

    goto :goto_21
.end method
