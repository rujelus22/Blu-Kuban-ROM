.class Lax/c;
.super Lap/b;


# instance fields
.field final synthetic a:Lax/b;


# direct methods
.method constructor <init>(Lax/b;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lax/c;->a:Lax/b;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, Lax/c;->a:Lax/b;

    invoke-virtual {v1}, Lax/b;->b()Lax/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method
