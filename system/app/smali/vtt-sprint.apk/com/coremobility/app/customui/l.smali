.class final Lcom/coremobility/app/customui/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/customui/k;


# direct methods
.method constructor <init>(Lcom/coremobility/app/customui/k;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->b()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/coremobility/app/customui/l;->a:Lcom/coremobility/app/customui/k;

    invoke-static {v0}, Lcom/coremobility/app/customui/k;->a(Lcom/coremobility/app/customui/k;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method