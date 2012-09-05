.class final Lcom/sdgtl/mediahub/spr/screen/gy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/gs;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_2a

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/16 v1, 0x9

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    goto :goto_3

    :pswitch_1c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/gy;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    goto :goto_3

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1c
    .end packed-switch
.end method
