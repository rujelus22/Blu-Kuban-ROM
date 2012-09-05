.class public Lba/b;
.super Lba/a;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/D;)I
    .registers 3

    check-cast p1, Lcom/google/googlenav/ah;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aq()I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    check-cast p1, Lcom/google/googlenav/ah;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->ap()I

    move-result v0

    return v0
.end method
