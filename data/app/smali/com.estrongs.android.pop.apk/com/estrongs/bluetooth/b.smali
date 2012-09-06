.class public Lcom/estrongs/bluetooth/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/f;


# instance fields
.field private a:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothServerSocket;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method


# virtual methods
.method public a()La/a/a/e;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    new-instance v1, Lcom/estrongs/bluetooth/a;

    invoke-direct {v1, v0}, Lcom/estrongs/bluetooth/a;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    :catch_c
    move-exception v0

    throw v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    return-void
.end method
