.class public Lt/an;
.super Lt/al;


# direct methods
.method public constructor <init>(Lt/m;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lt/m;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    :goto_8
    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lt/al;-><init>(Lt/m;Lt/l;II)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/an;->a:Lt/m;

    return-object v0
.end method
