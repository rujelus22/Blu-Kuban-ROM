.class Lcom/google/googlenav/ui/wizard/eH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eQ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eH;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;)V
    .registers 10

    const/4 v5, 0x1

    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, p1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ah;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eH;->a:Lcom/google/googlenav/ui/wizard/eA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eH;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/L;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/D;

    const-string v3, "cstp"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/O;)V

    return-void
.end method
