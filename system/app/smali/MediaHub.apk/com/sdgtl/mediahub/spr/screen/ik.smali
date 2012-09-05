.class final Lcom/sdgtl/mediahub/spr/screen/ik;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPage;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ik;)Lcom/sdgtl/mediahub/spr/screen/MyPage;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    const-string v2, ""

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ik;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/il;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/il;-><init>(Lcom/sdgtl/mediahub/spr/screen/ik;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/im;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/im;-><init>(Lcom/sdgtl/mediahub/spr/screen/ik;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
