.class final Lcom/sdgtl/mediahub/spr/customview/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/u;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    packed-switch p3, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/u;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const-string v1, "title"

    #setter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$5(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/u;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const-string v1, "people"

    #setter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchtype:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$5(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
