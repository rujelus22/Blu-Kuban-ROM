.class final Lcom/sdgtl/mediahub/spr/screen/lt;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/lt;)Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const-string v2, ""

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lt;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->h(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/lu;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/lu;-><init>(Lcom/sdgtl/mediahub/spr/screen/lt;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/lv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/lv;-><init>(Lcom/sdgtl/mediahub/spr/screen/lt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
