.class public Lcom/samsung/map/BluetoothMapRfcommListener;
.super Ljava/lang/Object;
.source "BluetoothMapRfcommListener.java"


# static fields
.field private static busy:Ljava/lang/Object;


# instance fields
.field private MASInstanceID:I

.field private channel:I

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mCallback:Landroid/os/Handler;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;

.field private mTcpServerSocket:Ljava/net/ServerSocket;

.field private serviceName:Ljava/lang/String;

.field private supportedMessageTypes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/map/BluetoothMapRfcommListener;->busy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;ILandroid/content/Context;)V
    .registers 7
    .parameter "adapter"
    .parameter "MASInstanceID"
    .parameter "serviceName"
    .parameter "SupportedMessageTypes"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 76
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 78
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mTcpServerSocket:Ljava/net/ServerSocket;

    .line 90
    iput-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mContext:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 95
    iput p2, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->MASInstanceID:I

    .line 96
    iput-object p3, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->serviceName:Ljava/lang/String;

    .line 97
    iput p4, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->supportedMessageTypes:I

    .line 98
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I

    .line 99
    iput-object p5, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/map/BluetoothMapRfcommListener;->busy:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/map/BluetoothMapRfcommListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$108(Lcom/samsung/map/BluetoothMapRfcommListener;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/map/BluetoothMapRfcommListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/map/BluetoothMapRfcommListener;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/map/BluetoothMapRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/map/BluetoothMapRfcommListener;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/map/BluetoothMapRfcommListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->MASInstanceID:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/map/BluetoothMapRfcommListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->supportedMessageTypes:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/map/BluetoothMapRfcommListener;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method


# virtual methods
.method public getBluetoothConnSocket()Landroid/bluetooth/BluetoothSocket;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .registers 4
    .parameter "callback"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_18

    .line 104
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mCallback:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/samsung/map/BluetoothMapRfcommListener$1;

    const-string v1, "BtMapRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/samsung/map/BluetoothMapRfcommListener$1;-><init>(Lcom/samsung/map/BluetoothMapRfcommListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z

    .line 188
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 190
    :cond_18
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 103
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2a

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z

    .line 204
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_35

    if-eqz v1, :cond_11

    .line 206
    :try_start_c
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_35
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_2c

    .line 212
    :cond_11
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_35

    if-eqz v1, :cond_1a

    .line 214
    :try_start_15
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_35
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_38

    .line 221
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 223
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapRfcommListener;->mCallback:Landroid/os/Handler;
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_2a} :catch_41

    .line 230
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 207
    :catch_2c
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    :try_start_2d
    const-string v1, "BtMapRfcommListener"

    const-string v2, "Error close mBtServerSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_11

    .line 198
    .end local v0           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    :catch_38
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_39
    const-string v1, "BtMapRfcommListener"

    const-string v2, "Error close mConnSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BtMapRfcommListener"

    const-string v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_35

    goto :goto_2a
.end method
