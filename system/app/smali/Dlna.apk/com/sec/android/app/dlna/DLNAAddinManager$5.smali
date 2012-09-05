.class Lcom/sec/android/app/dlna/DLNAAddinManager$5;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->stopItem()V
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
    .line 644
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 647
    :try_start_0
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.stopItem()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->player:Lcom/samsung/upnp/Device;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$1000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/Device;

    move-result-object v2

    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v1

    .line 650
    .local v1, stop:Lcom/samsung/upnp/Action;
    if-eqz v1, :cond_74

    .line 651
    const-string v2, "InstanceID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 653
    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 654
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAAddinManager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v1           #stop:Lcom/samsung/upnp/Action;
    :goto_44
    return-void

    .line 656
    .restart local v1       #stop:Lcom/samsung/upnp/Action;
    :cond_45
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAAddinManager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_44

    .line 661
    .end local v1           #stop:Lcom/samsung/upnp/Action;
    :catch_68
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.stopItem() - Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 659
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #stop:Lcom/samsung/upnp/Action;
    :cond_74
    :try_start_74
    const-string v2, "DLNA_Addin"

    const-string v3, "DLNAAddinManager.stop is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_68

    goto :goto_44
.end method
