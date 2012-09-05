.class Lcom/sec/android/app/dlna/DLNAManager$5;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Lcom/samsung/api/CreateObjectReceived;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;)V
    .registers 2
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateObjectReceived()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 672
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v3, 0x1a2d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAManager;->access$100(Lcom/sec/android/app/dlna/DLNAManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "upload_option"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 694
    :goto_22
    return v1

    .line 680
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAManager;->access$100(Lcom/sec/android/app/dlna/DLNAManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "upload_option"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iput-boolean v1, v2, Lcom/sec/android/app/dlna/DLNAManager;->isWaiting:Z

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;
    invoke-static {v1}, Lcom/sec/android/app/dlna/DLNAManager;->access$200(Lcom/sec/android/app/dlna/DLNAManager;)Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    const/16 v2, 0x438

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 683
    :goto_48
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iget-boolean v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->isWaiting:Z

    if-eqz v1, :cond_59

    .line 686
    const-wide/16 v1, 0xc8

    :try_start_50
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_48

    .line 687
    :catch_54
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    .line 691
    .end local v0           #e:Ljava/lang/Exception;
    :cond_59
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager$5;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iget-boolean v1, v1, Lcom/sec/android/app/dlna/DLNAManager;->isUpload:Z

    goto :goto_22

    .line 694
    :cond_5e
    const/4 v1, 0x0

    goto :goto_22
.end method
