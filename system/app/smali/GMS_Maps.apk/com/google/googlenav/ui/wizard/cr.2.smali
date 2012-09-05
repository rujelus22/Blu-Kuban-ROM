.class Lcom/google/googlenav/ui/wizard/cr;
.super Lap/b;


# instance fields
.field final synthetic a:Lax/aB;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/co;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/co;Lap/c;Lax/aB;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cr;->e:Lcom/google/googlenav/ui/wizard/co;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cr;->a:Lax/aB;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->e:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cr;->a:Lax/aB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->d(Lax/aB;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->e:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cr;->a:Lax/aB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->a(Lax/aB;)V

    return-void
.end method
