.class public Lcom/google/googlenav/ui/wizard/gp;
.super Lcom/google/googlenav/ui/wizard/aY;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/go;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/go;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gp;->b:Lcom/google/googlenav/ui/wizard/go;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aY;-><init>(Lcom/google/googlenav/ui/wizard/aT;Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method public g()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/aY;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gp;->b:Lcom/google/googlenav/ui/wizard/go;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/go;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v1, Lcom/google/googlenav/ui/wizard/gq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/gq;-><init>(Lcom/google/googlenav/ui/wizard/gp;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
