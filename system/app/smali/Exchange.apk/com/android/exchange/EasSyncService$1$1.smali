.class Lcom/android/exchange/EasSyncService$1$1;
.super Ljava/lang/Thread;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/EasSyncService$1;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/EasSyncService$1;


# direct methods
.method constructor <init>(Lcom/android/exchange/EasSyncService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$1$1;->this$1:Lcom/android/exchange/EasSyncService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService$1$1;->this$1:Lcom/android/exchange/EasSyncService$1;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    #calls: Lcom/android/exchange/EasSyncService;->formatExtStorage()I
    invoke-static {v1}, Lcom/android/exchange/EasSyncService;->access$200(Lcom/android/exchange/EasSyncService;)I
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_15

    .line 789
    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$300()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/exchange/EasSyncService$1$1;->this$1:Lcom/android/exchange/EasSyncService$1;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    #calls: Lcom/android/exchange/EasSyncService;->performWipe()V
    invoke-static {v1}, Lcom/android/exchange/EasSyncService;->access$400(Lcom/android/exchange/EasSyncService;)V

    .line 792
    :cond_14
    :goto_14
    return-void

    .line 785
    :catch_15
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/Exception;
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_27

    .line 789
    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$300()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/exchange/EasSyncService$1$1;->this$1:Lcom/android/exchange/EasSyncService$1;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    #calls: Lcom/android/exchange/EasSyncService;->performWipe()V
    invoke-static {v1}, Lcom/android/exchange/EasSyncService;->access$400(Lcom/android/exchange/EasSyncService;)V

    goto :goto_14

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_27
    move-exception v1

    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$300()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/android/exchange/EasSyncService$1$1;->this$1:Lcom/android/exchange/EasSyncService$1;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    #calls: Lcom/android/exchange/EasSyncService;->performWipe()V
    invoke-static {v2}, Lcom/android/exchange/EasSyncService;->access$400(Lcom/android/exchange/EasSyncService;)V

    :cond_35
    throw v1
.end method
