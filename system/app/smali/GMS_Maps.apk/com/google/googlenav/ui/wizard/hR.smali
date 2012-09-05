.class final Lcom/google/googlenav/ui/wizard/hR;
.super Lax/bl;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/hM;

.field private final c:Lcom/google/googlenav/ui/wizard/N;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lax/bq;Lcom/google/googlenav/ui/wizard/N;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hR;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {p0, p2}, Lax/bl;-><init>(Lax/bq;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hR;->c:Lcom/google/googlenav/ui/wizard/N;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lax/bq;Lcom/google/googlenav/ui/wizard/N;Lcom/google/googlenav/ui/wizard/hN;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/hR;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lax/bq;Lcom/google/googlenav/ui/wizard/N;)V

    return-void
.end method


# virtual methods
.method public E_()V
    .registers 3

    invoke-super {p0}, Lax/bl;->E_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hR;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hM;->d:Lcom/google/googlenav/ui/wizard/hS;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->o()Lcom/google/googlenav/ui/wizard/J;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hR;->c:Lcom/google/googlenav/ui/wizard/N;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/J;->a(Lcom/google/googlenav/ui/wizard/N;)V

    return-void
.end method

.method public F_()V
    .registers 1

    invoke-super {p0}, Lax/bl;->F_()V

    return-void
.end method

.method public i()V
    .registers 3

    invoke-super {p0}, Lax/bl;->i()V

    const/16 v0, 0xa3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    return-void
.end method
