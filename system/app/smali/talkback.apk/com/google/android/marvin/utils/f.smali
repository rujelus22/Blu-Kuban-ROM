.class final Lcom/google/android/marvin/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/utils/e;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/utils/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/utils/f;->a:Lcom/google/android/marvin/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7

    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x3

    const-string v2, "Bluetooth service connected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/f;->a:Lcom/google/android/marvin/utils/e;

    invoke-static {v0}, Lcom/google/android/marvin/utils/e;->a(Lcom/google/android/marvin/utils/e;)Lcom/google/android/marvin/utils/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/marvin/utils/q;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .registers 6

    const-class v0, Lcom/google/android/marvin/utils/e;

    const/4 v1, 0x3

    const-string v2, "Bluetooth service disconnected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/f;->a:Lcom/google/android/marvin/utils/e;

    invoke-static {v0}, Lcom/google/android/marvin/utils/e;->a(Lcom/google/android/marvin/utils/e;)Lcom/google/android/marvin/utils/q;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/utils/q;->sendEmptyMessage(I)Z

    return-void
.end method
