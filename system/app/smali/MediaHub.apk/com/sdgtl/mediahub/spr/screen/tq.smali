.class final Lcom/sdgtl/mediahub/spr/screen/tq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/tq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    packed-switch p2, :pswitch_data_10

    :goto_3
    return-void

    :pswitch_4
    const-string v0, "title"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_a
    const-string v0, "people"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
