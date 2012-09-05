.class Lcom/vlingo/client/safereader/SafeReaderAPI$1;
.super Ljava/lang/Object;
.source "SafeReaderAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderAPI;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    monitor-enter v1

    .line 65
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-static {p2}, Lcom/vlingo/client/safereader/ISafeReaderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/safereader/ISafeReaderService;

    move-result-object v2

    #setter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;
    invoke-static {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$102(Lcom/vlingo/client/safereader/SafeReaderAPI;Lcom/vlingo/client/safereader/ISafeReaderService;)Lcom/vlingo/client/safereader/ISafeReaderService;

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_Connecting:Z
    invoke-static {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$202(Lcom/vlingo/client/safereader/SafeReaderAPI;Z)Z

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    monitor-enter v1

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 88
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;
    invoke-static {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$102(Lcom/vlingo/client/safereader/SafeReaderAPI;Lcom/vlingo/client/safereader/ISafeReaderService;)Lcom/vlingo/client/safereader/ISafeReaderService;

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_d4
    move-exception v0

    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_3 .. :try_end_d6} :catchall_d4

    throw v0
.end method
