.class Lcom/google/googlenav/ui/wizard/eJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eJ;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 5

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eJ;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->c(Lcom/google/googlenav/ui/wizard/eA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eJ;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/eA;->b(Lcom/google/googlenav/ui/wizard/eA;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;

    :cond_1b
    return-void
.end method
