.class Lcom/google/googlenav/ui/wizard/cD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aW;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;Lcom/google/googlenav/aV;)V
    .registers 5

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->Q()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->R()I

    move-result v1

    invoke-static {p1, v0, v1}, Lau/x;->a(Lcom/google/googlenav/ah;II)Lau/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-static {v1, v0, p2}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cA;Lau/x;Lcom/google/googlenav/aV;)V

    return-void
.end method
