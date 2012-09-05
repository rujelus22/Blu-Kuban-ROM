.class Lcom/google/googlenav/ui/wizard/eG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eQ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eG;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eA;->b(Lcom/google/googlenav/ui/wizard/eA;)LaY/Y;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "pl"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ah;LaY/Y;ZLjava/lang/String;)V

    return-void
.end method
