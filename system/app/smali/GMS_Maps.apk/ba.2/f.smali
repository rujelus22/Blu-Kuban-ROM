.class public Lba/f;
.super Lba/a;


# static fields
.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    sget-char v2, Lcom/google/googlenav/ui/bw;->aO:C

    aput-char v2, v0, v1

    const/4 v1, 0x1

    sget-char v2, Lcom/google/googlenav/ui/bw;->aP:C

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-char v2, Lcom/google/googlenav/ui/bw;->aQ:C

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-char v2, Lcom/google/googlenav/ui/bw;->aR:C

    aput-char v2, v0, v1

    sput-object v0, Lba/f;->c:[C

    return-void
.end method

.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 5

    iget-object v0, p0, Lba/f;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->N()Lah/g;

    move-result-object v0

    sget-object v1, Lba/f;->c:[C

    rem-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/e;->a(Lah/f;)Lcom/google/googlenav/e;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
