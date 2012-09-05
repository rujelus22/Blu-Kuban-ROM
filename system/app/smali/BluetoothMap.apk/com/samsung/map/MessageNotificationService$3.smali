.class Lcom/samsung/map/MessageNotificationService$3;
.super Ljava/lang/Thread;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/map/MessageNotificationService;->stop(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method constructor <init>(Lcom/samsung/map/MessageNotificationService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 392
    :try_start_1
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 393
    .local v2, obj:Ljava/lang/Object;
    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_4a

    .line 394
    const-wide/16 v3, 0x64

    :try_start_9
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 395
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_47

    .line 398
    .end local v2           #obj:Ljava/lang/Object;
    :goto_d
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 401
    .local v1, header:Ljavax/obex/HeaderSet;
    :try_start_12
    invoke-static {}, Lcom/samsung/map/MessageNotificationService;->access$900()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_4f

    .line 402
    :try_start_17
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;
    invoke-static {v3}, Lcom/samsung/map/MessageNotificationService;->access$800(Lcom/samsung/map/MessageNotificationService;)Ljavax/obex/ClientSession;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 403
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;
    invoke-static {v3}, Lcom/samsung/map/MessageNotificationService;->access$800(Lcom/samsung/map/MessageNotificationService;)Ljavax/obex/ClientSession;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/obex/ClientSession;->close()V

    .line 404
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {v3}, Lcom/samsung/map/MessageNotificationService;->access$600(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/BluetoothMapObexTransport;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 405
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {v3}, Lcom/samsung/map/MessageNotificationService;->access$600(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/BluetoothMapObexTransport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/map/BluetoothMapObexTransport;->close()V

    .line 406
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {v3, v5}, Lcom/samsung/map/MessageNotificationService;->access$602(Lcom/samsung/map/MessageNotificationService;Lcom/samsung/map/BluetoothMapObexTransport;)Lcom/samsung/map/BluetoothMapObexTransport;

    .line 408
    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_4c

    .line 412
    :goto_41
    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$3;->this$0:Lcom/samsung/map/MessageNotificationService;

    #setter for: Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;
    invoke-static {v3, v6}, Lcom/samsung/map/MessageNotificationService;->access$802(Lcom/samsung/map/MessageNotificationService;Ljavax/obex/ClientSession;)Ljavax/obex/ClientSession;

    .line 413
    return-void

    .line 395
    .end local v1           #header:Ljavax/obex/HeaderSet;
    .restart local v2       #obj:Ljava/lang/Object;
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4a

    .line 396
    .end local v2           #obj:Ljava/lang/Object;
    :catch_4a
    move-exception v3

    goto :goto_d

    .line 408
    .restart local v1       #header:Ljavax/obex/HeaderSet;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v3
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 409
    :catch_4f
    move-exception v0

    .line 410
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method
