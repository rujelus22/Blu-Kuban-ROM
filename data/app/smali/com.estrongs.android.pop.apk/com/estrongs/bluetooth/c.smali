.class public Lcom/estrongs/bluetooth/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)La/b/b;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_17

    new-instance v1, Lcom/a/a/a/h;

    new-instance v2, Lcom/estrongs/bluetooth/a;

    invoke-direct {v2, v0}, Lcom/estrongs/bluetooth/a;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    new-instance v0, Lcom/a/a/a/i;

    invoke-direct {v0}, Lcom/a/a/a/i;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/a/a/a/h;-><init>(La/a/a/e;Lcom/a/a/a/i;)V

    return-object v1

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bluetooth connect error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/UUID;)La/b/g;
    .registers 5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "not support bluetooth"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v0, p0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/u;

    new-instance v2, Lcom/estrongs/bluetooth/b;

    invoke-direct {v2, v0}, Lcom/estrongs/bluetooth/b;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    new-instance v0, Lcom/a/a/a/i;

    invoke-direct {v0}, Lcom/a/a/a/i;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/a/a/a/u;-><init>(La/a/a/f;Lcom/a/a/a/i;)V

    return-object v1
.end method
