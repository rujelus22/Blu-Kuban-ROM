.class final Lcom/sdgtl/mediahub/spr/screen/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/dv;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/dv;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dw;->a:Lcom/sdgtl/mediahub/spr/screen/dv;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/dw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dw;->a:Lcom/sdgtl/mediahub/spr/screen/dv;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/dv;->a(Lcom/sdgtl/mediahub/spr/screen/dv;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/dw;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(I)V

    goto :goto_3

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method