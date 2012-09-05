.class Lcom/google/googlenav/ui/wizard/bQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hh;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bO;Lcom/google/googlenav/ui/wizard/hh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bQ;->b:Lcom/google/googlenav/ui/wizard/bO;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bQ;->a:Lcom/google/googlenav/ui/wizard/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lam/b;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/googlenav/ui/wizard/bT;->a:[I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bQ;->a:Lcom/google/googlenav/ui/wizard/hh;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hh;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_38

    :goto_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bQ;->b:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x133

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void

    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bQ;->b:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lbd/a;

    invoke-virtual {v0, v1}, Lbd/a;->a(Ljava/lang/String;)V

    goto :goto_12

    :pswitch_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bQ;->b:Lcom/google/googlenav/ui/wizard/bO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lbd/a;

    invoke-virtual {v0, v1}, Lbd/a;->b(Ljava/lang/String;)V

    goto :goto_12

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2e
    .end packed-switch
.end method
