.class public Lba/h;
.super Lba/a;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public a(ZBI)C
    .registers 10

    iget-object v0, p0, Lba/h;->a:LaY/i;

    move-object v1, v0

    check-cast v1, LaY/az;

    invoke-virtual {v1}, LaY/az;->az()Z

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1}, LaY/az;->bj()I

    move-result v3

    invoke-virtual {p0, p3}, Lba/h;->a(I)Z

    move-result v5

    move v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aY;->a(ZZIIIZ)C

    move-result v0

    return v0
.end method
