.class Lcom/google/googlenav/ui/view/dialog/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/Q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    packed-switch p3, :pswitch_data_44

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Lcom/google/googlenav/ui/view/dialog/Q;)Lcom/google/googlenav/ui/view/dialog/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Lcom/google/googlenav/ui/view/dialog/Q;)Lax/aP;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/U;->a(Lax/aP;)V

    goto :goto_3

    :pswitch_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Lcom/google/googlenav/ui/view/dialog/Q;)Lcom/google/googlenav/ui/view/dialog/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Lcom/google/googlenav/ui/view/dialog/Q;)Lax/aP;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/U;->b(Lax/aP;)V

    goto :goto_3

    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Lcom/google/googlenav/ui/view/dialog/Q;)Lcom/google/googlenav/ui/view/dialog/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Lcom/google/googlenav/ui/view/dialog/Q;)Lax/aP;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/U;->c(Lax/aP;)V

    goto :goto_3

    :pswitch_34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/Q;->b(Lcom/google/googlenav/ui/view/dialog/Q;)Lcom/google/googlenav/ui/view/dialog/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/R;->a:Lcom/google/googlenav/ui/view/dialog/Q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/Q;->a(Lcom/google/googlenav/ui/view/dialog/Q;)Lax/aP;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/U;->d(Lax/aP;)V

    goto :goto_3

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_4
        :pswitch_14
        :pswitch_24
        :pswitch_34
    .end packed-switch
.end method
