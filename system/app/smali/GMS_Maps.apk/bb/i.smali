.class public Lbb/i;
.super Lbb/f;


# instance fields
.field public final h:Lbb/o;

.field public i:Ljava/util/Date;

.field public j:I

.field public final k:Lcom/google/googlenav/ui/bl;

.field public final l:Lcom/google/googlenav/ui/bl;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Vector;Ljava/util/Date;I)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, v1}, Lbb/f;-><init>(IILjava/lang/String;[Laq/a;)V

    new-instance v0, Lbb/o;

    invoke-direct {v0, v1, v1, p3, v1}, Lbb/o;-><init>(Ljava/lang/String;Lbb/n;Ljava/util/Vector;[Laq/a;)V

    iput-object v0, p0, Lbb/i;->h:Lbb/o;

    iput-object p4, p0, Lbb/i;->i:Ljava/util/Date;

    iput p5, p0, Lbb/i;->j:I

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x4e8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iput-object v0, p0, Lbb/i;->k:Lcom/google/googlenav/ui/bl;

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iput-object v0, p0, Lbb/i;->l:Lcom/google/googlenav/ui/bl;

    return-void
.end method


# virtual methods
.method public a(Lau/l;)V
    .registers 3

    invoke-virtual {p1}, Lau/l;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lbb/i;->i:Ljava/util/Date;

    invoke-virtual {p1}, Lau/l;->d()I

    move-result v0

    iput v0, p0, Lbb/i;->j:I

    return-void
.end method

.method public g()Lau/l;
    .registers 3

    iget-object v0, p0, Lbb/i;->i:Ljava/util/Date;

    iget v1, p0, Lbb/i;->j:I

    invoke-static {v0, v1}, Lau/l;->a(Ljava/util/Date;I)Lau/l;

    move-result-object v0

    return-object v0
.end method
