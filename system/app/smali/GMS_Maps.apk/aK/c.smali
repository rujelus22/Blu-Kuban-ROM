.class LaK/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dm;


# instance fields
.field final synthetic a:LaK/a;


# direct methods
.method constructor <init>(LaK/a;)V
    .registers 2

    iput-object p1, p0, LaK/c;->a:LaK/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/L;I)V
    .registers 6

    new-instance v0, LaJ/B;

    invoke-virtual {p1}, Lt/L;->a()I

    move-result v1

    invoke-virtual {p1}, Lt/L;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-static {v0, p2, v1}, LaE/d;->a(LaJ/B;ILap/c;)V

    iget-object v0, p0, LaK/c;->a:LaK/a;

    invoke-static {v0}, LaK/a;->a(LaK/a;)Lr/l;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, LaK/c;->a:LaK/a;

    invoke-static {v0}, LaK/a;->a(LaK/a;)Lr/l;

    move-result-object v0

    invoke-virtual {v0}, Lr/l;->c()Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x68

    const-string v1, "v"

    iget-object v2, p0, LaK/c;->a:LaK/a;

    invoke-static {v2, p2}, LaK/a;->a(LaK/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_35
    return-void
.end method
