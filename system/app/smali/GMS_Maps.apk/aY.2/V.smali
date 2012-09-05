.class public LaY/V;
.super LaY/aB;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/aB;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public a()Lbb/d;
    .registers 2

    iget-object v0, p0, LaY/V;->c:LaY/i;

    check-cast v0, LaY/W;

    invoke-virtual {v0}, LaY/W;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0}, LaY/aB;->a()Lbb/d;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
