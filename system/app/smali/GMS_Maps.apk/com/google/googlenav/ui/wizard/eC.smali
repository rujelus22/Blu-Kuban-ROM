.class Lcom/google/googlenav/ui/wizard/eC;
.super Lap/b;


# instance fields
.field final synthetic a:Lax/aq;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;Lap/c;Lax/aq;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eC;->e:Lcom/google/googlenav/ui/wizard/eA;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eC;->a:Lax/aq;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eC;->a:Lax/aq;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method
