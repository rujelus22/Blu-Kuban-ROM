.class public Lcom/google/googlenav/I;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IZI)Lah/d;
    .registers 10

    const/4 v3, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->p()Lah/b;

    move-result-object v0

    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, p2

    move v6, v3

    invoke-interface/range {v0 .. v6}, Lah/b;->a(IZZIZZ)Lah/d;

    move-result-object v0

    return-object v0
.end method
