.class public Lcom/google/googlenav/ui/wizard/G;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/D;


# instance fields
.field private a:Lam/i;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 20
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lam/i;

    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/G;->a()V

    .line 44
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lam/i;

    .line 45
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/G;->j()V

    .line 46
    return-void
.end method

.method public a(Lam/i;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lam/i;

    .line 24
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/G;->j()V

    .line 25
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/s;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lam/i;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/dialog/s;-><init>(Lam/i;Lcom/google/googlenav/ui/view/dialog/D;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 30
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 31
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 36
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 37
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/G;->a:Lam/i;

    .line 38
    return-void
.end method
