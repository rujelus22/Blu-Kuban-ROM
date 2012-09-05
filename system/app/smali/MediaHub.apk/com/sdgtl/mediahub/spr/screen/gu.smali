.class final Lcom/sdgtl/mediahub/spr/screen/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/gs;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_2c

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    goto :goto_3

    :pswitch_11
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/4 v1, 0x4

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    goto :goto_3

    :pswitch_1e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/gu;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    goto :goto_3

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method
