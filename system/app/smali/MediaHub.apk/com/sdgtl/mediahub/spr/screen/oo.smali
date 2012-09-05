.class final Lcom/sdgtl/mediahub/spr/screen/oo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/oo;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_1c

    :goto_3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/oo;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    return-void

    :pswitch_10
    const-string v0, "title"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_16
    const-string v0, "people"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
