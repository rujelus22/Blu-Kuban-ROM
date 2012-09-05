.class Lcom/google/googlenav/ui/wizard/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ce;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ce;Lcom/google/googlenav/ui/wizard/cf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ci;-><init>(Lcom/google/googlenav/ui/wizard/ce;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x43

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->a()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->a()I

    move-result v3

    invoke-virtual {v0}, Lbb/a;->b()I

    move-result v4

    packed-switch v3, :pswitch_data_1d8

    :goto_23
    :pswitch_23
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_38
    return-void

    :pswitch_39
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->L()Ljava/util/Vector;

    move-result-object v0

    if-le v4, v6, :cond_61

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v4, :cond_61

    const-string v1, "f"

    const-string v2, "r"

    invoke-static {v5, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v1, v0}, LaY/Y;->e(LaY/i;)V

    :cond_61
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto :goto_23

    :pswitch_67
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->K()Ljava/util/Vector;

    move-result-object v0

    if-le v4, v6, :cond_88

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v4, :cond_88

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v1, v0}, LaY/Y;->f(LaY/i;)V

    :cond_88
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto :goto_23

    :pswitch_8e
    const-string v0, "f"

    const-string v3, "l"

    invoke-static {v5, v0, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->e()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0, v1}, LaY/Y;->e(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(Z)V

    goto/16 :goto_23

    :cond_ba
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/L;->b(Z)V

    goto/16 :goto_23

    :pswitch_c5
    const-string v0, "f"

    const-string v3, "t"

    invoke-static {v5, v0, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->d()Z

    move-result v0

    if-nez v0, :cond_e9

    move v0, v1

    :goto_df
    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/L;->a(ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    :cond_e9
    move v0, v2

    goto :goto_df

    :pswitch_eb
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->b()I

    move-result v0

    if-eq v0, v1, :cond_10e

    const-string v0, "f"

    const-string v2, "s"

    invoke-static {v5, v0, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(I)Z

    :goto_107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    :cond_10e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/L;->a(I)Z

    goto :goto_107

    :pswitch_118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->b()I

    move-result v0

    if-eq v0, v7, :cond_13b

    const-string v0, "f"

    const-string v1, "n"

    invoke-static {v5, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/google/googlenav/L;->a(I)Z

    :goto_134
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    :cond_13b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/L;->a(I)Z

    goto :goto_134

    :pswitch_145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->c()Z

    move-result v0

    if-nez v0, :cond_168

    const-string v0, "f"

    const-string v2, "c"

    invoke-static {v5, v0, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b_(Z)V

    :goto_161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    :cond_168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/L;->b_(Z)V

    goto :goto_161

    :pswitch_172
    invoke-virtual {v0}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LaY/Y;->c(Ljava/lang/String;)LaY/i;

    move-result-object v1

    if-nez v1, :cond_1a1

    const-string v1, "f"

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LaY/Y;->a(Lcom/google/googlenav/layer/m;Z)LaY/t;

    :goto_19a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    :cond_1a1
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    goto :goto_19a

    :pswitch_1ab
    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_1b6

    const-string v0, "My Maps"

    invoke-static {v0}, Lac/a;->b(Ljava/lang/String;)V

    :cond_1b6
    const-string v0, "f"

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ce;->b(LaY/Y;)Lcom/google/googlenav/ui/aD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aD;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    goto/16 :goto_23

    nop

    :pswitch_data_1d8
    .packed-switch 0x3e9
        :pswitch_67
        :pswitch_39
        :pswitch_23
        :pswitch_23
        :pswitch_1ab
        :pswitch_23
        :pswitch_23
        :pswitch_8e
        :pswitch_c5
        :pswitch_23
        :pswitch_eb
        :pswitch_118
        :pswitch_23
        :pswitch_23
        :pswitch_145
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_172
    .end packed-switch
.end method
