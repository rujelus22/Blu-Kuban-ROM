.class Lcom/google/googlenav/ui/wizard/gM;
.super Lcom/google/googlenav/ui/wizard/aY;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/gL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gL;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gM;->b:Lcom/google/googlenav/ui/wizard/gL;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aY;-><init>(Lcom/google/googlenav/ui/wizard/aT;Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 4

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/aY;->c()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public g()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/aY;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gM;->b:Lcom/google/googlenav/ui/wizard/gL;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gL;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v1, Lcom/google/googlenav/ui/wizard/gN;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/gN;-><init>(Lcom/google/googlenav/ui/wizard/gM;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
