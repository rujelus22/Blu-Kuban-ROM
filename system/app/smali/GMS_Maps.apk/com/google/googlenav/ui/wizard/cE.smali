.class Lcom/google/googlenav/ui/wizard/cE;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/db;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/db;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cE;->b:Lcom/google/googlenav/ui/wizard/cA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cE;->a:Lcom/google/googlenav/ui/wizard/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILaE/h;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cE;->b:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cG;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cG;-><init>(Lcom/google/googlenav/ui/wizard/cE;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cE;->b:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cF;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cF;-><init>(Lcom/google/googlenav/ui/wizard/cE;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
