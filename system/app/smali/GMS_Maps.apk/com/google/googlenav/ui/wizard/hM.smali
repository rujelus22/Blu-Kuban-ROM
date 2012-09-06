.class Lcom/google/googlenav/ui/wizard/hm;
.super Lcom/google/googlenav/ui/wizard/hw;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hw;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    .line 483
    return-void
.end method

.method a(Lcom/google/googlenav/ai;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ai;Z)V

    .line 478
    return-void
.end method

.method b()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->e(Lcom/google/googlenav/ui/wizard/hg;)V

    .line 473
    return-void
.end method
