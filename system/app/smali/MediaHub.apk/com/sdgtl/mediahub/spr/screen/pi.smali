.class final Lcom/sdgtl/mediahub/spr/screen/pi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pi;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pi;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pi;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const-string v1, "people"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
