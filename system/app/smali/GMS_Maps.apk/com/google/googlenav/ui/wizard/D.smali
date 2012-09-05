.class public Lcom/google/googlenav/ui/wizard/D;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/o;


# instance fields
.field private a:LaD/i;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(LaD/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/D;->a:LaD/i;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/D;->l()V

    return-void
.end method

.method protected b()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/D;->a:LaD/i;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/dialog/d;-><init>(LaD/i;Lcom/google/googlenav/ui/view/dialog/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->b()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->f:Lcom/google/googlenav/ui/view/android/bs;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:LaD/i;

    return-void
.end method
