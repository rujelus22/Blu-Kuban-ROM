.class final Lcom/google/android/marvin/utils/q;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/utils/e;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/marvin/utils/e;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/utils/q;-><init>(Lcom/google/android/marvin/utils/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/marvin/utils/e;B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/marvin/utils/q;->a:Lcom/google/android/marvin/utils/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/google/android/marvin/utils/q;->a:Lcom/google/android/marvin/utils/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1, v0}, Lcom/google/android/marvin/utils/e;->a(Lcom/google/android/marvin/utils/e;Landroid/bluetooth/BluetoothHeadset;)V

    goto :goto_5

    :pswitch_13
    iget-object v0, p0, Lcom/google/android/marvin/utils/q;->a:Lcom/google/android/marvin/utils/e;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->a()V

    goto :goto_5

    :pswitch_19
    iget-object v0, p0, Lcom/google/android/marvin/utils/q;->a:Lcom/google/android/marvin/utils/e;

    invoke-static {v0}, Lcom/google/android/marvin/utils/e;->b(Lcom/google/android/marvin/utils/e;)V

    goto :goto_5

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method
