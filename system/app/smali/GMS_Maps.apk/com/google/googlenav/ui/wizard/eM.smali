.class Lcom/google/googlenav/ui/wizard/eM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaE/l;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;LaE/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eM;->a:LaE/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eM;->a:LaE/l;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eM;->a:LaE/l;

    invoke-virtual {v0}, LaE/l;->c()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/eN;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/eN;-><init>(Lcom/google/googlenav/ui/wizard/eM;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_1d
    return-void
.end method
