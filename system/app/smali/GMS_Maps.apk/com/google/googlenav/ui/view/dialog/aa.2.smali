.class Lcom/google/googlenav/ui/view/dialog/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/az;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/az;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    packed-switch p3, :pswitch_data_44

    .line 187
    :goto_3
    return-void

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/az;->b(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/ui/view/dialog/aD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/az;->a(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aD;->a(Lcom/google/googlenav/friend/aK;)V

    goto :goto_3

    .line 179
    :pswitch_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/az;->b(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/ui/view/dialog/aD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/az;->a(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aD;->b(Lcom/google/googlenav/friend/aK;)V

    goto :goto_3

    .line 182
    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/az;->b(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/ui/view/dialog/aD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/az;->a(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aD;->c(Lcom/google/googlenav/friend/aK;)V

    goto :goto_3

    .line 185
    :pswitch_34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/az;->b(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/ui/view/dialog/aD;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/az;->a(Lcom/google/googlenav/ui/view/dialog/az;)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aD;->d(Lcom/google/googlenav/friend/aK;)V

    goto :goto_3

    .line 174
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_4
        :pswitch_14
        :pswitch_24
        :pswitch_34
    .end packed-switch
.end method
