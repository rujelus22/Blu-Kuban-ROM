.class final Lbf/d;
.super Lap/b;


# direct methods
.method constructor <init>(Lap/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method
