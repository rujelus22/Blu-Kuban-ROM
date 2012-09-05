.class Lcom/google/googlenav/ui/N;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/N;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaJ/H;)V
    .registers 5

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/N;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v2}, Lcom/google/googlenav/ui/D;->c(Lcom/google/googlenav/ui/D;)Lap/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaE/d;->a(LaJ/B;ILap/c;)V

    return-void
.end method
